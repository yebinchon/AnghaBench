; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__allow_locked_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__allow_locked_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@svn_depth_infinity = common dso_local global i32 0, align 4
@get_locks_callback = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__allow_locked_operation(i8* %0, i64 %1, %struct.TYPE_5__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @svn_depth_infinity, align 4
  %18 = load i32, i32* @get_locks_callback, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @svn_fs_bdb__locks_get(i32 %15, i8* %16, i32 %17, i32 %18, i32 %21, %struct.TYPE_5__* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  br label %43

26:                                               ; preds = %4
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @svn_fs_base__get_lock_helper(i32** %9, i8* %27, %struct.TYPE_5__* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @verify_lock(i32 %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %44
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__locks_get(i32, i8*, i32, i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @svn_fs_base__get_lock_helper(i32**, i8*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @verify_lock(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
