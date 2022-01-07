; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_set_debug_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_set_debug_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32 }

@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@wpa_debug_level = common dso_local global i32 0, align 4
@wpa_debug_timestamp = common dso_local global i32 0, align 4
@wpa_debug_show_keys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_set_debug_params(%struct.wpa_global* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_global*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wpa_global* %0, %struct.wpa_global** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MSG_EXCESSIVE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MSG_MSGDUMP, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MSG_WARNING, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %71

37:                                               ; preds = %32, %28, %24, %20, %16, %4
  %38 = load i32, i32* @wpa_debug_level, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @wpa_debug_timestamp, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @wpa_debug_show_keys, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* @wpa_debug_level, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* @wpa_debug_timestamp, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* @wpa_debug_show_keys, align 4
  %50 = load i32, i32* @wpa_debug_level, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %55 = call i32 @wpas_notify_debug_level_changed(%struct.wpa_global* %54)
  br label %56

56:                                               ; preds = %53, %37
  %57 = load i32, i32* @wpa_debug_timestamp, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %62 = call i32 @wpas_notify_debug_timestamp_changed(%struct.wpa_global* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* @wpa_debug_show_keys, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %69 = call i32 @wpas_notify_debug_show_keys_changed(%struct.wpa_global* %68)
  br label %70

70:                                               ; preds = %67, %63
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %36
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @wpas_notify_debug_level_changed(%struct.wpa_global*) #1

declare dso_local i32 @wpas_notify_debug_timestamp_changed(%struct.wpa_global*) #1

declare dso_local i32 @wpas_notify_debug_show_keys_changed(%struct.wpa_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
