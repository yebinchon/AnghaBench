; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_lock.c_get_lock_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_lock.c_get_lock_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_LOCK = common dso_local global i64 0, align 8
@SVN_ERR_FS_LOCK_EXPIRED = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i32**, i8*, i32, i32*)* @get_lock_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @get_lock_helper(i32* %0, i32** %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = call %struct.TYPE_7__* @get_lock(i32** %12, i32* %14, i8* %15, i32 %16, i32 %17, i32* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SVN_ERR_FS_NO_SUCH_LOCK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SVN_ERR_FS_LOCK_EXPIRED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %22
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %36 = call i32 @svn_error_clear(%struct.TYPE_7__* %35)
  %37 = load i32**, i32*** %8, align 8
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %6, align 8
  br label %46

39:                                               ; preds = %28, %5
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = call i32 @SVN_ERR(%struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %12, align 8
  %44 = load i32**, i32*** %8, align 8
  store i32* %43, i32** %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %6, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %47
}

declare dso_local %struct.TYPE_7__* @get_lock(i32**, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
