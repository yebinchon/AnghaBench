; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_tnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_tnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_tnt = type { i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_packet_tnt*, i64)* @pt_pkt_read_tnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_pkt_read_tnt(%struct.pt_packet_tnt* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_packet_tnt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt_packet_tnt* %0, %struct.pt_packet_tnt** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pt_packet_tnt*, %struct.pt_packet_tnt** %4, align 8
  %8 = icmp ne %struct.pt_packet_tnt* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @pt_pkt_tnt_bit_size(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @pte_bad_packet, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %12
  %21 = load i64, i64* %6, align 8
  %22 = shl i64 1, %21
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.pt_packet_tnt*, %struct.pt_packet_tnt** %4, align 8
  %28 = getelementptr inbounds %struct.pt_packet_tnt, %struct.pt_packet_tnt* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.pt_packet_tnt*, %struct.pt_packet_tnt** %4, align 8
  %31 = getelementptr inbounds %struct.pt_packet_tnt, %struct.pt_packet_tnt* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %20, %17, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @pt_pkt_tnt_bit_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
