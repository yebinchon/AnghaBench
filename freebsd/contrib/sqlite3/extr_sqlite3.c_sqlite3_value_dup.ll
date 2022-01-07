; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3_value_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3_value_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }

@MEMCELLSIZE = common dso_local global i32 0, align 4
@MEM_Dyn = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@MEM_Blob = common dso_local global i32 0, align 4
@MEM_Static = common dso_local global i32 0, align 4
@MEM_Ephem = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @sqlite3_value_dup(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = icmp eq %struct.TYPE_10__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %60

8:                                                ; preds = %1
  %9 = call %struct.TYPE_10__* @sqlite3_malloc(i32 16)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %60

13:                                               ; preds = %8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32 @memset(%struct.TYPE_10__* %14, i32 0, i32 16)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = load i32, i32* @MEMCELLSIZE, align 4
  %19 = call i32 @memcpy(%struct.TYPE_10__* %16, %struct.TYPE_10__* %17, i32 %18)
  %20 = load i32, i32* @MEM_Dyn, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MEM_Str, align 4
  %32 = load i32, i32* @MEM_Blob, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %13
  %37 = load i32, i32* @MEM_Static, align 4
  %38 = load i32, i32* @MEM_Dyn, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @MEM_Ephem, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i64 @sqlite3VdbeMemMakeWriteable(%struct.TYPE_10__* %50)
  %52 = load i64, i64* @SQLITE_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = call i32 @sqlite3ValueFree(%struct.TYPE_10__* %55)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %57

57:                                               ; preds = %54, %36
  br label %58

58:                                               ; preds = %57, %13
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %2, align 8
  br label %60

60:                                               ; preds = %58, %12, %7
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %61
}

declare dso_local %struct.TYPE_10__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @sqlite3VdbeMemMakeWriteable(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3ValueFree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
