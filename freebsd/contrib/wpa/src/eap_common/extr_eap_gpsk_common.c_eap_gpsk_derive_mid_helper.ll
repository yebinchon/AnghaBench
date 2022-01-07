; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_gpsk_common.c_eap_gpsk_derive_mid_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_gpsk_common.c_eap_gpsk_derive_mid_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"EAP-GPSK: Unknown cipher %d used in Session-Id derivation\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Method ID\00", align 1
@EAP_GPSK_VENDOR_IETF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"EAP-GPSK: Data to Method ID derivation\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"EAP-GPSK: Method ID\00", align 1
@SID_LABEL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i32*, i32*, i64, i32)* @eap_gpsk_derive_mid_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_gpsk_derive_mid_helper(i32 %0, i32* %1, i64 %2, i32* %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32 (i32*, i32*, i64, i32*, i64)*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 (i32*, i32*, i64, i32*, i64)* null, i32 (i32*, i32*, i64, i32*, i64)** %19, align 8
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %22 [
    i32 129, label %21
  ]

21:                                               ; preds = %7
  store i32 (i32*, i32*, i64, i32*, i64)* @eap_gpsk_gkdf_cmac, i32 (i32*, i32*, i64, i32*, i64)** %19, align 8
  br label %26

22:                                               ; preds = %7
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %8, align 4
  br label %85

26:                                               ; preds = %21
  %27 = call i64 @strlen(i32* bitcast ([10 x i8]* @.str.1 to i32*))
  %28 = add i64 %27, 1
  %29 = add i64 %28, 6
  %30 = load i64, i64* %14, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* %18, align 8
  %33 = call i32* @os_malloc(i64 %32)
  store i32* %33, i32** %17, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 -1, i32* %8, align 4
  br label %85

37:                                               ; preds = %26
  %38 = load i32*, i32** %17, align 8
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = call i64 @strlen(i32* bitcast ([10 x i8]* @.str.1 to i32*))
  %41 = call i32 @os_memcpy(i32* %39, i32* bitcast ([10 x i8]* @.str.1 to i32*), i64 %40)
  %42 = call i64 @strlen(i32* bitcast ([10 x i8]* @.str.1 to i32*))
  %43 = load i32*, i32** %16, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 %42
  store i32* %44, i32** %16, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @os_memcpy(i32* %45, i32* %15, i64 1)
  %47 = load i32*, i32** %16, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32* %48, i32** %16, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* @EAP_GPSK_VENDOR_IETF, align 4
  %51 = call i32 @WPA_PUT_BE32(i32* %49, i32 %50)
  %52 = load i32*, i32** %16, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32* %53, i32** %16, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @WPA_PUT_BE16(i32* %54, i32 %55)
  %57 = load i32*, i32** %16, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %58, i32** %16, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @os_memcpy(i32* %59, i32* %60, i64 %61)
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32*, i32** %17, align 8
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @wpa_hexdump(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* %64, i64 %65)
  %67 = load i32 (i32*, i32*, i64, i32*, i64)*, i32 (i32*, i32*, i64, i32*, i64)** %19, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 %67(i32* %68, i32* %69, i64 %70, i32* %71, i64 %72)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %37
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @os_free(i32* %76)
  store i32 -1, i32* %8, align 4
  br label %85

78:                                               ; preds = %37
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @os_free(i32* %79)
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @wpa_hexdump(i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %82, i64 %83)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %75, %36, %22
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @eap_gpsk_gkdf_cmac(i32*, i32*, i64, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @WPA_PUT_BE32(i32*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
