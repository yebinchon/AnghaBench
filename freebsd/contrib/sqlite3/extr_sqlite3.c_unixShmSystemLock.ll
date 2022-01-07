; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_unixShmSystemLock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_unixShmSystemLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }
%struct.flock = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@SQLITE_SHM_NLOCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32)* @unixShmSystemLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixShmSystemLock(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.flock, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @sqlite3_mutex_held(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %22, %4
  %29 = phi i1 [ true, %4 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = call i64 (...) @unixMutexHeld()
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi i1 [ true, %28 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @F_RDLCK, align 4
  %48 = icmp ne i32 %46, %47
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i1 [ true, %39 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SQLITE_SHM_NLOCK, align 4
  %58 = icmp sle i32 %56, %57
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ false, %49 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @SEEK_SET, align 4
  %71 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = call i32 @osSetPosixAdvisoryLock(i64 %78, %struct.flock* %10, %struct.TYPE_8__* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = load i32, i32* @SQLITE_OK, align 4
  br label %87

85:                                               ; preds = %67
  %86 = load i32, i32* @SQLITE_BUSY, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %87, %59
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @unixMutexHeld(...) #1

declare dso_local i32 @osSetPosixAdvisoryLock(i64, %struct.flock*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
