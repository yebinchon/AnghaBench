; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_open_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_open_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"'%s' is not a working copy\00", align 1
@SVN_WC__VERSION = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32**, i8*, i32, i32*, i32, i32*, i32*)* @open_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @open_single(i32** %0, i8* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = call %struct.TYPE_10__* @svn_dirent_get_absolute(i8** %16, i8* %20, i32* %21)
  %23 = call i32 @SVN_ERR(%struct.TYPE_10__* %22)
  %24 = load i32*, i32** %12, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %15, align 8
  %28 = call %struct.TYPE_10__* @svn_wc__internal_check_wc(i32* %17, i32* %24, i8* %25, i32 %26, i32* %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %18, align 8
  %29 = load i32, i32* %17, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %7
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @APR_STATUS_IS_ENOENT(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34, %7
  %41 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %43 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %10, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = call i32 @svn_dirent_local_style(i8* %44, i32* %45)
  %47 = call %struct.TYPE_10__* @svn_error_createf(i32 %41, %struct.TYPE_10__* %42, i32 %43, i32 %46)
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %8, align 8
  br label %67

48:                                               ; preds = %34, %31
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %50 = call i32 @SVN_ERR(%struct.TYPE_10__* %49)
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @SVN_WC__VERSION, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @SVN_ERR_ASSERT(i32 %54)
  %56 = load i8*, i8** %10, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = call %struct.TYPE_10__* @adm_access_alloc(i32** %19, i8* %56, i32* %57, i32 %58, i32 %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(%struct.TYPE_10__* %62)
  %64 = load i32*, i32** %19, align 8
  %65 = load i32**, i32*** %9, align 8
  store i32* %64, i32** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %8, align 8
  br label %67

67:                                               ; preds = %48, %40
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  ret %struct.TYPE_10__* %68
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__internal_check_wc(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local %struct.TYPE_10__* @svn_error_createf(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_10__* @adm_access_alloc(i32**, i8*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
