; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_global_iface_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_global_iface_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32 }
%struct.wpa_supplicant = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CTRL_IFACE GLOBAL INTERFACE_REMOVE '%s'\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"CTRL_IFACE deleting the interface '%s'\00", align 1
@WPA_IF_STATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_global*, i8*)* @wpa_supplicant_global_iface_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_global_iface_remove(%struct.wpa_global* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_global*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpa_global* %0, %struct.wpa_global** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.wpa_supplicant* @wpa_supplicant_get_iface(%struct.wpa_global* %12, i8* %13)
  store %struct.wpa_supplicant* %14, %struct.wpa_supplicant** %6, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %16 = icmp eq %struct.wpa_supplicant* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %24 = call i32 @wpa_supplicant_remove_iface(%struct.wpa_global* %22, %struct.wpa_supplicant* %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @WPA_IF_STATION, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @wpa_drv_if_remove(i32 %36, i32 %37, i8* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %27, %18
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local %struct.wpa_supplicant* @wpa_supplicant_get_iface(%struct.wpa_global*, i8*) #1

declare dso_local i32 @wpa_supplicant_remove_iface(%struct.wpa_global*, %struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_drv_if_remove(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
