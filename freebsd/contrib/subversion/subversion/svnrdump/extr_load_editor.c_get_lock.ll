; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_get_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_get_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"Target server does not support atomic revision property edits; consider upgrading it to 1.7.\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"svnrdump: \00", align 1
@SVNRDUMP_PROP_LOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@lock_retry_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32, i8*, i32*)* @get_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_lock(i32** %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @svn_ra_has_capability(i32* %13, i32* %11, i32 %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %22 = call i32 @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* @svn_error_create(i32 %21, i32* null, i32 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @svn_handle_warning2(i32 %24, i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_error_clear(i32* %27)
  br label %29

29:                                               ; preds = %20, %5
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @SVNRDUMP_PROP_LOCK, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* @lock_retry_func, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @svn_ra__get_operational_lock(i32** %30, i32* null, i32* %31, i32 %32, i32 %33, i32 10, i32 %34, i32* null, i32 %35, i8* %36, i32* %37)
  ret i32* %38
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_has_capability(i32*, i32*, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_handle_warning2(i32, i32*, i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_ra__get_operational_lock(i32**, i32*, i32*, i32, i32, i32, i32, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
