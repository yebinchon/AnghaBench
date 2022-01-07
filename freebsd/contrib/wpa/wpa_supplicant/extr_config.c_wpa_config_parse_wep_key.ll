; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_wep_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_wep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Line %d: Invalid WEP key %d '%s'.\00", align 1
@MAX_WEP_KEY_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Line %d: Too long WEP key %d '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Line %d: Invalid WEP key length %u - this network block will be ignored\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"wep_key%d\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, i8*, i32)* @wpa_config_parse_wep_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_parse_wep_key(i32* %0, i64* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = call i8* @wpa_config_parse_string(i8* %15, i64* %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i8* %24)
  store i32 -1, i32* %6, align 4
  br label %84

26:                                               ; preds = %5
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MAX_WEP_KEY_LEN, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i8* %35)
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @os_free(i8* %37)
  store i32 -1, i32* %6, align 4
  br label %84

39:                                               ; preds = %26
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 5
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 13
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 16
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* @MSG_ERROR, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %55, %51, %47, %43, %39
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @os_memcpy(i32* %63, i8* %64, i64 %66)
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @str_clear_free(i8* %68)
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @os_snprintf(i8* %70, i32 20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @os_snprintf_error(i32 20, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %62
  %77 = load i32, i32* @MSG_MSGDUMP, align 4
  %78 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %79 = load i32*, i32** %7, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @wpa_hexdump_key(i32 %77, i8* %78, i32* %79, i64 %81)
  br label %83

83:                                               ; preds = %76, %62
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %31, %20
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i8* @wpa_config_parse_string(i8*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_memcpy(i32*, i8*, i64) #1

declare dso_local i32 @str_clear_free(i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
