; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_renameColumnExprCb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_renameColumnExprCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__*, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@TK_TRIGGER = common dso_local global i64 0, align 8
@TK_COLUMN = common dso_local global i64 0, align 8
@WRC_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_14__*)* @renameColumnExprCb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renameColumnExprCb(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TK_TRIGGER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %15
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = bitcast %struct.TYPE_14__* %38 to i8*
  %40 = call i32 @renameTokenFind(%struct.TYPE_15__* %36, %struct.TYPE_13__* %37, i8* %39)
  br label %73

41:                                               ; preds = %23, %15, %2
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TK_COLUMN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = bitcast %struct.TYPE_14__* %69 to i8*
  %71 = call i32 @renameTokenFind(%struct.TYPE_15__* %67, %struct.TYPE_13__* %68, i8* %70)
  br label %72

72:                                               ; preds = %64, %55, %47, %41
  br label %73

73:                                               ; preds = %72, %33
  %74 = load i32, i32* @WRC_Continue, align 4
  ret i32 %74
}

declare dso_local i32 @renameTokenFind(%struct.TYPE_15__*, %struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
