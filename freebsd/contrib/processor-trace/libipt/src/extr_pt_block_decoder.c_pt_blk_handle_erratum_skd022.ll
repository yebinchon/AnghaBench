; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_handle_erratum_skd022.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_handle_erratum_skd022.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32 }
%struct.pt_event = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_insn = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_event*)* @pt_blk_handle_erratum_skd022 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_handle_erratum_skd022(%struct.pt_block_decoder* %0, %struct.pt_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_event*, align 8
  %6 = alloca %struct.pt_insn_ext, align 4
  %7 = alloca %struct.pt_insn, align 4
  %8 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_event* %1, %struct.pt_event** %5, align 8
  %9 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %10 = icmp ne %struct.pt_block_decoder* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %13 = icmp ne %struct.pt_event* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %54

17:                                               ; preds = %11
  %18 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %19 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %23 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %29 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %32 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %31, i32 0, i32 0
  %33 = call i32 @pt_insn_decode(%struct.pt_insn* %7, %struct.pt_insn_ext* %6, i32 %30, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %54

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %40 [
    i32 129, label %41
    i32 128, label %41
  ]

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %37, %37
  %42 = load i32, i32* @ptev_disabled, align 4
  %43 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %44 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %46 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %51 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %41, %40, %36, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @pt_insn_decode(%struct.pt_insn*, %struct.pt_insn_ext*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
