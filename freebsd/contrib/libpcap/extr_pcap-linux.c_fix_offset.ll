; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_fix_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_fix_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }

@SLL_HDR_LEN = common dso_local global i32 0, align 4
@SKF_AD_OFF = common dso_local global i32 0, align 4
@SKF_AD_PKTTYPE = common dso_local global i32 0, align 4
@SKF_AD_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn*)* @fix_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_offset(%struct.bpf_insn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_insn*, align 8
  store %struct.bpf_insn* %0, %struct.bpf_insn** %3, align 8
  %4 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %5 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SLL_HDR_LEN, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @SLL_HDR_LEN, align 4
  %11 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %12 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @SKF_AD_OFF, align 4
  %22 = load i32, i32* @SKF_AD_PKTTYPE, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %46

26:                                               ; preds = %15
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 14
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @SKF_AD_OFF, align 4
  %33 = load i32, i32* @SKF_AD_PROTOCOL, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %36 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %39 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %48

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %20
  br label %47

47:                                               ; preds = %46, %9
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
