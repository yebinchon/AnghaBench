; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_set_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_set_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { %struct.pt_image*, %struct.pt_image }
%struct.pt_image = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_set_image(%struct.pt_insn_decoder* %0, %struct.pt_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn_decoder*, align 8
  %5 = alloca %struct.pt_image*, align 8
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %4, align 8
  store %struct.pt_image* %1, %struct.pt_image** %5, align 8
  %6 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %7 = icmp ne %struct.pt_insn_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @pte_invalid, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %13 = icmp ne %struct.pt_image* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %16 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %15, i32 0, i32 1
  store %struct.pt_image* %16, %struct.pt_image** %5, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %19 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %20 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %19, i32 0, i32 0
  store %struct.pt_image* %18, %struct.pt_image** %20, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
