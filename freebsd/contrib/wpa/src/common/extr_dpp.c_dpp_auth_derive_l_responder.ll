; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_derive_l_responder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_derive_l_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"OpenSSL: failed: %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"DPP: L.x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*)* @dpp_auth_derive_l_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_auth_derive_l_responder(%struct.dpp_authentication* %0) #0 {
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
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 -1, i32* %15, align 4
  %16 = call i32* (...) @BN_CTX_new()
  store i32* %16, i32** %9, align 8
  %17 = call i32* (...) @BN_new()
  store i32* %17, i32** %11, align 8
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %12, align 8
  %19 = call i32* (...) @BN_new()
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %12, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25, %22, %1
  br label %143

32:                                               ; preds = %28
  %33 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %34 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %33, i32 0, i32 5
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @EVP_PKEY_get1_EC_KEY(i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %143

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @EC_KEY_get0_public_key(i32* %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32* @EC_KEY_get0_group(i32* %45)
  store i32* %46, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %143

50:                                               ; preds = %42
  %51 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %52 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @EVP_PKEY_get1_EC_KEY(i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %58 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @EVP_PKEY_get1_EC_KEY(i32 %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63, %50
  br label %143

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = call i32* @EC_KEY_get0_private_key(i32* %68)
  store i32* %69, i32** %13, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32* @EC_KEY_get0_private_key(i32* %70)
  store i32* %71, i32** %14, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32*, i32** %14, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74, %67
  br label %143

78:                                               ; preds = %74
  %79 = load i32*, i32** %3, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @EC_GROUP_get_order(i32* %79, i32* %80, i32* %81)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @BN_mod_add(i32* %85, i32* %86, i32* %87, i32* %88, i32* %89)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %84, %78
  br label %143

93:                                               ; preds = %84
  %94 = load i32*, i32** %3, align 8
  %95 = call i32* @EC_POINT_new(i32* %94)
  store i32* %95, i32** %4, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load i32*, i32** %3, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @EC_POINT_mul(i32* %99, i32* %100, i32* null, i32* %101, i32* %102, i32* %103)
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %113, label %106

106:                                              ; preds = %98
  %107 = load i32*, i32** %3, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @EC_POINT_get_affine_coordinates_GFp(i32* %107, i32* %108, i32* %109, i32* null, i32* %110)
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %118

113:                                              ; preds = %106, %98, %93
  %114 = load i32, i32* @MSG_ERROR, align 4
  %115 = call i32 (...) @ERR_get_error()
  %116 = call i32 @ERR_error_string(i32 %115, i32* null)
  %117 = call i32 @wpa_printf(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %143

118:                                              ; preds = %106
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %121 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %124 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @dpp_bn2bin_pad(i32* %119, i32 %122, i32 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %143

129:                                              ; preds = %118
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %132 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %135 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @wpa_hexdump_key(i32 %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %136)
  %138 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %139 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %142 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  store i32 0, i32* %15, align 4
  br label %143

143:                                              ; preds = %129, %128, %113, %92, %77, %66, %49, %41, %31
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @EC_POINT_clear_free(i32* %144)
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @EC_KEY_free(i32* %146)
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @EC_KEY_free(i32* %148)
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @EC_KEY_free(i32* %150)
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @BN_clear_free(i32* %152)
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @BN_clear_free(i32* %154)
  %156 = load i32*, i32** %12, align 8
  %157 = call i32 @BN_free(i32* %156)
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @BN_CTX_free(i32* %158)
  %160 = load i32, i32* %15, align 4
  ret i32 %160
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #1

declare dso_local i32 @EC_GROUP_get_order(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

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

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
