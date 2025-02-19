; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_mwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_mwait = type { i8*, i8* }
%struct.pt_config = type { i32* }

@pte_internal = common dso_local global i32 0, align 4
@ptps_mwait = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opcs_mwait = common dso_local global i32 0, align 4
@pt_pl_mwait_hints_size = common dso_local global i32 0, align 4
@pt_pl_mwait_ext_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_mwait(%struct.pt_packet_mwait* %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_mwait*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  store %struct.pt_packet_mwait* %0, %struct.pt_packet_mwait** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %8 = load %struct.pt_packet_mwait*, %struct.pt_packet_mwait** %5, align 8
  %9 = icmp ne %struct.pt_packet_mwait* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %15 = icmp ne %struct.pt_config* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %10, %3
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %13
  %20 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %21 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @ptps_mwait, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = icmp ult i32* %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @pte_eos, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %54

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @pt_opcs_mwait, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @pt_pl_mwait_hints_size, align 4
  %37 = call i64 @pt_pkt_read_value(i32* %35, i32 %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.pt_packet_mwait*, %struct.pt_packet_mwait** %5, align 8
  %40 = getelementptr inbounds %struct.pt_packet_mwait, %struct.pt_packet_mwait* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @pt_opcs_mwait, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* @pt_pl_mwait_hints_size, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* @pt_pl_mwait_ext_size, align 4
  %49 = call i64 @pt_pkt_read_value(i32* %47, i32 %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.pt_packet_mwait*, %struct.pt_packet_mwait** %5, align 8
  %52 = getelementptr inbounds %struct.pt_packet_mwait, %struct.pt_packet_mwait* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @ptps_mwait, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %31, %28, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @pt_pkt_read_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
