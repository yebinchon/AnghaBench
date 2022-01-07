; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_svn_repos_fs_begin_txn_for_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_svn_repos_fs_begin_txn_for_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_begin_txn_for_update(i32** %0, %struct.TYPE_6__* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @svn_fs_begin_txn2(i32** %12, i32 %15, i32 %16, i32 0, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @svn_fs_change_txn_prop(i32* %29, i32 %30, %struct.TYPE_5__* %11, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %22, %5
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %35
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_begin_txn2(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_fs_change_txn_prop(i32*, i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
