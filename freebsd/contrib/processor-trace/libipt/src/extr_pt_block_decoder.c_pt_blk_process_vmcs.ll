; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_process_vmcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_process_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pt_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_event*)* @pt_blk_process_vmcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_process_vmcs(%struct.pt_block_decoder* %0, %struct.pt_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_event* %1, %struct.pt_event** %5, align 8
  %8 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %9 = icmp ne %struct.pt_block_decoder* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %12 = icmp ne %struct.pt_event* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %10
  %17 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %18 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %23 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %16
  %29 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %30 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %29, i32 0, i32 2
  %31 = call i32 @pt_msec_cache_invalidate(i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %39 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %16
  %42 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %43 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %34, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pt_msec_cache_invalidate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
