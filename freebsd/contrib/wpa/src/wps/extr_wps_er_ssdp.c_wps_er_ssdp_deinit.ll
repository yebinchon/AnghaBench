; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er_ssdp.c_wps_er_ssdp_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er_ssdp.c_wps_er_ssdp_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i64, i64 }

@EVENT_TYPE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_er_ssdp_deinit(%struct.wps_er* %0) #0 {
  %2 = alloca %struct.wps_er*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %2, align 8
  %3 = load %struct.wps_er*, %struct.wps_er** %2, align 8
  %4 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.wps_er*, %struct.wps_er** %2, align 8
  %9 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @EVENT_TYPE_READ, align 4
  %12 = call i32 @eloop_unregister_sock(i64 %10, i32 %11)
  %13 = load %struct.wps_er*, %struct.wps_er** %2, align 8
  %14 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @close(i64 %15)
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.wps_er*, %struct.wps_er** %2, align 8
  %19 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.wps_er*, %struct.wps_er** %2, align 8
  %24 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @EVENT_TYPE_READ, align 4
  %27 = call i32 @eloop_unregister_sock(i64 %25, i32 %26)
  %28 = load %struct.wps_er*, %struct.wps_er** %2, align 8
  %29 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @close(i64 %30)
  br label %32

32:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @eloop_unregister_sock(i64, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
