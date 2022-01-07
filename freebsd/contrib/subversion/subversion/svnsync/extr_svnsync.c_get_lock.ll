; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_get_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_get_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"Target server does not support atomic revision property edits; consider upgrading it to 1.7 or using an external locking program\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"svnsync: \00", align 1
@SVNSYNC_PROP_LOCK = common dso_local global i32 0, align 4
@lock_retry_func = common dso_local global i32 0, align 4
@check_cancel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Stole lock previously held by '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__**, i32*, i32, i32*)* @get_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_lock(%struct.TYPE_5__** %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @svn_ra_has_capability(i32* %13, i32* %11, i32 %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %22 = call i32 @_(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* @svn_error_create(i32 %21, i32* null, i32 %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @svn_handle_warning2(i32 %24, i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @svn_error_clear(i32* %27)
  br label %29

29:                                               ; preds = %20, %4
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @SVNSYNC_PROP_LOCK, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @lock_retry_func, align 4
  %35 = load i32, i32* @check_cancel, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @svn_ra__get_operational_lock(%struct.TYPE_5__** %30, %struct.TYPE_5__** %12, i32* %31, i32 %32, i32 %33, i32 10, i32 %34, i32* null, i32 %35, i32* null, i32* %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @svn_cmdline_printf(i32* %44, i32 %45, i32 %48)
  store i32* %49, i32** %5, align 8
  br label %52

50:                                               ; preds = %40, %29
  %51 = load i32*, i32** %10, align 8
  store i32* %51, i32** %5, align 8
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i32*, i32** %5, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_has_capability(i32*, i32*, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_handle_warning2(i32, i32*, i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_ra__get_operational_lock(%struct.TYPE_5__**, %struct.TYPE_5__**, i32*, i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_cmdline_printf(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
