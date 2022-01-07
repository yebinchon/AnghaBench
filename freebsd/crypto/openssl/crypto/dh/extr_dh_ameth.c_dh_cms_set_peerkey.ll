; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_cms_set_peerkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_cms_set_peerkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32* }

@NID_dhpublicnumber = common dso_local global i64 0, align 8
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@EVP_PKEY_DHX = common dso_local global i64 0, align 8
@DH_F_DH_CMS_SET_PEERKEY = common dso_local global i32 0, align 4
@DH_R_DECODE_ERROR = common dso_local global i32 0, align 4
@DH_R_BN_DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @dh_cms_set_peerkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_cms_set_peerkey(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %14, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @X509_ALGOR_get0(i32** %7, i32* %8, i8** %9, i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @OBJ_obj2nid(i32* %19)
  %21 = load i64, i64* @NID_dhpublicnumber, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %100

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @V_ASN1_UNDEF, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @V_ASN1_NULL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %100

33:                                               ; preds = %28, %24
  %34 = load i32*, i32** %4, align 8
  %35 = call %struct.TYPE_15__* @EVP_PKEY_CTX_get0_pkey(i32* %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %13, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %100

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EVP_PKEY_DHX, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %100

46:                                               ; preds = %39
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_16__* @DHparams_dup(i32 %50)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %14, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @ASN1_STRING_length(i32* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i8* @ASN1_STRING_get0_data(i32* %54)
  store i8* %55, i8** %15, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %46
  br label %100

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = call i32* @d2i_ASN1_INTEGER(i32* null, i8** %15, i32 %63)
  store i32* %64, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @DH_F_DH_CMS_SET_PEERKEY, align 4
  %68 = load i32, i32* @DH_R_DECODE_ERROR, align 4
  %69 = call i32 @DHerr(i32 %67, i32 %68)
  br label %100

70:                                               ; preds = %62
  %71 = load i32*, i32** %10, align 8
  %72 = call i32* @ASN1_INTEGER_to_BN(i32* %71, i32* null)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = icmp eq i32* %72, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @DH_F_DH_CMS_SET_PEERKEY, align 4
  %78 = load i32, i32* @DH_R_BN_DECODE_ERROR, align 4
  %79 = call i32 @DHerr(i32 %77, i32 %78)
  br label %100

80:                                               ; preds = %70
  %81 = call %struct.TYPE_15__* (...) @EVP_PKEY_new()
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %12, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %83 = icmp eq %struct.TYPE_15__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %100

85:                                               ; preds = %80
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %93 = call i32 @EVP_PKEY_assign(%struct.TYPE_15__* %86, i32 %91, %struct.TYPE_16__* %92)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %14, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %96 = call i64 @EVP_PKEY_derive_set_peer(i32* %94, %struct.TYPE_15__* %95)
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  store i32 1, i32* %11, align 4
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %84, %76, %66, %61, %45, %38, %32, %23
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @ASN1_INTEGER_free(i32* %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %104 = call i32 @EVP_PKEY_free(%struct.TYPE_15__* %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %106 = call i32 @DH_free(%struct.TYPE_16__* %105)
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local i32 @X509_ALGOR_get0(i32**, i32*, i8**, i32*) #1

declare dso_local i64 @OBJ_obj2nid(i32*) #1

declare dso_local %struct.TYPE_15__* @EVP_PKEY_CTX_get0_pkey(i32*) #1

declare dso_local %struct.TYPE_16__* @DHparams_dup(i32) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i8* @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32* @d2i_ASN1_INTEGER(i32*, i8**, i32) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32* @ASN1_INTEGER_to_BN(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_assign(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @EVP_PKEY_derive_set_peer(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_15__*) #1

declare dso_local i32 @DH_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
