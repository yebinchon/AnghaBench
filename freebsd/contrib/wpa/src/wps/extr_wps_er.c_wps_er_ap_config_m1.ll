; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_config_m1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_config_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.wps_config = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"WPS ER: Protocol run already in progress with this AP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*, %struct.wpabuf*)* @wps_er_ap_config_m1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_config_m1(%struct.wps_er_ap* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_er_ap*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_config, align 4
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %7 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %46

13:                                               ; preds = %2
  %14 = call i32 @os_memset(%struct.wps_config* %5, i32 0, i32 12)
  %15 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %16 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %5, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %5, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %23 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = call %struct.TYPE_4__* @wps_init(%struct.wps_config* %5)
  %27 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %28 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %27, i32 0, i32 0
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %30 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp eq %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %13
  br label %46

34:                                               ; preds = %13
  %35 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %36 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %40 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %44 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %45 = call i32 @wps_er_ap_process(%struct.wps_er_ap* %43, %struct.wpabuf* %44)
  br label %46

46:                                               ; preds = %34, %33, %10
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memset(%struct.wps_config*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @wps_init(%struct.wps_config*) #1

declare dso_local i32 @wps_er_ap_process(%struct.wps_er_ap*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
