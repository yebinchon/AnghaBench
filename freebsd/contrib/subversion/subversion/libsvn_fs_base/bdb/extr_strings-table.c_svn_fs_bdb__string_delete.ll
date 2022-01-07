; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32, i32, i32)* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"No such string '%s'\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"deleting string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__string_delete(%struct.TYPE_10__* %0, i8* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @svn_fs_base__str_to_dbt(i32* %12, i8* %29)
  %31 = call i32 %22(%struct.TYPE_12__* %25, i32 %28, i32 %30, i32 0)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @DB_NOTFOUND, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load i32, i32* @SVN_ERR_FS_NO_SUCH_STRING, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @svn_error_createf(i32 %36, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32* %38, i32** %5, align 8
  br label %44

39:                                               ; preds = %4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %11, align 4
  %43 = call i32* @BDB_WRAP(%struct.TYPE_10__* %40, i32 %41, i32 %42)
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32*, i32** %5, align 8
  ret i32* %45
}

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i8*, i8*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
