; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_bootstrap_key_der.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_bootstrap_key_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"DPP: bootstrap public key\00", align 1
@EVP_PKEY_EC = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@POINT_CONVERSION_COMPRESSED = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"DDP: Failed to build DER encoded public key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32*)* @dpp_bootstrap_key_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_bootstrap_key_der(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %3, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  %13 = call i32* (...) @BN_CTX_new()
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %1
  br label %121

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @EC_KEY_get0_group(i32* %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @EC_KEY_get0_public_key(i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %22
  br label %121

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @dpp_debug_print_point(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %34, i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @EC_GROUP_get_curve_name(i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = call %struct.TYPE_7__* (...) @DPP_BOOTSTRAPPING_KEY_new()
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %11, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EVP_PKEY_EC, align 4
  %47 = call i64 @OBJ_nid2obj(i32 %46)
  %48 = load i32, i32* @V_ASN1_OBJECT, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @OBJ_nid2obj(i32 %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @X509_ALGOR_set0(i32 %45, i64 %47, i32 %48, i8* %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %42, %33
  br label %121

55:                                               ; preds = %42
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = call i64 @EC_POINT_point2oct(i32* %56, i32* %57, i32 %58, i8* null, i64 0, i32* %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %121

64:                                               ; preds = %55
  %65 = load i64, i64* %7, align 8
  %66 = call i8* @OPENSSL_malloc(i64 %65)
  store i8* %66, i8** %3, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %121

70:                                               ; preds = %64
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i64 @EC_POINT_point2oct(i32* %71, i32* %72, i32 %73, i8* %74, i64 %75, i32* %76)
  store i64 %77, i64* %7, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @OPENSSL_free(i8* %82)
  %84 = load i8*, i8** %3, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i8* %84, i8** %88, align 8
  store i8* null, i8** %3, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i64 %89, i64* %93, align 8
  %94 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %95 = or i32 %94, 7
  %96 = xor i32 %95, -1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %96
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = call i32 @i2d_DPP_BOOTSTRAPPING_KEY(%struct.TYPE_7__* %110, i8** %3)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %70
  %115 = load i32, i32* @MSG_ERROR, align 4
  %116 = call i32 @wpa_printf(i32 %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %121

117:                                              ; preds = %70
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call %struct.wpabuf* @wpabuf_alloc_copy(i8* %118, i32 %119)
  store %struct.wpabuf* %120, %struct.wpabuf** %6, align 8
  br label %121

121:                                              ; preds = %117, %114, %69, %63, %54, %32, %21
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %123 = call i32 @DPP_BOOTSTRAPPING_KEY_free(%struct.TYPE_7__* %122)
  %124 = load i8*, i8** %3, align 8
  %125 = call i32 @OPENSSL_free(i8* %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @EC_KEY_free(i32* %126)
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @BN_CTX_free(i32* %128)
  %130 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %130
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #1

declare dso_local i32 @dpp_debug_print_point(i8*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32*) #1

declare dso_local %struct.TYPE_7__* @DPP_BOOTSTRAPPING_KEY_new(...) #1

declare dso_local i32 @X509_ALGOR_set0(i32, i64, i32, i8*) #1

declare dso_local i64 @OBJ_nid2obj(i32) #1

declare dso_local i64 @EC_POINT_point2oct(i32*, i32*, i32, i8*, i64, i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @i2d_DPP_BOOTSTRAPPING_KEY(%struct.TYPE_7__*, i8**) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i8*, i32) #1

declare dso_local i32 @DPP_BOOTSTRAPPING_KEY_free(%struct.TYPE_7__*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
