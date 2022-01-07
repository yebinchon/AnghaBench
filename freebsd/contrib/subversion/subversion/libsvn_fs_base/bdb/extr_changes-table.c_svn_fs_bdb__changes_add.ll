; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_changes-table.c_svn_fs_bdb__changes_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_changes-table.c_svn_fs_bdb__changes_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32, i32*, i32*, i32)* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"changes\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"creating change\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__changes_add(%struct.TYPE_10__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @svn_fs_base__unparse_change_skel(i32** %14, i32* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @svn_fs_base__str_to_dbt(i32* %12, i8* %22)
  %24 = load i32*, i32** %14, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @svn_fs_base__skel_to_dbt(i32* %13, i32* %24, i32* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_12__*, i32, i32*, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32*, i32*, i32)** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %35(%struct.TYPE_12__* %38, i32 %41, i32* %12, i32* %13, i32 0)
  %43 = call i32* @BDB_WRAP(%struct.TYPE_10__* %29, i32 %30, i32 %42)
  ret i32* %43
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__unparse_change_skel(i32**, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

declare dso_local i32 @svn_fs_base__skel_to_dbt(i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
