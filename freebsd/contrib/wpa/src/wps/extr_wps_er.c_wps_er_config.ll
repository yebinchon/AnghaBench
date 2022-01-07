; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wps_credential = type { i32 }
%struct.wps_er_ap = type { %struct.TYPE_5__*, i64, i32* }
%struct.TYPE_5__ = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"WPS ER: AP not found for config request\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"WPS ER: Pending operation ongoing with the AP - cannot start config\00", align 1
@wps_er_ap_config_m1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_er_config(%struct.wps_er* %0, i32* %1, i32* %2, i32* %3, i64 %4, %struct.wps_credential* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wps_er*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wps_credential*, align 8
  %14 = alloca %struct.wps_er_ap*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.wps_credential* %5, %struct.wps_credential** %13, align 8
  %15 = load %struct.wps_er*, %struct.wps_er** %8, align 8
  %16 = icmp eq %struct.wps_er* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %81

18:                                               ; preds = %6
  %19 = load %struct.wps_er*, %struct.wps_er** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er* %19, i32* null, i32* %20, i32* %21)
  store %struct.wps_er_ap* %22, %struct.wps_er_ap** %14, align 8
  %23 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %24 = icmp eq %struct.wps_er_ap* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %81

28:                                               ; preds = %18
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %33 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %37 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %81

43:                                               ; preds = %35
  %44 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %45 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @os_free(%struct.TYPE_5__* %46)
  %48 = load %struct.wps_credential*, %struct.wps_credential** %13, align 8
  %49 = call %struct.TYPE_5__* @os_memdup(%struct.wps_credential* %48, i32 4)
  %50 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %51 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %50, i32 0, i32 0
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %53 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp eq %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  store i32 -1, i32* %7, align 4
  br label %81

57:                                               ; preds = %43
  %58 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %59 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.wps_er_ap*, %struct.wps_er_ap** %14, align 8
  %63 = load i32, i32* @wps_er_ap_config_m1, align 4
  %64 = call i64 @wps_er_send_get_device_info(%struct.wps_er_ap* %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 -1, i32* %7, align 4
  br label %81

67:                                               ; preds = %57
  %68 = load %struct.wps_er*, %struct.wps_er** %8, align 8
  %69 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.wps_er*, %struct.wps_er** %8, align 8
  %71 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @wps_registrar_add_pin(i32 %74, i32* null, i32* %75, i32* %76, i64 %77, i32 0)
  %79 = load %struct.wps_er*, %struct.wps_er** %8, align 8
  %80 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %67, %66, %56, %40, %25, %17
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er*, i32*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @os_memdup(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_er_send_get_device_info(%struct.wps_er_ap*, i32) #1

declare dso_local i32 @wps_registrar_add_pin(i32, i32*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
