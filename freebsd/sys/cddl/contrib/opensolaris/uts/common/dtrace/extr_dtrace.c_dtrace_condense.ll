; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_condense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_condense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { void (i8*, i32, i8*)*, i32 (i32, i32, i32)* }

@dtrace_nullop = common dso_local global i64 0, align 8
@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_nprobes = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global %struct.TYPE_10__** null, align 8
@dtrace_bymod = common dso_local global i32 0, align 4
@dtrace_byfunc = common dso_local global i32 0, align 4
@dtrace_byname = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_condense(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %10, align 8
  %12 = load i64, i64* @dtrace_nullop, align 8
  %13 = inttoptr i64 %12 to void (i8*, i32, i8*)*
  %14 = icmp ne void (i8*, i32, i8*)* %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = call i32 @mutex_enter(i32* @dtrace_provider_lock)
  %18 = call i32 @mutex_enter(i32* @dtrace_lock)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %104, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @dtrace_nprobes, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %107

23:                                               ; preds = %19
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @dtrace_probes, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %24, i64 %26
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %5, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %104

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = icmp ne %struct.TYPE_9__* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %104

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %104

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @dtrace_probes, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %45, i64 %47
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %48, align 8
  %49 = load i32, i32* @dtrace_bymod, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = call i32 @dtrace_hash_remove(i32 %49, %struct.TYPE_10__* %50)
  %52 = load i32, i32* @dtrace_byfunc, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = call i32 @dtrace_hash_remove(i32 %52, %struct.TYPE_10__* %53)
  %55 = load i32, i32* @dtrace_byname, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i32 @dtrace_hash_remove(i32 %55, %struct.TYPE_10__* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %61(i32 %64, i32 %66, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @strlen(%struct.TYPE_10__* %76)
  %78 = add nsw i32 %77, 1
  %79 = call i32 @kmem_free(%struct.TYPE_10__* %73, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i32 @strlen(%struct.TYPE_10__* %85)
  %87 = add nsw i32 %86, 1
  %88 = call i32 @kmem_free(%struct.TYPE_10__* %82, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = call i32 @strlen(%struct.TYPE_10__* %94)
  %96 = add nsw i32 %95, 1
  %97 = call i32 @kmem_free(%struct.TYPE_10__* %91, i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = call i32 @kmem_free(%struct.TYPE_10__* %98, i32 48)
  %100 = load i32, i32* @dtrace_arena, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @free_unr(i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %44, %43, %37, %30
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %19

107:                                              ; preds = %19
  %108 = call i32 @mutex_exit(i32* @dtrace_lock)
  %109 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dtrace_hash_remove(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @strlen(%struct.TYPE_10__*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
