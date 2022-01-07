; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_triggerStepAllocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_triggerStepAllocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32 }

@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_12__*, i32, %struct.TYPE_11__*, i8*, i8*)* @triggerStepAllocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @triggerStepAllocate(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_11__* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 16, %20
  %22 = add i64 %21, 1
  %23 = call %struct.TYPE_10__* @sqlite3DbMallocZero(i32* %17, i64 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %12, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %62

26:                                               ; preds = %5
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 1
  %29 = bitcast %struct.TYPE_10__* %28 to i8*
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @memcpy(i8* %30, i32 %33, i64 %36)
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @sqlite3Dequote(i8* %38)
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @triggerSpanDup(i32* %46, i8* %47, i8* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %26
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = call i32 @sqlite3RenameTokenMap(%struct.TYPE_12__* %55, i8* %58, %struct.TYPE_11__* %59)
  br label %61

61:                                               ; preds = %54, %26
  br label %62

62:                                               ; preds = %61, %5
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  ret %struct.TYPE_10__* %63
}

declare dso_local %struct.TYPE_10__* @sqlite3DbMallocZero(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @sqlite3Dequote(i8*) #1

declare dso_local i32 @triggerSpanDup(i32*, i8*, i8*) #1

declare dso_local i32 @sqlite3RenameTokenMap(%struct.TYPE_12__*, i8*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
