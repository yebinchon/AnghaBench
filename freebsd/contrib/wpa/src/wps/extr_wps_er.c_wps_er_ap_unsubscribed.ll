; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_unsubscribed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_unsubscribed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32, i64 }
%struct.wps_er_ap = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WPS ER: Unsubscribed from AP %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er*, %struct.wps_er_ap*)* @wps_er_ap_unsubscribed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_unsubscribed(%struct.wps_er* %0, %struct.wps_er_ap* %1) #0 {
  %3 = alloca %struct.wps_er*, align 8
  %4 = alloca %struct.wps_er_ap*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %3, align 8
  store %struct.wps_er_ap* %1, %struct.wps_er_ap** %4, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %7 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @inet_ntoa(i32 %8)
  %10 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %11 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %15 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %14, i32 0, i32 0
  %16 = call i32 @dl_list_del(i32* %15)
  %17 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %18 = call i32 @wps_er_ap_free(%struct.wps_er_ap* %17)
  %19 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %20 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %25 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %24, i32 0, i32 0
  %26 = call i64 @dl_list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.wps_er*, %struct.wps_er** %3, align 8
  %30 = call i32 @wps_er_deinit_finish(%struct.wps_er* %29, i32* null)
  br label %31

31:                                               ; preds = %28, %23, %2
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @wps_er_ap_free(%struct.wps_er_ap*) #1

declare dso_local i64 @dl_list_empty(i32*) #1

declare dso_local i32 @wps_er_deinit_finish(%struct.wps_er*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
