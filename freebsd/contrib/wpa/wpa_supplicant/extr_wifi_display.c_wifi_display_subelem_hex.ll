; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_subelem_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_subelem_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WIFI_DISPLAY_SUBELEM_HEADER_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wifi_display_subelem_hex(%struct.wpabuf* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = icmp ne %struct.wpabuf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %84

14:                                               ; preds = %2
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = call i64* @wpabuf_head_u8(%struct.wpabuf* %15)
  store i64* %16, i64** %7, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %84

20:                                               ; preds = %14
  %21 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %22 = call i64 @wpabuf_len(%struct.wpabuf* %21)
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %76, %20
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @WIFI_DISPLAY_SUBELEM_HEADER_LEN, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = call i64 @WPA_GET_BE16(i64* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @WIFI_DISPLAY_SUBELEM_HEADER_LEN, align 8
  %37 = add i64 %35, %36
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %82

43:                                               ; preds = %29
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %43
  %51 = load i64, i64* %10, align 8
  %52 = icmp ugt i64 %51, 1000
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %82

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  %56 = mul i64 2, %55
  %57 = add i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i8* @os_zalloc(i32 %58)
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i8* null, i8** %3, align 8
  br label %84

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = mul i64 2, %65
  %67 = add i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* @WIFI_DISPLAY_SUBELEM_HEADER_LEN, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @wpa_snprintf_hex(i8* %64, i32 %68, i64* %73, i64 %74)
  br label %82

76:                                               ; preds = %43
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @WIFI_DISPLAY_SUBELEM_HEADER_LEN, align 8
  %79 = add i64 %77, %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %9, align 8
  br label %23

82:                                               ; preds = %63, %53, %42, %23
  %83 = load i8*, i8** %6, align 8
  store i8* %83, i8** %3, align 8
  br label %84

84:                                               ; preds = %82, %62, %19, %13
  %85 = load i8*, i8** %3, align 8
  ret i8* %85
}

declare dso_local i64* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @WPA_GET_BE16(i64*) #1

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
