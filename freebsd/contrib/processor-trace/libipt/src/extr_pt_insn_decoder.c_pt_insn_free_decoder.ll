; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_free_decoder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_free_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_insn_free_decoder(%struct.pt_insn_decoder* %0) #0 {
  %2 = alloca %struct.pt_insn_decoder*, align 8
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %2, align 8
  %3 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %2, align 8
  %4 = icmp ne %struct.pt_insn_decoder* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  %7 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %2, align 8
  %8 = call i32 @pt_insn_decoder_fini(%struct.pt_insn_decoder* %7)
  %9 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %2, align 8
  %10 = call i32 @free(%struct.pt_insn_decoder* %9)
  br label %11

11:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @pt_insn_decoder_fini(%struct.pt_insn_decoder*) #1

declare dso_local i32 @free(%struct.pt_insn_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
