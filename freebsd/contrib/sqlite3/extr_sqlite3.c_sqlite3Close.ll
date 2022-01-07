; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3Close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 (i32, %struct.TYPE_12__*, i32, i32)* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 (i32, i32, %struct.TYPE_12__*, i32)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_TRACE_CLOSE = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"unable to close due to unfinalized statements or unfinished backups\00", align 1
@SQLITE_MAGIC_ZOMBIE = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @sqlite3Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3Close(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %7 = icmp ne %struct.TYPE_12__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %3, align 4
  br label %64

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call i32 @sqlite3SafetyCheckSickOrOk(%struct.TYPE_12__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %10
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sqlite3_mutex_enter(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SQLITE_TRACE_CLOSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = load i32 (i32, i32, %struct.TYPE_12__*, i32)*, i32 (i32, i32, %struct.TYPE_12__*, i32)** %29, align 8
  %31 = load i32, i32* @SQLITE_TRACE_CLOSE, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = call i32 %30(i32 %31, i32 %34, %struct.TYPE_12__* %35, i32 0)
  br label %37

37:                                               ; preds = %27, %16
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = call i32 @disconnectAllVtab(%struct.TYPE_12__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @sqlite3VtabRollback(%struct.TYPE_12__* %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = call i64 @connectionIsBusy(%struct.TYPE_12__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load i32, i32* @SQLITE_BUSY, align 4
  %51 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_12__* %49, i32 %50, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sqlite3_mutex_leave(i32 %54)
  %56 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %44, %37
  %58 = load i32, i32* @SQLITE_MAGIC_ZOMBIE, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = call i32 @sqlite3LeaveMutexAndCloseZombie(%struct.TYPE_12__* %61)
  %63 = load i32, i32* @SQLITE_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %48, %14, %8
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @sqlite3SafetyCheckSickOrOk(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @disconnectAllVtab(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3VtabRollback(%struct.TYPE_12__*) #1

declare dso_local i64 @connectionIsBusy(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @sqlite3LeaveMutexAndCloseZombie(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
