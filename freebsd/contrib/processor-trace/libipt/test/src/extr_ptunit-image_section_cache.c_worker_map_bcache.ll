; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_map_bcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_map_bcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.pt_section** }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@num_iterations = common dso_local global i32 0, align 4
@num_sections = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_map_bcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_map_bcache(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iscache_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_section*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.iscache_fixture*
  store %struct.iscache_fixture* %10, %struct.iscache_fixture** %4, align 8
  %11 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %12 = icmp ne %struct.iscache_fixture* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %66, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @num_iterations, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %62, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @num_sections, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %28 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %27, i32 0, i32 0
  %29 = load %struct.pt_section**, %struct.pt_section*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pt_section*, %struct.pt_section** %29, i64 %31
  %33 = load %struct.pt_section*, %struct.pt_section** %32, align 8
  store %struct.pt_section* %33, %struct.pt_section** %8, align 8
  %34 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %35 = call i32 @pt_section_map(%struct.pt_section* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %70

40:                                               ; preds = %26
  %41 = load i32, i32* %5, align 4
  %42 = srem i32 %41, 13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %46 = call i32 @pt_section_request_bcache(%struct.pt_section* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %51 = call i32 @pt_section_unmap(%struct.pt_section* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %70

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %56 = call i32 @pt_section_unmap(%struct.pt_section* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %70

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %22

65:                                               ; preds = %22
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %17

69:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %59, %49, %38, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @pt_section_map(%struct.pt_section*) #1

declare dso_local i32 @pt_section_request_bcache(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unmap(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
