; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_config_pool.c_svn_repos__config_pool_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_config_pool.c_svn_repos__config_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Error while parsing config file: '%s':\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__config_pool_get(i32** %0, i32* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32* @svn_repos__create_config_access(i32* %21, i32* %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32**, i32*** %7, align 8
  store i32* null, i32** %24, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = call i32* @svn_repos__get_config(i32** %16, i32** %17, i32* %25, i8* %26, i32 %27, i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %6
  %33 = load i32**, i32*** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @find_config(i32** %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = call i32* @svn_error_quick_wrapf(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i32* %41, i32** %13, align 8
  br label %42

42:                                               ; preds = %32, %6
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @svn_path_is_url(i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @svn_error_clear(i32* %51)
  %53 = load i32**, i32*** %7, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32* @svn_config_read3(i32** %53, i8* %54, i32 %55, i32 %56, i32 %57, i32* %58)
  store i32* %59, i32** %13, align 8
  br label %60

60:                                               ; preds = %50, %46, %42
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @svn_repos__destroy_config_access(i32* %61)
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @svn_pool_destroy(i32* %63)
  %65 = load i32**, i32*** %7, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32**, i32*** %7, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32* @svn_config__shallow_copy(i32* %70, i32* %71)
  %73 = load i32**, i32*** %7, align 8
  store i32* %72, i32** %73, align 8
  br label %74

74:                                               ; preds = %68, %60
  %75 = load i32*, i32** %13, align 8
  %76 = call i32* @svn_error_trace(i32* %75)
  ret i32* %76
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_repos__create_config_access(i32*, i32*) #1

declare dso_local i32* @svn_repos__get_config(i32**, i32**, i32*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_quick_wrapf(i32, i8*, i8*) #1

declare dso_local i32 @find_config(i32**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_config_read3(i32**, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_repos__destroy_config_access(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_config__shallow_copy(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
