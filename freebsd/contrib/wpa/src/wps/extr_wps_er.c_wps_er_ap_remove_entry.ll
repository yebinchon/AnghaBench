; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_remove_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32, i32 }
%struct.wps_er_ap = type { i32, i64, i32*, i32*, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WPS ER: Removing AP entry for %s (%s)\00", align 1
@wps_er_ap_timeout = common dso_local global i32 0, align 4
@WPS_EV_ER_AP_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er*, %struct.wps_er_ap*)* @wps_er_ap_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_remove_entry(%struct.wps_er* %0, %struct.wps_er_ap* %1) #0 {
  %3 = alloca %struct.wps_er*, align 8
  %4 = alloca %struct.wps_er_ap*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %3, align 8
  store %struct.wps_er_ap* %1, %struct.wps_er_ap** %4, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %7 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @inet_ntoa(i32 %8)
  %10 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %11 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load i32, i32* @wps_er_ap_timeout, align 4
  %15 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %16 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %17 = call i32 @eloop_cancel_timeout(i32 %14, %struct.wps_er* %15, %struct.wps_er_ap* %16)
  %18 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %19 = call i32 @wps_er_sta_remove_all(%struct.wps_er_ap* %18)
  %20 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %21 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %24 = load i32, i32* @WPS_EV_ER_AP_REMOVE, align 4
  %25 = call i32 @wps_er_ap_event(i32 %22, %struct.wps_er_ap* %23, i32 %24)
  %26 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %27 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @http_client_free(i32* %28)
  %30 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %31 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %33 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %38 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @wps_deinit(i32* %39)
  %41 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %42 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %2
  %44 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %45 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %44, i32 0, i32 0
  %46 = call i32 @dl_list_del(i32* %45)
  %47 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %48 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %53 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %52, i32 0, i32 0
  %54 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %55 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %54, i32 0, i32 0
  %56 = call i32 @dl_list_add(i32* %53, i32* %55)
  %57 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %58 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %59 = call i32 @wps_er_ap_unsubscribe(%struct.wps_er* %57, %struct.wps_er_ap* %58)
  br label %63

60:                                               ; preds = %43
  %61 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %62 = call i32 @wps_er_ap_free(%struct.wps_er_ap* %61)
  br label %63

63:                                               ; preds = %60, %51
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wps_er*, %struct.wps_er_ap*) #1

declare dso_local i32 @wps_er_sta_remove_all(%struct.wps_er_ap*) #1

declare dso_local i32 @wps_er_ap_event(i32, %struct.wps_er_ap*, i32) #1

declare dso_local i32 @http_client_free(i32*) #1

declare dso_local i32 @wps_deinit(i32*) #1

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @wps_er_ap_unsubscribe(%struct.wps_er*, %struct.wps_er_ap*) #1

declare dso_local i32 @wps_er_ap_free(%struct.wps_er_ap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
