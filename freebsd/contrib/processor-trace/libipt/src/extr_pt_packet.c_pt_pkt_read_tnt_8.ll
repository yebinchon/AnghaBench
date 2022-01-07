; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_tnt_8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_tnt_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_tnt = type { i32 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_opm_tnt_8_shr = common dso_local global i32 0, align 4
@ptps_tnt_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_tnt_8(%struct.pt_packet_tnt* %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_tnt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_packet_tnt* %0, %struct.pt_packet_tnt** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %9 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.pt_packet_tnt*, %struct.pt_packet_tnt** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @pt_opm_tnt_8_shr, align 4
  %21 = ashr i32 %19, %20
  %22 = call i32 @pt_pkt_read_tnt(%struct.pt_packet_tnt* %16, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @ptps_tnt_8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %25, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @pt_pkt_read_tnt(%struct.pt_packet_tnt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
