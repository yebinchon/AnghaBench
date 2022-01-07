; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_cache_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_cache_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32 }
%struct.in_addr = type { i32 }
%struct.wps_er_ap = type { i32*, i32* }
%struct.wps_er_ap_settings = type { i32, i32, i32* }

@WPS_UUID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_er_ap_cache_settings(%struct.wps_er* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_er*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.wps_er_ap*, align 8
  %7 = alloca %struct.wps_er_ap_settings*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %8 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %9 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %10 = call %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er* %8, %struct.in_addr* %9, i32* null, i32* null)
  store %struct.wps_er_ap* %10, %struct.wps_er_ap** %6, align 8
  %11 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %12 = icmp eq %struct.wps_er_ap* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %15 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store i32 -1, i32* %3, align 4
  br label %53

19:                                               ; preds = %13
  %20 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %21 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %22 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call %struct.wps_er_ap_settings* @wps_er_ap_get_settings(%struct.wps_er* %20, i32* %23)
  store %struct.wps_er_ap_settings* %24, %struct.wps_er_ap_settings** %7, align 8
  %25 = load %struct.wps_er_ap_settings*, %struct.wps_er_ap_settings** %7, align 8
  %26 = icmp ne %struct.wps_er_ap_settings* %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %19
  %28 = call %struct.wps_er_ap_settings* @os_zalloc(i32 16)
  store %struct.wps_er_ap_settings* %28, %struct.wps_er_ap_settings** %7, align 8
  %29 = load %struct.wps_er_ap_settings*, %struct.wps_er_ap_settings** %7, align 8
  %30 = icmp eq %struct.wps_er_ap_settings* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %53

32:                                               ; preds = %27
  %33 = load %struct.wps_er_ap_settings*, %struct.wps_er_ap_settings** %7, align 8
  %34 = getelementptr inbounds %struct.wps_er_ap_settings, %struct.wps_er_ap_settings* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %37 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @WPS_UUID_LEN, align 4
  %40 = call i32 @os_memcpy(i32* %35, i32* %38, i32 %39)
  %41 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %42 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %41, i32 0, i32 0
  %43 = load %struct.wps_er_ap_settings*, %struct.wps_er_ap_settings** %7, align 8
  %44 = getelementptr inbounds %struct.wps_er_ap_settings, %struct.wps_er_ap_settings* %43, i32 0, i32 1
  %45 = call i32 @dl_list_add(i32* %42, i32* %44)
  br label %46

46:                                               ; preds = %32, %19
  %47 = load %struct.wps_er_ap_settings*, %struct.wps_er_ap_settings** %7, align 8
  %48 = getelementptr inbounds %struct.wps_er_ap_settings, %struct.wps_er_ap_settings* %47, i32 0, i32 0
  %49 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %50 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @os_memcpy(i32* %48, i32* %51, i32 4)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %31, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er*, %struct.in_addr*, i32*, i32*) #1

declare dso_local %struct.wps_er_ap_settings* @wps_er_ap_get_settings(%struct.wps_er*, i32*) #1

declare dso_local %struct.wps_er_ap_settings* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
