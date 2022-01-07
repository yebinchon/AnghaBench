; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_toxrange_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_toxrange_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@dtrace_toxranges = common dso_local global i32 0, align 4
@dtrace_toxranges_max = common dso_local global i32 0, align 4
@dtrace_toxrange = common dso_local global %struct.TYPE_7__* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @dtrace_toxrange_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_toxrange_add(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @dtrace_toxranges, align 4
  %9 = load i32, i32* @dtrace_toxranges_max, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %2
  %12 = load i32, i32* @dtrace_toxranges_max, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 16
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dtrace_toxrange, align 8
  %20 = icmp eq %struct.TYPE_7__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* @dtrace_toxranges_max, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  store i32 1, i32* @dtrace_toxranges_max, align 4
  br label %30

27:                                               ; preds = %11
  %28 = load i32, i32* @dtrace_toxranges_max, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* @dtrace_toxranges_max, align 4
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* @dtrace_toxranges_max, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 16
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @KM_SLEEP, align 4
  %37 = call %struct.TYPE_7__* @kmem_zalloc(i32 %35, i32 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dtrace_toxrange, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dtrace_toxrange, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @bcopy(%struct.TYPE_7__* %45, %struct.TYPE_7__* %46, i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dtrace_toxrange, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @kmem_free(%struct.TYPE_7__* %49, i32 %50)
  br label %52

52:                                               ; preds = %40, %30
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** @dtrace_toxrange, align 8
  br label %54

54:                                               ; preds = %52, %2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dtrace_toxrange, align 8
  %56 = load i32, i32* @dtrace_toxranges, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dtrace_toxrange, align 8
  %65 = load i32, i32* @dtrace_toxranges, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i64, i64* %3, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dtrace_toxrange, align 8
  %75 = load i32, i32* @dtrace_toxranges, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i64 %73, i64* %78, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dtrace_toxrange, align 8
  %81 = load i32, i32* @dtrace_toxranges, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i64 %79, i64* %84, align 8
  %85 = load i32, i32* @dtrace_toxranges, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @dtrace_toxranges, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_7__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
