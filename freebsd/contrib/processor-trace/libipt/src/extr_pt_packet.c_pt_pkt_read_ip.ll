; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_ip = type { i32, i64 }
%struct.pt_config = type { i32* }

@pte_internal = common dso_local global i32 0, align 4
@pt_opm_ipc_shr = common dso_local global i32 0, align 4
@pt_opm_ipc_shr_mask = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_ip(%struct.pt_packet_ip* %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_ip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_packet_ip* %0, %struct.pt_packet_ip** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %11 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %5, align 8
  %12 = icmp ne %struct.pt_packet_ip* %11, null
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
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* %23, align 4
  %26 = load i32, i32* @pt_opm_ipc_shr, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @pt_opm_ipc_shr_mask, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %9, align 4
  store i64 0, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @pt_pkt_ip_size(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %22
  %37 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %38 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = icmp ult i32* %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @pte_eos, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %64

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @pt_pkt_read_value(i32* %52, i32 %53)
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %5, align 8
  %58 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %5, align 8
  %61 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %55, %45, %34, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @pt_pkt_ip_size(i32) #1

declare dso_local i64 @pt_pkt_read_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
