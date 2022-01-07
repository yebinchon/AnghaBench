; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_mode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_config = type { i32* }

@pte_internal = common dso_local global i32 0, align 4
@ptps_mode = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opcs_mode = common dso_local global i64 0, align 8
@pt_mom_leaf = common dso_local global i32 0, align 4
@pt_mom_bits = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_mode(%struct.pt_packet_mode* %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_mode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_packet_mode* %0, %struct.pt_packet_mode** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %11 = load %struct.pt_packet_mode*, %struct.pt_packet_mode** %5, align 8
  %12 = icmp ne %struct.pt_packet_mode* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %18 = icmp ne %struct.pt_config* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %16
  %23 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %24 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ptps_mode, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = icmp ult i32* %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @pte_eos, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %22
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* @pt_opcs_mode, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @pt_mom_leaf, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @pt_mom_bits, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.pt_packet_mode*, %struct.pt_packet_mode** %5, align 8
  %47 = getelementptr inbounds %struct.pt_packet_mode, %struct.pt_packet_mode* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  switch i32 %48, label %49 [
    i32 129, label %52
    i32 128, label %58
  ]

49:                                               ; preds = %34
  %50 = load i32, i32* @pte_bad_packet, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %64

52:                                               ; preds = %34
  %53 = load %struct.pt_packet_mode*, %struct.pt_packet_mode** %5, align 8
  %54 = getelementptr inbounds %struct.pt_packet_mode, %struct.pt_packet_mode* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @pt_pkt_read_mode_exec(i32* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %34
  %59 = load %struct.pt_packet_mode*, %struct.pt_packet_mode** %5, align 8
  %60 = getelementptr inbounds %struct.pt_packet_mode, %struct.pt_packet_mode* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @pt_pkt_read_mode_tsx(i32* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %52, %49, %31, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @pt_pkt_read_mode_exec(i32*, i32) #1

declare dso_local i32 @pt_pkt_read_mode_tsx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
