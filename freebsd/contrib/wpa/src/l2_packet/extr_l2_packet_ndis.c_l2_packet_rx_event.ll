; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_rx_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.l2_packet_data** }
%struct.l2_packet_data = type { i32, i32, i32 }

@l2_ndisuio_global = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"L2(NDISUIO): GetOverlappedResult failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @l2_packet_rx_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_packet_rx_event(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2_packet_data*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.l2_packet_data*
  store %struct.l2_packet_data* %7, %struct.l2_packet_data** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.l2_packet_data**, %struct.l2_packet_data*** %12, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @l2_ndisuio_global, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.l2_packet_data*, %struct.l2_packet_data** %13, i64 %18
  %20 = load %struct.l2_packet_data*, %struct.l2_packet_data** %19, align 8
  store %struct.l2_packet_data* %20, %struct.l2_packet_data** %5, align 8
  br label %21

21:                                               ; preds = %10, %2
  %22 = load %struct.l2_packet_data*, %struct.l2_packet_data** %5, align 8
  %23 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ResetEvent(i32 %24)
  %26 = call i32 (...) @driver_ndis_get_ndisuio_handle()
  %27 = load %struct.l2_packet_data*, %struct.l2_packet_data** %5, align 8
  %28 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %27, i32 0, i32 1
  %29 = load %struct.l2_packet_data*, %struct.l2_packet_data** %5, align 8
  %30 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %29, i32 0, i32 0
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @GetOverlappedResult(i32 %26, i32* %28, i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i64 (...) @GetLastError()
  %37 = trunc i64 %36 to i32
  %38 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %42

39:                                               ; preds = %21
  %40 = load %struct.l2_packet_data*, %struct.l2_packet_data** %5, align 8
  %41 = call i32 @l2_packet_callback(%struct.l2_packet_data* %40)
  br label %42

42:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @ResetEvent(i32) #1

declare dso_local i32 @GetOverlappedResult(i32, i32*, i32*, i32) #1

declare dso_local i32 @driver_ndis_get_ndisuio_handle(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @l2_packet_callback(%struct.l2_packet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
