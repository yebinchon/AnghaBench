; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_rev-table.c_svn_fs_bdb__open_revisions_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_rev-table.c_svn_fs_bdb__open_revisions_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8*, i32, i32, i32, i32)* }

@DB_CREATE = common dso_local global i32 0, align 4
@DB_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"revisions\00", align 1
@DB_RECNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_fs_bdb__open_revisions_table(%struct.TYPE_5__** %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @DB_CREATE, align 4
  %13 = load i32, i32* @DB_EXCL, align 4
  %14 = or i32 %12, %13
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %14, %11 ], [ 0, %15 ]
  store i32 %17, i32* %7, align 4
  %18 = call i32 (...) @svn_fs_bdb__check_version()
  %19 = call i32 @BDB_ERR(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @db_create(%struct.TYPE_5__** %8, i32* %20, i32 0)
  %22 = call i32 @BDB_ERR(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = call i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_5__* %26, i32* null)
  %28 = load i32, i32* @DB_RECNO, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 %25(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 %28, i32 %29, i32 438)
  %31 = call i32 @BDB_ERR(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %33, align 8
  ret i32 0
}

declare dso_local i32 @BDB_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__check_version(...) #1

declare dso_local i32 @db_create(%struct.TYPE_5__**, i32*, i32) #1

declare dso_local i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
