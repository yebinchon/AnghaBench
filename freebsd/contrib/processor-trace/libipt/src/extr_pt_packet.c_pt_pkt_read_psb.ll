; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_psb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_config = type { i32* }

@pte_internal = common dso_local global i32 0, align 4
@ptps_psb = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opcs_psb = common dso_local global i32 0, align 4
@pt_psb_repeat_count = common dso_local global i32 0, align 4
@pt_psb_hi = common dso_local global i64 0, align 8
@pte_bad_packet = common dso_local global i32 0, align 4
@pt_psb_lo = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_psb(i32* %0, %struct.pt_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pt_config*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.pt_config* %1, %struct.pt_config** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %11 = icmp ne %struct.pt_config* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %9
  %16 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %17 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @ptps_psb, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = icmp ult i32* %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @pte_eos, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %15
  %28 = load i32, i32* @pt_opcs_psb, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %57, %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @pt_psb_repeat_count, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  %39 = load i32, i32* %37, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @pt_psb_hi, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @pte_bad_packet, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %62

46:                                               ; preds = %36
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %4, align 8
  %49 = load i32, i32* %47, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @pt_psb_lo, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @pte_bad_packet, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %62

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %32

60:                                               ; preds = %32
  %61 = load i32, i32* @ptps_psb, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %53, %43, %24, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
