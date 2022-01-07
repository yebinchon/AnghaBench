; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_alloc_decoder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_alloc_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32 }
%struct.pt_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_insn_decoder* @pt_insn_alloc_decoder(%struct.pt_config* %0) #0 {
  %2 = alloca %struct.pt_insn_decoder*, align 8
  %3 = alloca %struct.pt_config*, align 8
  %4 = alloca %struct.pt_insn_decoder*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_config* %0, %struct.pt_config** %3, align 8
  %6 = call %struct.pt_insn_decoder* @malloc(i32 4)
  store %struct.pt_insn_decoder* %6, %struct.pt_insn_decoder** %4, align 8
  %7 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %8 = icmp ne %struct.pt_insn_decoder* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.pt_insn_decoder* null, %struct.pt_insn_decoder** %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %12 = load %struct.pt_config*, %struct.pt_config** %3, align 8
  %13 = call i32 @pt_insn_decoder_init(%struct.pt_insn_decoder* %11, %struct.pt_config* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %18 = call i32 @free(%struct.pt_insn_decoder* %17)
  store %struct.pt_insn_decoder* null, %struct.pt_insn_decoder** %2, align 8
  br label %21

19:                                               ; preds = %10
  %20 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  store %struct.pt_insn_decoder* %20, %struct.pt_insn_decoder** %2, align 8
  br label %21

21:                                               ; preds = %19, %16, %9
  %22 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %2, align 8
  ret %struct.pt_insn_decoder* %22
}

declare dso_local %struct.pt_insn_decoder* @malloc(i32) #1

declare dso_local i32 @pt_insn_decoder_init(%struct.pt_insn_decoder*, %struct.pt_config*) #1

declare dso_local i32 @free(%struct.pt_insn_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
