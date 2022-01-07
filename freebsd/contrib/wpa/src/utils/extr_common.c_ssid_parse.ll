; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_ssid_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_ssid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid_value = type { i64, i32 }

@SSID_MAX_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssid_parse(i8* %0, %struct.wpa_ssid_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_ssid_value*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wpa_ssid_value* %1, %struct.wpa_ssid_value** %5, align 8
  %10 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @os_strdup(i8* %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 34
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @os_strchr(i8* %23, i8 signext 32)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %27, %22
  br label %42

30:                                               ; preds = %17
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i8* @os_strchr(i8* %32, i8 signext 34)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @os_free(i8* %37)
  store i32 -1, i32* %3, align 4
  br label %72

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %39, %29
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @wpa_config_parse_string(i8* %43, i64* %9)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @SSID_MAX_LEN, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %5, align 8
  %54 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %5, align 8
  %56 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @os_memcpy(i32 %57, i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %51, %47, %42
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @os_free(i8* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @os_free(i8* %64)
  %66 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 -1
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %36, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @wpa_config_parse_string(i8*, i64*) #1

declare dso_local i32 @os_memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
