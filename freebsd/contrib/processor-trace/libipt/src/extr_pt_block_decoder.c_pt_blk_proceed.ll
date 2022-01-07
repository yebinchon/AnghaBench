; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32 }
%struct.pt_block = type { i32 }

@pts_eos = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pte_no_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*)* @pt_blk_proceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed(%struct.pt_block_decoder* %0, %struct.pt_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_block*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_block* %1, %struct.pt_block** %5, align 8
  %7 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %8 = call i32 @pt_blk_fetch_event(%struct.pt_block_decoder* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %11
  %17 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %18 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %19 = call i32 @pt_blk_proceed_event(%struct.pt_block_decoder* %17, %struct.pt_block* %18)
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %27 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @pts_eos, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @pte_eos, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %25
  %36 = load i32, i32* @pte_no_enable, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %20
  %39 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %40 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %41 = call i32 @pt_blk_proceed_no_event(%struct.pt_block_decoder* %39, %struct.pt_block* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %48 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %49 = call i32 @pt_blk_proceed_trailing_event(%struct.pt_block_decoder* %47, %struct.pt_block* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %44, %35, %32, %16, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @pt_blk_fetch_event(%struct.pt_block_decoder*) #1

declare dso_local i32 @pt_blk_proceed_event(%struct.pt_block_decoder*, %struct.pt_block*) #1

declare dso_local i32 @pt_blk_proceed_no_event(%struct.pt_block_decoder*, %struct.pt_block*) #1

declare dso_local i32 @pt_blk_proceed_trailing_event(%struct.pt_block_decoder*, %struct.pt_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
