; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@fts_compar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @fts_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @fts_sort(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 40
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call %struct.TYPE_9__** @reallocf(%struct.TYPE_9__** %22, i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store %struct.TYPE_9__** %29, %struct.TYPE_9__*** %31, align 8
  %32 = icmp eq %struct.TYPE_9__** %29, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %15
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %4, align 8
  br label %86

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %40, align 8
  store %struct.TYPE_9__** %41, %struct.TYPE_9__*** %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %9, align 8
  br label %43

43:                                               ; preds = %50, %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %48, i32 1
  store %struct.TYPE_9__** %49, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %48, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %9, align 8
  br label %43

54:                                               ; preds = %43
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @fts_compar, align 4
  %60 = call i32 @qsort(%struct.TYPE_9__** %57, i32 %58, i32 8, i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %62, align 8
  store %struct.TYPE_9__** %63, %struct.TYPE_9__*** %8, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %6, align 8
  br label %65

65:                                               ; preds = %77, %54
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %70, i64 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %73, i64 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %76, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %78, i32 1
  store %struct.TYPE_9__** %79, %struct.TYPE_9__*** %8, align 8
  br label %65

80:                                               ; preds = %65
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %81, i64 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %4, align 8
  br label %86

86:                                               ; preds = %80, %33
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %87
}

declare dso_local %struct.TYPE_9__** @reallocf(%struct.TYPE_9__**, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_9__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
