; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_decode_in_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_decode_in_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn = type { i64, i32, i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_mapped_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_mapped_section*)* @pt_blk_decode_in_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_decode_in_section(%struct.pt_insn* %0, %struct.pt_insn_ext* %1, %struct.pt_mapped_section* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_insn*, align 8
  %6 = alloca %struct.pt_insn_ext*, align 8
  %7 = alloca %struct.pt_mapped_section*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_insn* %0, %struct.pt_insn** %5, align 8
  store %struct.pt_insn_ext* %1, %struct.pt_insn_ext** %6, align 8
  store %struct.pt_mapped_section* %2, %struct.pt_mapped_section** %7, align 8
  %9 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %10 = icmp ne %struct.pt_insn* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %13 = icmp ne %struct.pt_insn_ext* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %38

17:                                               ; preds = %11
  %18 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %19 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %20 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %23 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pt_msec_read(%struct.pt_mapped_section* %18, i32 %21, i32 4, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %34 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %36 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %37 = call i32 @pt_ild_decode(%struct.pt_insn* %35, %struct.pt_insn_ext* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %28, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @pt_msec_read(%struct.pt_mapped_section*, i32, i32, i32) #1

declare dso_local i32 @pt_ild_decode(%struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
