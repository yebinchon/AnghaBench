; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_global_ctrl_iface_save_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_global_ctrl_iface_save_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32, %struct.wpa_supplicant* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"CTRL_IFACE: SAVE_CONFIG - Not allowed to update configuration (update_config=0)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"CTRL_IFACE: SAVE_CONFIG - Failed to update configuration\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"CTRL_IFACE: SAVE_CONFIG - Configuration updated\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"CTRL_IFACE: SAVE_CONFIG - No configuration files could be updated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_global*)* @wpas_global_ctrl_iface_save_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_global_ctrl_iface_save_config(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.wpa_global*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %6, i32 0, i32 0
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  store %struct.wpa_supplicant* %8, %struct.wpa_supplicant** %5, align 8
  br label %9

9:                                                ; preds = %43, %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %11 = icmp ne %struct.wpa_supplicant* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_dbg(%struct.wpa_supplicant* %20, i32 %21, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %43

23:                                               ; preds = %12
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i64 @wpa_config_write(i32 %26, %struct.TYPE_2__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_dbg(%struct.wpa_supplicant* %33, i32 %34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %42

36:                                               ; preds = %23
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 @wpa_dbg(%struct.wpa_supplicant* %37, i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %32
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 2
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %45, align 8
  store %struct.wpa_supplicant* %46, %struct.wpa_supplicant** %5, align 8
  br label %9

47:                                               ; preds = %9
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 @wpa_dbg(%struct.wpa_supplicant* %54, i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %50, %47
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i64 @wpa_config_write(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
