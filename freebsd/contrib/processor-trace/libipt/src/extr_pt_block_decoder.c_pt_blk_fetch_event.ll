; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_fetch_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_fetch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*)* @pt_blk_fetch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_fetch_event(%struct.pt_block_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_block_decoder*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %3, align 8
  %5 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %6 = icmp ne %struct.pt_block_decoder* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @pte_internal, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %40

16:                                               ; preds = %10
  %17 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @pts_event_pending, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %40

24:                                               ; preds = %16
  %25 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %25, i32 0, i32 3
  %27 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %27, i32 0, i32 2
  %29 = call i32 @pt_qry_event(i32* %26, i32* %28, i32 4)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %24
  %35 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %36 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %39 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %32, %23, %15, %7
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @pt_qry_event(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
