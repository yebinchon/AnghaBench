; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_no_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_no_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32 }
%struct.pt_block = type { i32 }
%struct.pt_mapped_section = type { i32 }
%struct.pt_block_cache = type { i32 }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*)* @pt_blk_proceed_no_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_no_event(%struct.pt_block_decoder* %0, %struct.pt_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_block*, align 8
  %6 = alloca %struct.pt_mapped_section*, align 8
  %7 = alloca %struct.pt_block_cache*, align 8
  %8 = alloca %struct.pt_section*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_block* %1, %struct.pt_block** %5, align 8
  %10 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %11 = icmp ne %struct.pt_block_decoder* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %14 = icmp ne %struct.pt_block* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %12
  %19 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %20 = call i32 @pt_blk_msec_lookup(%struct.pt_block_decoder* %19, %struct.pt_mapped_section** %6)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @pte_nomap, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %23
  %31 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %32 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %33 = call i32 @pt_blk_proceed_no_event_uncached(%struct.pt_block_decoder* %31, %struct.pt_block* %32)
  store i32 %33, i32* %3, align 4
  br label %72

34:                                               ; preds = %18
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %37 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %42 = call i32 @pt_blk_block_is_empty(%struct.pt_block* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %72

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %48 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %34
  %50 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %6, align 8
  %51 = call %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section* %50)
  store %struct.pt_section* %51, %struct.pt_section** %8, align 8
  %52 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %53 = icmp ne %struct.pt_section* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @pte_internal, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %72

57:                                               ; preds = %49
  %58 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %59 = call %struct.pt_block_cache* @pt_section_bcache(%struct.pt_section* %58)
  store %struct.pt_block_cache* %59, %struct.pt_block_cache** %7, align 8
  %60 = load %struct.pt_block_cache*, %struct.pt_block_cache** %7, align 8
  %61 = icmp ne %struct.pt_block_cache* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %64 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %65 = call i32 @pt_blk_proceed_no_event_uncached(%struct.pt_block_decoder* %63, %struct.pt_block* %64)
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %57
  %67 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %68 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %69 = load %struct.pt_block_cache*, %struct.pt_block_cache** %7, align 8
  %70 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %6, align 8
  %71 = call i32 @pt_blk_proceed_no_event_cached(%struct.pt_block_decoder* %67, %struct.pt_block* %68, %struct.pt_block_cache* %69, %struct.pt_mapped_section* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %62, %54, %44, %30, %28, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pt_blk_msec_lookup(%struct.pt_block_decoder*, %struct.pt_mapped_section**) #1

declare dso_local i32 @pt_blk_proceed_no_event_uncached(%struct.pt_block_decoder*, %struct.pt_block*) #1

declare dso_local i32 @pt_blk_block_is_empty(%struct.pt_block*) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section*) #1

declare dso_local %struct.pt_block_cache* @pt_section_bcache(%struct.pt_section*) #1

declare dso_local i32 @pt_blk_proceed_no_event_cached(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_block_cache*, %struct.pt_mapped_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
