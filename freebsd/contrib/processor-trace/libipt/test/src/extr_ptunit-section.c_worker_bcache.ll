; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_worker_bcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_worker_bcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32 }
%struct.pt_block_cache = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@num_work = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_bcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_bcache(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.section_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_block_cache*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.section_fixture*
  store %struct.section_fixture* %9, %struct.section_fixture** %4, align 8
  %10 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %11 = icmp ne %struct.section_fixture* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %17 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pt_section_get(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %83

24:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @num_work, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %31 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pt_section_map(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %77

37:                                               ; preds = %29
  %38 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %39 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pt_section_request_bcache(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %72

45:                                               ; preds = %37
  %46 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %47 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.pt_block_cache* @pt_section_bcache(i32 %48)
  store %struct.pt_block_cache* %49, %struct.pt_block_cache** %7, align 8
  %50 = load %struct.pt_block_cache*, %struct.pt_block_cache** %7, align 8
  %51 = icmp ne %struct.pt_block_cache* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @pte_nomem, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %72

55:                                               ; preds = %45
  %56 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %57 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pt_section_unmap(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %77

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %25

67:                                               ; preds = %25
  %68 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %69 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pt_section_put(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %83

72:                                               ; preds = %52, %44
  %73 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %74 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pt_section_unmap(i32 %75)
  br label %77

77:                                               ; preds = %72, %62, %36
  %78 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %79 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pt_section_put(i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %67, %22, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @pt_section_get(i32) #1

declare dso_local i32 @pt_section_map(i32) #1

declare dso_local i32 @pt_section_request_bcache(i32) #1

declare dso_local %struct.pt_block_cache* @pt_section_bcache(i32) #1

declare dso_local i32 @pt_section_unmap(i32) #1

declare dso_local i32 @pt_section_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
