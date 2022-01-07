; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_sync_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_sync_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_sync_set(%struct.pt_insn_decoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn_decoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %8 = icmp ne %struct.pt_insn_decoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_invalid, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %14 = call i32 @pt_insn_reset(%struct.pt_insn_decoder* %13)
  %15 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %16 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %15, i32 0, i32 1
  %17 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pt_qry_sync_set(i32* %16, i32* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pt_insn_start(%struct.pt_insn_decoder* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %12, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @pt_insn_reset(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_qry_sync_set(i32*, i32*, i32) #1

declare dso_local i32 @pt_insn_start(%struct.pt_insn_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
