; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_process_exec_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_process_exec_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i64, i64, i64 }
%struct.pt_event = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptem_unknown = common dso_local global i64 0, align 8
@pte_bad_status_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_event*)* @pt_blk_process_exec_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_process_exec_mode(%struct.pt_block_decoder* %0, %struct.pt_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_event*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_event* %1, %struct.pt_event** %5, align 8
  %7 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %8 = icmp ne %struct.pt_block_decoder* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %11 = icmp ne %struct.pt_event* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %9
  %16 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %17 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %22 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %15
  %26 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %27 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %32 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ptem_unknown, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %38 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @pte_bad_status_update, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %36, %30, %25, %15
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %50 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %52 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %43, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
