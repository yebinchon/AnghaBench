; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_add_file_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_add_file_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32 }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@num_iterations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_add_file_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_add_file_map(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iscache_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.iscache_fixture*
  store %struct.iscache_fixture* %14, %struct.iscache_fixture** %4, align 8
  %15 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %16 = icmp ne %struct.iscache_fixture* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %82, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @num_iterations, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 7
  %28 = icmp slt i32 %27, 4
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 4096, i32 8192
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = srem i32 %31, 5
  %33 = icmp slt i32 %32, 3
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 4096, i32 8192
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = srem i32 %36, 3
  %38 = icmp slt i32 %37, 2
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 4096, i32 8192
  store i32 %40, i32* %9, align 4
  %41 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %42 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %41, i32 0, i32 0
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pt_iscache_add_file(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %25
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %2, align 4
  br label %86

51:                                               ; preds = %25
  %52 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %53 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %52, i32 0, i32 0
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @pt_iscache_lookup(i32* %53, %struct.pt_section** %6, i32* %10, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %2, align 4
  br label %86

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @pte_internal, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %86

67:                                               ; preds = %60
  %68 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %69 = call i32 @pt_section_map(%struct.pt_section* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %2, align 4
  br label %86

74:                                               ; preds = %67
  %75 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %76 = call i32 @pt_section_unmap(%struct.pt_section* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %21

85:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %79, %72, %64, %58, %49, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pt_iscache_add_file(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @pt_iscache_lookup(i32*, %struct.pt_section**, i32*, i32) #1

declare dso_local i32 @pt_section_map(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unmap(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
