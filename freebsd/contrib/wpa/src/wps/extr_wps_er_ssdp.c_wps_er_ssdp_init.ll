; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er_ssdp.c_wps_er_ssdp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er_ssdp.c_wps_er_ssdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i64, i64, i32*, i64, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPS ER: Failed to add routing entry for SSDP\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"WPS ER: Failed to open multicast socket for SSDP\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"WPS ER: Failed to open SSDP listener socket\00", align 1
@EVENT_TYPE_READ = common dso_local global i32 0, align 4
@wps_er_ssdp_rx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_er_ssdp_init(%struct.wps_er* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_er*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %3, align 8
  %4 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %5 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = call i64 @add_ssdp_network(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @MSG_INFO, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %14 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %17 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %22 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  br label %25

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32* [ %23, %20 ], [ null, %24 ]
  %27 = call i64 @ssdp_open_multicast_sock(i32 %15, i32* %26)
  %28 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %29 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %31 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

37:                                               ; preds = %25
  %38 = call i64 (...) @ssdp_listener_open()
  %39 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %40 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %42 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

48:                                               ; preds = %37
  %49 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %50 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @EVENT_TYPE_READ, align 4
  %53 = load i32, i32* @wps_er_ssdp_rx, align 4
  %54 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %55 = call i64 @eloop_register_sock(i64 %51, i32 %52, i32 %53, %struct.wps_er* %54, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %59 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @EVENT_TYPE_READ, align 4
  %62 = load i32, i32* @wps_er_ssdp_rx, align 4
  %63 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %64 = call i64 @eloop_register_sock(i64 %60, i32 %61, i32 %62, %struct.wps_er* %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %48
  store i32 -1, i32* %2, align 4
  br label %70

67:                                               ; preds = %57
  %68 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %69 = call i32 @wps_er_send_ssdp_msearch(%struct.wps_er* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %66, %45, %34, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @add_ssdp_network(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @ssdp_open_multicast_sock(i32, i32*) #1

declare dso_local i64 @ssdp_listener_open(...) #1

declare dso_local i64 @eloop_register_sock(i64, i32, i32, %struct.wps_er*, i32*) #1

declare dso_local i32 @wps_er_send_ssdp_msearch(%struct.wps_er*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
