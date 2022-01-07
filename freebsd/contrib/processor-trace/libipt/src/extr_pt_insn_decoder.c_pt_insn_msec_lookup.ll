; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_msec_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_msec_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32, %struct.pt_image*, %struct.pt_msec_cache }
%struct.pt_image = type { i32 }
%struct.pt_msec_cache = type { i32 }
%struct.pt_mapped_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, %struct.pt_mapped_section**)* @pt_insn_msec_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_msec_lookup(%struct.pt_insn_decoder* %0, %struct.pt_mapped_section** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn_decoder*, align 8
  %5 = alloca %struct.pt_mapped_section**, align 8
  %6 = alloca %struct.pt_msec_cache*, align 8
  %7 = alloca %struct.pt_image*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %4, align 8
  store %struct.pt_mapped_section** %1, %struct.pt_mapped_section*** %5, align 8
  %10 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %11 = icmp ne %struct.pt_insn_decoder* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %5, align 8
  %14 = icmp ne %struct.pt_mapped_section** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %12
  %19 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %20 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %19, i32 0, i32 3
  store %struct.pt_msec_cache* %20, %struct.pt_msec_cache** %6, align 8
  %21 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %21, i32 0, i32 2
  %23 = load %struct.pt_image*, %struct.pt_image** %22, align 8
  store %struct.pt_image* %23, %struct.pt_image** %7, align 8
  %24 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %25 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %6, align 8
  %28 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %5, align 8
  %29 = load %struct.pt_image*, %struct.pt_image** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pt_msec_cache_read(%struct.pt_msec_cache* %27, %struct.pt_mapped_section** %28, %struct.pt_image* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %18
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @pte_nomap, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %34
  %42 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %6, align 8
  %43 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %5, align 8
  %44 = load %struct.pt_image*, %struct.pt_image** %7, align 8
  %45 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %46 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %45, i32 0, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @pt_msec_cache_fill(%struct.pt_msec_cache* %42, %struct.pt_mapped_section** %43, %struct.pt_image* %44, i32* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %18
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %41, %39, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @pt_msec_cache_read(%struct.pt_msec_cache*, %struct.pt_mapped_section**, %struct.pt_image*, i32) #1

declare dso_local i32 @pt_msec_cache_fill(%struct.pt_msec_cache*, %struct.pt_mapped_section**, %struct.pt_image*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
