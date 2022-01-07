; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_trail.c_commit_trail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_trail.c_commit_trail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32, i32, i32)* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"committing Berkeley DB transaction\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"checkpointing after Berkeley DB transaction\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@DB_INCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*)* @commit_trail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_trail(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load i32, i32* @FALSE, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = call i32 %27(%struct.TYPE_15__* %30, i32 0)
  %32 = call i32 @BDB_WRAP(%struct.TYPE_12__* %21, i32 %22, i32 %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %17, %1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = call i32 %41(%struct.TYPE_14__* %46, i32 1024, i32 5, i32 0)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32* @svn_fs_bdb__wrap_db(%struct.TYPE_12__* %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32* %53, i32** %2, align 8
  br label %56

54:                                               ; preds = %34
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %2, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32*, i32** %2, align 8
  ret i32* %57
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_fs_bdb__wrap_db(%struct.TYPE_12__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
