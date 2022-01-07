; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_sta_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_sta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_sta = type { %struct.wps_er_sta*, i32, %struct.wps_er_sta*, %struct.wps_er_sta*, %struct.wps_er_sta*, %struct.wps_er_sta*, %struct.wps_er_sta*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WPS_EV_ER_ENROLLEE_REMOVE = common dso_local global i32 0, align 4
@wps_er_sta_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_sta*)* @wps_er_sta_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_sta_free(%struct.wps_er_sta* %0) #0 {
  %2 = alloca %struct.wps_er_sta*, align 8
  store %struct.wps_er_sta* %0, %struct.wps_er_sta** %2, align 8
  %3 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %4 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %3, i32 0, i32 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %11 = load i32, i32* @WPS_EV_ER_ENROLLEE_REMOVE, align 4
  %12 = call i32 @wps_er_sta_event(i32 %9, %struct.wps_er_sta* %10, i32 %11)
  %13 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %14 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %19 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @wps_deinit(i64 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %24 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %23, i32 0, i32 6
  %25 = load %struct.wps_er_sta*, %struct.wps_er_sta** %24, align 8
  %26 = call i32 @os_free(%struct.wps_er_sta* %25)
  %27 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %28 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %27, i32 0, i32 5
  %29 = load %struct.wps_er_sta*, %struct.wps_er_sta** %28, align 8
  %30 = call i32 @os_free(%struct.wps_er_sta* %29)
  %31 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %32 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %31, i32 0, i32 4
  %33 = load %struct.wps_er_sta*, %struct.wps_er_sta** %32, align 8
  %34 = call i32 @os_free(%struct.wps_er_sta* %33)
  %35 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %36 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %35, i32 0, i32 3
  %37 = load %struct.wps_er_sta*, %struct.wps_er_sta** %36, align 8
  %38 = call i32 @os_free(%struct.wps_er_sta* %37)
  %39 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %40 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %39, i32 0, i32 2
  %41 = load %struct.wps_er_sta*, %struct.wps_er_sta** %40, align 8
  %42 = call i32 @os_free(%struct.wps_er_sta* %41)
  %43 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %44 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @http_client_free(i32 %45)
  %47 = load i32, i32* @wps_er_sta_timeout, align 4
  %48 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %49 = call i32 @eloop_cancel_timeout(i32 %47, %struct.wps_er_sta* %48, i32* null)
  %50 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %51 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %50, i32 0, i32 0
  %52 = load %struct.wps_er_sta*, %struct.wps_er_sta** %51, align 8
  %53 = call i32 @os_free(%struct.wps_er_sta* %52)
  %54 = load %struct.wps_er_sta*, %struct.wps_er_sta** %2, align 8
  %55 = call i32 @os_free(%struct.wps_er_sta* %54)
  ret void
}

declare dso_local i32 @wps_er_sta_event(i32, %struct.wps_er_sta*, i32) #1

declare dso_local i32 @wps_deinit(i64) #1

declare dso_local i32 @os_free(%struct.wps_er_sta*) #1

declare dso_local i32 @http_client_free(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wps_er_sta*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
