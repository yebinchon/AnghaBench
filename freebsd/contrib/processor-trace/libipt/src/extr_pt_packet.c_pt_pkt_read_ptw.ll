; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_ptw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_ptw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_ptw = type { i32, i32, i32 }
%struct.pt_config = type { i32* }

@pte_internal = common dso_local global i32 0, align 4
@pt_opm_ptw_pb_shr = common dso_local global i32 0, align 4
@pt_opm_ptw_pb_shr_mask = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opm_ptw_ip = common dso_local global i32 0, align 4
@pt_opcs_ptw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_ptw(%struct.pt_packet_ptw* %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_ptw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_packet_ptw* %0, %struct.pt_packet_ptw** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %11 = load %struct.pt_packet_ptw*, %struct.pt_packet_ptw** %5, align 8
  %12 = icmp ne %struct.pt_packet_ptw* %11, null
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
  br label %71

22:                                               ; preds = %16
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @pt_opm_ptw_pb_shr, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @pt_opm_ptw_pb_shr_mask, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @pt_ptw_size(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %71

39:                                               ; preds = %22
  %40 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %41 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = icmp ult i32* %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @pte_eos, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %71

51:                                               ; preds = %39
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @pt_pkt_read_value(i32* %52, i32 %53)
  %55 = load %struct.pt_packet_ptw*, %struct.pt_packet_ptw** %5, align 8
  %56 = getelementptr inbounds %struct.pt_packet_ptw, %struct.pt_packet_ptw* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.pt_packet_ptw*, %struct.pt_packet_ptw** %5, align 8
  %59 = getelementptr inbounds %struct.pt_packet_ptw, %struct.pt_packet_ptw* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @pt_opm_ptw_ip, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.pt_packet_ptw*, %struct.pt_packet_ptw** %5, align 8
  %67 = getelementptr inbounds %struct.pt_packet_ptw, %struct.pt_packet_ptw* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @pt_opcs_ptw, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %51, %48, %37, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @pt_ptw_size(i32) #1

declare dso_local i32 @pt_pkt_read_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
