; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_derive_l_initiator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_derive_l_initiator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"OpenSSL: failed: %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"DPP: L.x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*)* @dpp_auth_derive_l_initiator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_auth_derive_l_initiator(%struct.dpp_authentication* %0) #0 {
  %2 = alloca %struct.dpp_authentication*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 -1, i32* %14, align 4
  %15 = call i32* (...) @BN_CTX_new()
  store i32* %15, i32** %11, align 8
  %16 = call i32* (...) @BN_new()
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %12, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %1
  br label %128

23:                                               ; preds = %19
  %24 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %25 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %24, i32 0, i32 5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @EVP_PKEY_get1_EC_KEY(i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %31 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @EVP_PKEY_get1_EC_KEY(i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %23
  br label %128

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = call i32* @EC_KEY_get0_public_key(i32* %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @EC_KEY_get0_public_key(i32* %43)
  store i32* %44, i32** %10, align 8
  %45 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %46 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @EVP_PKEY_get1_EC_KEY(i32 %49)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %128

54:                                               ; preds = %40
  %55 = load i32*, i32** %6, align 8
  %56 = call i32* @EC_KEY_get0_group(i32* %55)
  store i32* %56, i32** %3, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @EC_KEY_get0_private_key(i32* %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %54
  br label %128

65:                                               ; preds = %61
  %66 = load i32*, i32** %3, align 8
  %67 = call i32* @EC_POINT_new(i32* %66)
  store i32* %67, i32** %5, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32* @EC_POINT_new(i32* %68)
  store i32* %69, i32** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %98

72:                                               ; preds = %65
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @EC_POINT_add(i32* %76, i32* %77, i32* %78, i32* %79, i32* %80)
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %98, label %83

83:                                               ; preds = %75
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @EC_POINT_mul(i32* %84, i32* %85, i32* null, i32* %86, i32* %87, i32* %88)
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %98, label %91

91:                                               ; preds = %83
  %92 = load i32*, i32** %3, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @EC_POINT_get_affine_coordinates_GFp(i32* %92, i32* %93, i32* %94, i32* null, i32* %95)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %103

98:                                               ; preds = %91, %83, %75, %72, %65
  %99 = load i32, i32* @MSG_ERROR, align 4
  %100 = call i32 (...) @ERR_get_error()
  %101 = call i32 @ERR_error_string(i32 %100, i32* null)
  %102 = call i32 @wpa_printf(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %128

103:                                              ; preds = %91
  %104 = load i32*, i32** %12, align 8
  %105 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %106 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %109 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @dpp_bn2bin_pad(i32* %104, i32 %107, i32 %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %128

114:                                              ; preds = %103
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %117 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %120 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @wpa_hexdump_key(i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %121)
  %123 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %124 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %127 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %114, %113, %98, %64, %53, %39, %22
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @EC_POINT_clear_free(i32* %129)
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @EC_POINT_clear_free(i32* %131)
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @EC_KEY_free(i32* %133)
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @EC_KEY_free(i32* %135)
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @EC_KEY_free(i32* %137)
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @BN_clear_free(i32* %139)
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @BN_CTX_free(i32* %141)
  %143 = load i32, i32* %14, align 4
  ret i32 %143
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates_GFp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i64 @dpp_bn2bin_pad(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i32 @EC_POINT_clear_free(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
