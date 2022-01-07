; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__ensure_revision_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__ensure_revision_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid revision number '%ld'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"No such revision %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__ensure_revision_exists(i64 %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @SVN_IS_VALID_REVNUM(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %17 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %5, align 8
  %19 = call i32* @svn_error_createf(i32 %16, i32* null, i32 %17, i64 %18)
  store i32* %19, i32** %4, align 8
  br label %47

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %4, align 8
  br label %47

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @svn_fs_x__read_current(i64* %30, %struct.TYPE_6__* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %4, align 8
  br label %47

42:                                               ; preds = %28
  %43 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* %5, align 8
  %46 = call i32* @svn_error_createf(i32 %43, i32* null, i32 %44, i64 %45)
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %42, %40, %26, %15
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__read_current(i64*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
