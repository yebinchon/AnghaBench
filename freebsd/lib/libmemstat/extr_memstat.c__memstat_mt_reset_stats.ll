; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat.c__memstat_mt_reset_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat.c__memstat_mt_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_memstat_mt_reset_stats(%struct.memory_type* %0, i32 %1) #0 {
  %3 = alloca %struct.memory_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.memory_type* %0, %struct.memory_type** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %7 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %6, i32 0, i32 16
  store i64 0, i64* %7, align 8
  %8 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %9 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %8, i32 0, i32 15
  store i64 0, i64* %9, align 8
  %10 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %11 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %10, i32 0, i32 14
  store i64 0, i64* %11, align 8
  %12 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %13 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %12, i32 0, i32 13
  store i64 0, i64* %13, align 8
  %14 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %15 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %14, i32 0, i32 12
  store i64 0, i64* %15, align 8
  %16 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %17 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %16, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %19 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %21 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %23 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %25 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %27 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %29 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %31 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %33 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %35 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %83, %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %42 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %49 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %56 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %63 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %70 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.memory_type*, %struct.memory_type** %3, align 8
  %77 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %40
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %36

86:                                               ; preds = %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
