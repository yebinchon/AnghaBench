; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_pt_ild_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_pt_ild_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn = type { i32, i32, i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_ild = type { i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_ild_decode(%struct.pt_insn* %0, %struct.pt_insn_ext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn*, align 8
  %5 = alloca %struct.pt_insn_ext*, align 8
  %6 = alloca %struct.pt_ild, align 4
  %7 = alloca i32, align 4
  store %struct.pt_insn* %0, %struct.pt_insn** %4, align 8
  store %struct.pt_insn_ext* %1, %struct.pt_insn_ext** %5, align 8
  %8 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %9 = icmp ne %struct.pt_insn* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %5, align 8
  %12 = icmp ne %struct.pt_insn_ext* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %10
  %17 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %18 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %22 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %26 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = call i32 @pt_instruction_length_decode(%struct.pt_ild* %6)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %41

34:                                               ; preds = %16
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %37 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pt_insn*, %struct.pt_insn** %4, align 8
  %39 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %5, align 8
  %40 = call i32 @pt_instruction_decode(%struct.pt_insn* %38, %struct.pt_insn_ext* %39, %struct.pt_ild* %6)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %32, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @pt_instruction_length_decode(%struct.pt_ild*) #1

declare dso_local i32 @pt_instruction_decode(%struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_ild*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
