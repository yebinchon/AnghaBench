; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32 }
%struct.wps_credential = type { i32 }
%struct.wps_er_ap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WPS ER: AP not found for set config request\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"WPS ER: Updated local AP settings based set config request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_er_set_config(%struct.wps_er* %0, i32* %1, i32* %2, %struct.wps_credential* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wps_er*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wps_credential*, align 8
  %10 = alloca %struct.wps_er_ap*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.wps_credential* %3, %struct.wps_credential** %9, align 8
  %11 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %12 = icmp eq %struct.wps_er* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %45

14:                                               ; preds = %4
  %15 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er* %15, i32* null, i32* %16, i32* %17)
  store %struct.wps_er_ap* %18, %struct.wps_er_ap** %10, align 8
  %19 = load %struct.wps_er_ap*, %struct.wps_er_ap** %10, align 8
  %20 = icmp eq %struct.wps_er_ap* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %45

24:                                               ; preds = %14
  %25 = load %struct.wps_er_ap*, %struct.wps_er_ap** %10, align 8
  %26 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @os_free(%struct.TYPE_3__* %27)
  %29 = load %struct.wps_credential*, %struct.wps_credential** %9, align 8
  %30 = call %struct.TYPE_3__* @os_memdup(%struct.wps_credential* %29, i32 4)
  %31 = load %struct.wps_er_ap*, %struct.wps_er_ap** %10, align 8
  %32 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %31, i32 0, i32 0
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %32, align 8
  %33 = load %struct.wps_er_ap*, %struct.wps_er_ap** %10, align 8
  %34 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp eq %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %45

38:                                               ; preds = %24
  %39 = load %struct.wps_er_ap*, %struct.wps_er_ap** %10, align 8
  %40 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %37, %21, %13
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er*, i32*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @os_memdup(%struct.wps_credential*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
