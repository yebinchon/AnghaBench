; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_commit_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @svn_fs_commit_txn(i8** %0, i32* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i8**, i8*** %5, align 8
  store i8* null, i8** %15, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to %struct.TYPE_13__* (i8**, i32*, %struct.TYPE_12__*, i32*)**
  %22 = load %struct.TYPE_13__* (i8**, i32*, %struct.TYPE_12__*, i32*)*, %struct.TYPE_13__* (i8**, i32*, %struct.TYPE_12__*, i32*)** %21, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call %struct.TYPE_13__* %22(i8** %23, i32* %24, %struct.TYPE_12__* %25, i32* %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %9, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = call i32 @SVN_ERR(%struct.TYPE_13__* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_13__* %30
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
