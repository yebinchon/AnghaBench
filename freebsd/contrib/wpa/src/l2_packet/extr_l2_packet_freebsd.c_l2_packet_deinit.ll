; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2_packet_deinit(%struct.l2_packet_data* %0) #0 {
  %2 = alloca %struct.l2_packet_data*, align 8
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %2, align 8
  %3 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %4 = icmp ne %struct.l2_packet_data* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %7 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %12 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @pcap_get_selectable_fd(i64 %13)
  %15 = call i32 @eloop_unregister_read_sock(i32 %14)
  %16 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %17 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pcap_close(i64 %18)
  br label %20

20:                                               ; preds = %10, %5
  %21 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %22 = call i32 @os_free(%struct.l2_packet_data* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @pcap_get_selectable_fd(i64) #1

declare dso_local i32 @pcap_close(i64) #1

declare dso_local i32 @os_free(%struct.l2_packet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
