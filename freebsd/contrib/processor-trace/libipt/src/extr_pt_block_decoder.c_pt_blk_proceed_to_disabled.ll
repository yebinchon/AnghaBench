; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_to_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_to_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.pt_block = type { i32 }
%struct.pt_insn = type { i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_event = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_insn_changes_cr3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_event*)* @pt_blk_proceed_to_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_to_disabled(%struct.pt_block_decoder* %0, %struct.pt_block* %1, %struct.pt_insn* %2, %struct.pt_insn_ext* %3, %struct.pt_event* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_block_decoder*, align 8
  %8 = alloca %struct.pt_block*, align 8
  %9 = alloca %struct.pt_insn*, align 8
  %10 = alloca %struct.pt_insn_ext*, align 8
  %11 = alloca %struct.pt_event*, align 8
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %7, align 8
  store %struct.pt_block* %1, %struct.pt_block** %8, align 8
  store %struct.pt_insn* %2, %struct.pt_insn** %9, align 8
  store %struct.pt_insn_ext* %3, %struct.pt_insn_ext** %10, align 8
  store %struct.pt_event* %4, %struct.pt_event** %11, align 8
  %12 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %13 = icmp ne %struct.pt_block_decoder* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %16 = icmp ne %struct.pt_block* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %19 = icmp ne %struct.pt_event* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %14, %5
  %21 = load i32, i32* @pte_internal, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %69

23:                                               ; preds = %17
  %24 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %25 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %30 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %39 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %47 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %48 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %49 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %50 = call i32 @pt_blk_proceed_skl014(%struct.pt_block_decoder* %46, %struct.pt_block* %47, %struct.pt_insn* %48, %struct.pt_insn_ext* %49)
  store i32 %50, i32* %6, align 4
  br label %69

51:                                               ; preds = %37, %28
  %52 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %53 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %54 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %55 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %56 = load i32, i32* @pt_insn_changes_cr3, align 4
  %57 = call i32 @pt_blk_proceed_to_insn(%struct.pt_block_decoder* %52, %struct.pt_block* %53, %struct.pt_insn* %54, %struct.pt_insn_ext* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %69

58:                                               ; preds = %23
  %59 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %60 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %61 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %62 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %63 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %64 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder* %59, %struct.pt_block* %60, %struct.pt_insn* %61, %struct.pt_insn_ext* %62, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %58, %51, %45, %20
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @pt_blk_proceed_skl014(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_blk_proceed_to_insn(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, i32) #1

declare dso_local i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
