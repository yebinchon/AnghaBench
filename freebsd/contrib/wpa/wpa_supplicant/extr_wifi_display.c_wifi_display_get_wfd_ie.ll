; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_get_wfd_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_get_wfd_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_global = type { i64*, i32* }

@MAX_WFD_SUBELEMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wifi_display_get_wfd_ie(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wpa_global*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_global* %0, %struct.wpa_global** %3, align 8
  %7 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %77

12:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MAX_WFD_SUBELEMS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @wpabuf_len(i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %26, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load i64, i64* %5, align 8
  %43 = call %struct.wpabuf* @wpabuf_alloc(i64 %42)
  store %struct.wpabuf* %43, %struct.wpabuf** %4, align 8
  %44 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %45 = icmp eq %struct.wpabuf* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %77

47:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MAX_WFD_SUBELEMS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %54 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %63 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %64 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @wpabuf_put_buf(%struct.wpabuf* %62, i64 %69)
  br label %71

71:                                               ; preds = %61, %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %76, %struct.wpabuf** %2, align 8
  br label %77

77:                                               ; preds = %75, %46, %11
  %78 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %78
}

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
