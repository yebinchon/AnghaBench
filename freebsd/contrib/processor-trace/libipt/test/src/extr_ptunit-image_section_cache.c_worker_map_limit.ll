; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_map_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_map_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32, i32* }

@__const.worker_map_limit.limits = private unnamed_addr constant [4 x i32] [i32 32768, i32 12288, i32 73728, i32 0], align 16
@pte_internal = common dso_local global i32 0, align 4
@num_iterations = common dso_local global i32 0, align 4
@num_sections = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_map_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_map_limit(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iscache_fixture*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.worker_map_limit.limits to i8*), i64 16, i1 false)
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.iscache_fixture*
  store %struct.iscache_fixture* %13, %struct.iscache_fixture** %4, align 8
  %14 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %15 = icmp ne %struct.iscache_fixture* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %87

19:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %83, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @num_iterations, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %86

24:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @num_sections, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %31 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pt_section_map(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %87

42:                                               ; preds = %29
  %43 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %44 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pt_section_unmap(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %87

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %25

59:                                               ; preds = %25
  %60 = load i32, i32* %7, align 4
  %61 = srem i32 %60, 23
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %83

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = urem i64 %71, 4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %75 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @pt_iscache_set_limit(i32* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %87

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %20

86:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %80, %53, %40, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_section_map(i32) #2

declare dso_local i32 @pt_section_unmap(i32) #2

declare dso_local i32 @pt_iscache_set_limit(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
