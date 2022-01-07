; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32, void (i8*)*, i8*, i32, i32 }

@wps_er_deinit_finish = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WPS ER: Finish deinit from timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_er_deinit(%struct.wps_er* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.wps_er*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %8 = icmp eq %struct.wps_er* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %38

10:                                               ; preds = %3
  %11 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %12 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @http_server_deinit(i32 %13)
  %15 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %16 = call i32 @wps_er_ap_remove_all(%struct.wps_er* %15)
  %17 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %18 = call i32 @wps_er_ssdp_deinit(%struct.wps_er* %17)
  %19 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %20 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %19, i32 0, i32 3
  %21 = call i64 @dl_list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 5
  %25 = load i32, i32* @wps_er_deinit_finish, align 4
  %26 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %27 = call i32 @eloop_register_timeout(i32 %24, i32 0, i32 %25, %struct.wps_er* %26, i32* null)
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %31 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load void (i8*)*, void (i8*)** %5, align 8
  %33 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %34 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %33, i32 0, i32 1
  store void (i8*)* %32, void (i8*)** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %37 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @http_server_deinit(i32) #1

declare dso_local i32 @wps_er_ap_remove_all(%struct.wps_er*) #1

declare dso_local i32 @wps_er_ssdp_deinit(%struct.wps_er*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wps_er*, i32*) #1

declare dso_local i64 @dl_list_empty(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
