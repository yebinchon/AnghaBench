; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_tnt_64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_tnt_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_tnt = type { i32 }
%struct.pt_config = type { i32* }

@pte_internal = common dso_local global i32 0, align 4
@ptps_tnt_64 = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opcs_tnt_64 = common dso_local global i32 0, align 4
@pt_pl_tnt_64_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_tnt_64(%struct.pt_packet_tnt* %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_tnt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt_packet_tnt* %0, %struct.pt_packet_tnt** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %14 = icmp ne %struct.pt_config* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %46

18:                                               ; preds = %12
  %19 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %20 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ptps_tnt_64, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = icmp ult i32* %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @pte_eos, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %46

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @pt_opcs_tnt_64, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* @pt_pl_tnt_64_size, align 4
  %36 = call i32 @pt_pkt_read_value(i32* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.pt_packet_tnt*, %struct.pt_packet_tnt** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pt_pkt_read_tnt(%struct.pt_packet_tnt* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @ptps_tnt_64, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %42, %27, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @pt_pkt_read_value(i32*, i32) #1

declare dso_local i32 @pt_pkt_read_tnt(%struct.pt_packet_tnt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
