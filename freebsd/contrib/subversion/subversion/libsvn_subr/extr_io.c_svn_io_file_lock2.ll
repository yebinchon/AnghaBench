; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_file_lock2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_file_lock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_FLOCK_SHARED = common dso_local global i32 0, align 4
@APR_FLOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_file_lock2(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @APR_FLOCK_SHARED, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @APR_FLOCK_EXCLUSIVE, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i32, i32* @APR_READ, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @APR_FLOCK_EXCLUSIVE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @APR_WRITE, align 4
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @APR_OS_DEFAULT, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @svn_io_file_open(i32** %10, i8* %27, i32 %28, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @svn_io_lock_open_file(i32* %33, i32 %34, i32 %35, i32* %36)
  ret i32* %37
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_io_lock_open_file(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
