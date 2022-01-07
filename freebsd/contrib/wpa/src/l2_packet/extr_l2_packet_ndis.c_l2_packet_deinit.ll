; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i64, i32, i32, i32, i32, i32, i32, i32** }

@l2_ndisuio_global = common dso_local global %struct.l2_packet_data* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"L2(NDISUIO): restore filtering ethertype to %04x\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@IOCTL_CANCEL_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2_packet_deinit(%struct.l2_packet_data* %0) #0 {
  %2 = alloca %struct.l2_packet_data*, align 8
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %2, align 8
  %3 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %4 = icmp eq %struct.l2_packet_data* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %51

6:                                                ; preds = %1
  %7 = load %struct.l2_packet_data*, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  %8 = icmp ne %struct.l2_packet_data* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = load %struct.l2_packet_data*, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  %11 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.l2_packet_data*, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  %15 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %14, i32 0, i32 7
  %16 = load i32**, i32*** %15, align 8
  %17 = load %struct.l2_packet_data*, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  %18 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  store i32* null, i32** %20, align 8
  %21 = load %struct.l2_packet_data*, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  %22 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %9
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load %struct.l2_packet_data*, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  %28 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.l2_packet_data*, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  %32 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @l2_ndisuio_set_ether_type(i32 %33)
  br label %51

35:                                               ; preds = %9
  %36 = load %struct.l2_packet_data*, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  %37 = call i32 @os_free(%struct.l2_packet_data* %36)
  store %struct.l2_packet_data* null, %struct.l2_packet_data** @l2_ndisuio_global, align 8
  br label %38

38:                                               ; preds = %35, %6
  %39 = call i32 (...) @driver_ndis_get_ndisuio_handle()
  %40 = call i32 @CancelIo(i32 %39)
  %41 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %42 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @eloop_unregister_event(i32 %43, i32 4)
  %45 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %46 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CloseHandle(i32 %47)
  %49 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %50 = call i32 @os_free(%struct.l2_packet_data* %49)
  br label %51

51:                                               ; preds = %38, %25, %5
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @l2_ndisuio_set_ether_type(i32) #1

declare dso_local i32 @os_free(%struct.l2_packet_data*) #1

declare dso_local i32 @CancelIo(i32) #1

declare dso_local i32 @driver_ndis_get_ndisuio_handle(...) #1

declare dso_local i32 @eloop_unregister_event(i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
