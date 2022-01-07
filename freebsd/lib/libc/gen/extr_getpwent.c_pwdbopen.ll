; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_pwdbopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_pwdbopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_10__*)* }
%struct.TYPE_9__ = type { i64, i32 }

@_PATH_SMP_DB = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@DB_HASH = common dso_local global i32 0, align 4
@_PATH_MP_DB = common dso_local global i32 0, align 4
@_PWD_VERSION_KEY = common dso_local global i64 0, align 8
@pwdb_versions = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unsupported password database version %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*)* @pwdbopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @pwdbopen(i32* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = call i64 (...) @geteuid()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @_PATH_SMP_DB, align 4
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = load i32, i32* @DB_HASH, align 4
  %14 = call %struct.TYPE_10__* @dbopen(i32 %11, i32 %12, i32 0, i32 %13, i32* null)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @_PATH_MP_DB, align 4
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = load i32, i32* @DB_HASH, align 4
  %20 = call %struct.TYPE_10__* @dbopen(i32 %17, i32 %18, i32 0, i32 %19, i32* null)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %4, align 8
  br label %21

21:                                               ; preds = %16, %10
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %69

25:                                               ; preds = %21
  %26 = load i64, i64* @_PWD_VERSION_KEY, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* @_PWD_VERSION_KEY, align 8
  %29 = call i32 @strlen(i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)** %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = call i32 %33(%struct.TYPE_10__* %34, %struct.TYPE_9__* %5, %struct.TYPE_9__* %6, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32*, i32** %3, align 8
  store i32 %43, i32* %44, align 4
  br label %47

45:                                               ; preds = %25
  %46 = load i32*, i32** %3, align 8
  store i32 3, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @pwdb_versions, align 4
  %55 = call i32 @nitems(i32 %54)
  %56 = icmp sge i32 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51, %47
  %58 = load i32, i32* @LOG_CRIT, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @syslog(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = call i32 %64(%struct.TYPE_10__* %65)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %67

67:                                               ; preds = %57, %51
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %2, align 8
  br label %69

69:                                               ; preds = %67, %24
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %70
}

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.TYPE_10__* @dbopen(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
