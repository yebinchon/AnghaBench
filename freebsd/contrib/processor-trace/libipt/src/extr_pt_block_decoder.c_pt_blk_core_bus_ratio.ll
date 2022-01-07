; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_core_bus_ratio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_core_bus_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_blk_core_bus_ratio(%struct.pt_block_decoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca i32*, align 8
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %7 = icmp ne %struct.pt_block_decoder* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @pte_invalid, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %8
  %15 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %16 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %15, i32 0, i32 0
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @pt_qry_core_bus_ratio(i32* %16, i32* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @pt_qry_core_bus_ratio(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
