; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_sync_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_sync_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_blk_sync_forward(%struct.pt_block_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_block_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %3, align 8
  %6 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %7 = icmp ne %struct.pt_block_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_invalid, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %13 = call i32 @pt_blk_sync_reset(%struct.pt_block_decoder* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %11
  %19 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %20 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %19, i32 0, i32 1
  %21 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %22 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %21, i32 0, i32 0
  %23 = call i32 @pt_qry_sync_forward(i32* %20, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pt_blk_start(%struct.pt_block_decoder* %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %16, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @pt_blk_sync_reset(%struct.pt_block_decoder*) #1

declare dso_local i32 @pt_qry_sync_forward(i32*, i32*) #1

declare dso_local i32 @pt_blk_start(%struct.pt_block_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
