; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_add_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_add_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32, %struct.pt_section** }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@num_iterations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_add_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_add_map(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iscache_fixture*, align 8
  %5 = alloca %struct.pt_section*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.iscache_fixture*
  store %struct.iscache_fixture* %11, %struct.iscache_fixture** %4, align 8
  %12 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %13 = icmp ne %struct.iscache_fixture* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %19 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %18, i32 0, i32 1
  %20 = load %struct.pt_section**, %struct.pt_section*** %19, align 8
  %21 = getelementptr inbounds %struct.pt_section*, %struct.pt_section** %20, i64 0
  %22 = load %struct.pt_section*, %struct.pt_section** %21, align 8
  store %struct.pt_section* %22, %struct.pt_section** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %54, %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @num_iterations, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 3
  store i32 %29, i32* %7, align 4
  %30 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %31 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %30, i32 0, i32 0
  %32 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pt_iscache_add(i32* %31, %struct.pt_section* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %58

39:                                               ; preds = %27
  %40 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %41 = call i32 @pt_section_map(%struct.pt_section* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %2, align 4
  br label %58

46:                                               ; preds = %39
  %47 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %48 = call i32 @pt_section_unmap(%struct.pt_section* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %23

57:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %51, %44, %37, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @pt_iscache_add(i32*, %struct.pt_section*, i32) #1

declare dso_local i32 @pt_section_map(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unmap(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
