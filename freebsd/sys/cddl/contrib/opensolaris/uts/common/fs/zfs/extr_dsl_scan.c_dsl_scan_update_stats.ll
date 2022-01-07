; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_update_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @dsl_scan_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_update_stats(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %60, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %16
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %29, i64 %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %9, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %10, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = icmp eq %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %60

39:                                               ; preds = %24
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %7, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %39, %38
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %16

63:                                               ; preds = %16
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66, %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  br label %95

78:                                               ; preds = %66
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %7, align 8
  %81 = udiv i64 %79, %80
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = udiv i64 %84, %85
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %78, %69
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
