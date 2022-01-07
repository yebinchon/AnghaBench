; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_..libsvn_rawrapper_template.h_svn_ra_svn_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_..libsvn_rawrapper_template.h_svn_ra_svn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** (i32*)*, i32 (...)* }

@SVN_RA_ABI_VERSION = common dso_local global i32 0, align 4
@SVN_ERR_RA_UNSUPPORTED_ABI_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unsupported RA plugin ABI version (%d) for %s\00", align 1
@NAME = common dso_local global i32 0, align 4
@VTBL = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@compat_plugin = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @COMPAT_INITFUNC(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SVN_RA_ABI_VERSION, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @SVN_ERR_RA_UNSUPPORTED_ABI_VERSION, align 4
  %18 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NAME, align 4
  %21 = call i32* @svn_error_createf(i32 %17, i32* null, i32 %18, i32 %19, i32 %20)
  store i32* %21, i32** %4, align 8
  br label %46

22:                                               ; preds = %12
  %23 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VTBL, i32 0, i32 1), align 8
  %24 = call i32 (...) %23()
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @INITFUNC(i32 %24, i32** %8, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i8** (i32*)*, i8** (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VTBL, i32 0, i32 0), align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i8** %28(i32* %29)
  store i8** %30, i8*** %9, align 8
  br label %31

31:                                               ; preds = %41, %22
  %32 = load i8**, i8*** %9, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i8**, i8*** %9, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %40 = call i32 @apr_hash_set(i32* %36, i8* %38, i32 %39, i32* @compat_plugin)
  br label %41

41:                                               ; preds = %35
  %42 = load i8**, i8*** %9, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %9, align 8
  br label %31

44:                                               ; preds = %31
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32*, i32** %4, align 8
  ret i32* %47
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @INITFUNC(i32, i32**, i32*) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
