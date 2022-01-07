; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_subelem_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_subelem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpabuf** }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MAX_WFD_SUBELEMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wifi_display_subelem_get(%struct.wpa_global* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_global*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32, align 4
  store %struct.wpa_global* %0, %struct.wpa_global** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @os_strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %18 = call %struct.wpabuf* @wifi_display_get_wfd_ie(%struct.wpa_global* %17)
  store %struct.wpabuf* %18, %struct.wpabuf** %11, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %20 = icmp eq %struct.wpabuf* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %75

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %26 = call i64 @wpabuf_head(%struct.wpabuf* %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %28 = call i64 @wpabuf_len(%struct.wpabuf* %27)
  %29 = call i32 @wpa_snprintf_hex(i8* %23, i64 %24, i64 %26, i64 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %31 = call i32 @wpabuf_free(%struct.wpabuf* %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %75

33:                                               ; preds = %4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MAX_WFD_SUBELEMS, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %33
  store i32 -1, i32* %5, align 4
  br label %75

43:                                               ; preds = %38
  %44 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %45 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %44, i32 0, i32 0
  %46 = load %struct.wpabuf**, %struct.wpabuf*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %46, i64 %48
  %50 = load %struct.wpabuf*, %struct.wpabuf** %49, align 8
  %51 = icmp eq %struct.wpabuf* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %75

53:                                               ; preds = %43
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %57 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %56, i32 0, i32 0
  %58 = load %struct.wpabuf**, %struct.wpabuf*** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %58, i64 %60
  %62 = load %struct.wpabuf*, %struct.wpabuf** %61, align 8
  %63 = call i64 @wpabuf_head_u8(%struct.wpabuf* %62)
  %64 = add nsw i64 %63, 1
  %65 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %66 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %65, i32 0, i32 0
  %67 = load %struct.wpabuf**, %struct.wpabuf*** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %67, i64 %69
  %71 = load %struct.wpabuf*, %struct.wpabuf** %70, align 8
  %72 = call i64 @wpabuf_len(%struct.wpabuf* %71)
  %73 = sub nsw i64 %72, 1
  %74 = call i32 @wpa_snprintf_hex(i8* %54, i64 %55, i64 %64, i64 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %53, %52, %42, %22, %21
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local %struct.wpabuf* @wifi_display_get_wfd_ie(%struct.wpa_global*) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i64, i64, i64) #1

declare dso_local i64 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @wpabuf_head_u8(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
