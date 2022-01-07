; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_derive_ke.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_derive_ke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i64, i64, i64, i32*, i32, i64, i64, i32*, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DPP_MAX_NONCE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DPP Key\00", align 1
@DPP_MAX_HASH_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"DPP: Mx/Nx not available - cannot derive ke\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"DPP: Lx not available - cannot derive ke\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"DPP: PRK = HKDF-Extract(<>, IKM)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"DPP: ke = HKDF-Expand(PRK, info, L)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, i32*, i32)* @dpp_derive_ke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_derive_ke(%struct.dpp_authentication* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32*], align 16
  %15 = alloca [3 x i64], align 16
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @DPP_MAX_NONCE_LEN, align 4
  %19 = mul nsw i32 2, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %23 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  store i64 0, i64* %16, align 8
  %26 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %27 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %32 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %3
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %142

38:                                               ; preds = %30
  %39 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %40 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %39, i32 0, i32 11
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %45 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @os_memcpy(i32* %22, i32 %46, i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %22, i64 %49
  %51 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %52 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @os_memcpy(i32* %50, i32 %53, i64 %54)
  %56 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %57 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %56, i32 0, i32 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %59
  store i32* %58, i32** %60, align 8
  %61 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %62 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %64
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %16, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %16, align 8
  %68 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %69 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %71
  store i32* %70, i32** %72, align 8
  %73 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %74 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %76
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %16, align 8
  %80 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %81 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %38
  %85 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %86 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %91 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %142

97:                                               ; preds = %89
  %98 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %99 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %16, align 8
  %102 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %101
  store i32* %100, i32** %102, align 8
  %103 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %104 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %106
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %16, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %16, align 8
  br label %110

110:                                              ; preds = %97, %84, %38
  %111 = load i32, i32* %7, align 4
  %112 = load i64, i64* %8, align 8
  %113 = mul i64 2, %112
  %114 = trunc i64 %113 to i32
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %117 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %118 = call i32 @dpp_hmac_vector(i32 %111, i32* %22, i32 %114, i64 %115, i32** %116, i64* %117, i32* %25)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %142

122:                                              ; preds = %110
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @wpa_hexdump_key(i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32* %25, i32 %124)
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @dpp_hkdf_expand(i32 %126, i32* %25, i32 %127, i8* %128, i32* %129, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @os_memset(i32* %25, i32 0, i32 %132)
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %122
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %142

137:                                              ; preds = %122
  %138 = load i32, i32* @MSG_DEBUG, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @wpa_hexdump_key(i32 %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32* %139, i32 %140)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %142

142:                                              ; preds = %137, %136, %121, %94, %35
  %143 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memcpy(i32*, i32, i64) #2

declare dso_local i32 @dpp_hmac_vector(i32, i32*, i32, i64, i32**, i64*, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @dpp_hkdf_expand(i32, i32*, i32, i8*, i32*, i32) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
