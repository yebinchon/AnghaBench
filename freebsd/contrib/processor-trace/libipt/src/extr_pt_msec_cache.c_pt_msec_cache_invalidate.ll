; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_msec_cache.c_pt_msec_cache_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_msec_cache.c_pt_msec_cache_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_msec_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_msec_cache_invalidate(%struct.pt_msec_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_msec_cache*, align 8
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_msec_cache* %0, %struct.pt_msec_cache** %3, align 8
  %6 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %3, align 8
  %7 = icmp ne %struct.pt_msec_cache* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %3, align 8
  %13 = getelementptr inbounds %struct.pt_msec_cache, %struct.pt_msec_cache* %12, i32 0, i32 0
  %14 = call %struct.pt_section* @pt_msec_section(%struct.TYPE_2__* %13)
  store %struct.pt_section* %14, %struct.pt_section** %4, align 8
  %15 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %16 = icmp ne %struct.pt_section* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %31

18:                                               ; preds = %11
  %19 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %20 = call i32 @pt_section_unmap(%struct.pt_section* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %18
  %26 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %3, align 8
  %27 = getelementptr inbounds %struct.pt_msec_cache, %struct.pt_msec_cache* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %30 = call i32 @pt_section_put(%struct.pt_section* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %23, %17, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.pt_section* @pt_msec_section(%struct.TYPE_2__*) #1

declare dso_local i32 @pt_section_unmap(%struct.pt_section*) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
