; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_privsep.c_l2_packet_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_privsep.c_l2_packet_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i64, %struct.l2_packet_data* }

@PRIVSEP_CMD_L2_UNREGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2_packet_deinit(%struct.l2_packet_data* %0) #0 {
  %2 = alloca %struct.l2_packet_data*, align 8
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %2, align 8
  %3 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %4 = icmp eq %struct.l2_packet_data* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %40

6:                                                ; preds = %1
  %7 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %8 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %13 = load i32, i32* @PRIVSEP_CMD_L2_UNREGISTER, align 4
  %14 = call i32 @wpa_priv_cmd(%struct.l2_packet_data* %12, i32 %13, i32* null, i32 0)
  %15 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %16 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @eloop_unregister_read_sock(i64 %17)
  %19 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %20 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @close(i64 %21)
  br label %23

23:                                               ; preds = %11, %6
  %24 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %25 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %24, i32 0, i32 1
  %26 = load %struct.l2_packet_data*, %struct.l2_packet_data** %25, align 8
  %27 = icmp ne %struct.l2_packet_data* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %30 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %29, i32 0, i32 1
  %31 = load %struct.l2_packet_data*, %struct.l2_packet_data** %30, align 8
  %32 = call i32 @unlink(%struct.l2_packet_data* %31)
  %33 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %34 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %33, i32 0, i32 1
  %35 = load %struct.l2_packet_data*, %struct.l2_packet_data** %34, align 8
  %36 = call i32 @os_free(%struct.l2_packet_data* %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %39 = call i32 @os_free(%struct.l2_packet_data* %38)
  br label %40

40:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32 @wpa_priv_cmd(%struct.l2_packet_data*, i32, i32*, i32) #1

declare dso_local i32 @eloop_unregister_read_sock(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @unlink(%struct.l2_packet_data*) #1

declare dso_local i32 @os_free(%struct.l2_packet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
