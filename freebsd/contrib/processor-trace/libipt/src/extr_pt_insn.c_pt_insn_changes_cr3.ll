; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_changes_cr3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_changes_cr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn = type { i32 }
%struct.pt_insn_ext = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_changes_cr3(%struct.pt_insn* %0, %struct.pt_insn_ext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn*, align 8
  %5 = alloca %struct.pt_insn_ext*, align 8
  store %struct.pt_insn* %0, %struct.pt_insn** %4, align 8
  store %struct.pt_insn_ext* %1, %struct.pt_insn_ext** %5, align 8
  %6 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %7 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %5, align 8
  %8 = icmp ne %struct.pt_insn_ext* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

10:                                               ; preds = %2
  %11 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %5, align 8
  %12 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %14 [
    i32 128, label %15
  ]

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %16

15:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %14, %9
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
