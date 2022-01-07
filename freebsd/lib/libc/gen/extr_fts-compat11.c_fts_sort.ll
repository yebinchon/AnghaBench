; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat11.c_fts_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat11.c_fts_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@fts_compar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, %struct.TYPE_9__*, i64)* @fts_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @fts_sort(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 40
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call %struct.TYPE_9__** @reallocf(%struct.TYPE_9__** %22, i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store %struct.TYPE_9__** %28, %struct.TYPE_9__*** %30, align 8
  %31 = icmp eq %struct.TYPE_9__** %28, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %4, align 8
  br label %85

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %39, align 8
  store %struct.TYPE_9__** %40, %struct.TYPE_9__*** %8, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %9, align 8
  br label %42

42:                                               ; preds = %49, %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %47, i32 1
  store %struct.TYPE_9__** %48, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %47, align 8
  br label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %9, align 8
  br label %42

53:                                               ; preds = %42
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* @fts_compar, align 4
  %59 = call i32 @qsort(%struct.TYPE_9__** %56, i64 %57, i32 8, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %61, align 8
  store %struct.TYPE_9__** %62, %struct.TYPE_9__*** %8, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %6, align 8
  br label %64

64:                                               ; preds = %76, %53
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %69, i64 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %75, align 8
  br label %76

76:                                               ; preds = %68
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %77, i32 1
  store %struct.TYPE_9__** %78, %struct.TYPE_9__*** %8, align 8
  br label %64

79:                                               ; preds = %64
  %80 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %80, i64 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %4, align 8
  br label %85

85:                                               ; preds = %79, %32
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %86
}

declare dso_local %struct.TYPE_9__** @reallocf(%struct.TYPE_9__**, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_9__**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
