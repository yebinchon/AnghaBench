; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_msec_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_msec_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, i32 }
%struct.pt_mapped_section = type { i32 }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_mapped_section**)* @pt_blk_msec_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_msec_fill(%struct.pt_block_decoder* %0, %struct.pt_mapped_section** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_mapped_section**, align 8
  %6 = alloca %struct.pt_mapped_section*, align 8
  %7 = alloca %struct.pt_section*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_mapped_section** %1, %struct.pt_mapped_section*** %5, align 8
  %10 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %11 = icmp ne %struct.pt_block_decoder* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %5, align 8
  %14 = icmp ne %struct.pt_mapped_section** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %12
  %19 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %20 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %19, i32 0, i32 3
  %21 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %25 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %24, i32 0, i32 1
  %26 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %27 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pt_msec_cache_fill(i32* %20, %struct.pt_mapped_section** %6, i32 %23, i32* %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %18
  %35 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %6, align 8
  %36 = call %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section* %35)
  store %struct.pt_section* %36, %struct.pt_section** %7, align 8
  %37 = load %struct.pt_section*, %struct.pt_section** %7, align 8
  %38 = icmp ne %struct.pt_section* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @pte_internal, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %34
  %43 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %6, align 8
  %44 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %5, align 8
  store %struct.pt_mapped_section* %43, %struct.pt_mapped_section** %44, align 8
  %45 = load %struct.pt_section*, %struct.pt_section** %7, align 8
  %46 = call i32 @pt_section_request_bcache(%struct.pt_section* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %49, %39, %32, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @pt_msec_cache_fill(i32*, %struct.pt_mapped_section**, i32, i32*, i32) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_section_request_bcache(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
