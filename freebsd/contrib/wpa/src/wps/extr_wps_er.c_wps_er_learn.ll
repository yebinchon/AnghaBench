; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_learn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_learn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wps_er_ap = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WPS ER: AP not found for learn request\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"WPS ER: Pending operation ongoing with the AP - cannot start learn\00", align 1
@wps_er_ap_learn_m1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_er_learn(%struct.wps_er* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_er*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wps_er_ap*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.wps_er*, %struct.wps_er** %7, align 8
  %14 = icmp eq %struct.wps_er* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %61

16:                                               ; preds = %5
  %17 = load %struct.wps_er*, %struct.wps_er** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er* %17, i32* null, i32* %18, i32* %19)
  store %struct.wps_er_ap* %20, %struct.wps_er_ap** %12, align 8
  %21 = load %struct.wps_er_ap*, %struct.wps_er_ap** %12, align 8
  %22 = icmp eq %struct.wps_er_ap* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %61

26:                                               ; preds = %16
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.wps_er_ap*, %struct.wps_er_ap** %12, align 8
  %31 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.wps_er_ap*, %struct.wps_er_ap** %12, align 8
  %35 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %61

41:                                               ; preds = %33
  %42 = load %struct.wps_er_ap*, %struct.wps_er_ap** %12, align 8
  %43 = load i32, i32* @wps_er_ap_learn_m1, align 4
  %44 = call i64 @wps_er_send_get_device_info(%struct.wps_er_ap* %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %61

47:                                               ; preds = %41
  %48 = load %struct.wps_er*, %struct.wps_er** %7, align 8
  %49 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.wps_er*, %struct.wps_er** %7, align 8
  %51 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @wps_registrar_add_pin(i32 %54, i32* null, i32* %55, i32* %56, i64 %57, i32 0)
  %59 = load %struct.wps_er*, %struct.wps_er** %7, align 8
  %60 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %47, %46, %38, %23, %15
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er*, i32*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_er_send_get_device_info(%struct.wps_er_ap*, i32) #1

declare dso_local i32 @wps_registrar_add_pin(i32, i32*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
