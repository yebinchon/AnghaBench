; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz.c_authz_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz.c_authz_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@authz_pool = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Error while parsing config file: '%s':\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Error while parsing authz file: '%s':\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, i8*, i8*, i32, i32*, i32*, i32*)* @authz_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @authz_read(i32** %0, i32** %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = call i32* @svn_repos__create_config_access(i32* %24, i32* %25)
  store i32* %26, i32** %22, align 8
  %27 = load i32*, i32** %22, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = call i32 @svn_repos__get_config(i32** %18, i32** %20, i32* %27, i8* %28, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %8
  %36 = load i32*, i32** %22, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = call i32 @svn_repos__get_config(i32** %19, i32** %21, i32* %36, i8* %37, i32 %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  br label %42

42:                                               ; preds = %35, %8
  %43 = load i32*, i32** %20, align 8
  %44 = load i32*, i32** %21, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = call i32* @construct_authz_key(i32* %43, i32* %44, i32* %45)
  %47 = load i32**, i32*** %10, align 8
  store i32* %46, i32** %47, align 8
  %48 = load i64, i64* @authz_pool, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %42
  %51 = load i32**, i32*** %9, align 8
  %52 = bitcast i32** %51 to i8**
  %53 = load i64, i64* @authz_pool, align 8
  %54 = load i32**, i32*** %10, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @svn_object_pool__lookup(i8** %52, i64 %53, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32**, i32*** %9, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %93, label %62

62:                                               ; preds = %50
  %63 = load i64, i64* @authz_pool, align 8
  %64 = call i32* @svn_object_pool__new_item_pool(i64 %63)
  store i32* %64, i32** %23, align 8
  %65 = load i32**, i32*** %9, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = load i32*, i32** %23, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i32* @svn_authz__parse(i32** %65, i32* %66, i32* %67, i32* %68, i32* %69)
  store i32* %70, i32** %17, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  %73 = icmp ne i32* %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %62
  %75 = load i32*, i32** %23, align 8
  %76 = call i32 @svn_pool_destroy(i32* %75)
  %77 = load i32*, i32** %17, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32* @svn_error_quick_wrapf(i32* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %78)
  store i32* %79, i32** %17, align 8
  br label %92

80:                                               ; preds = %62
  %81 = load i32**, i32*** %9, align 8
  %82 = bitcast i32** %81 to i8**
  %83 = load i64, i64* @authz_pool, align 8
  %84 = load i32**, i32*** %10, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = load i32**, i32*** %9, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %23, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @svn_object_pool__insert(i8** %82, i64 %83, i32* %85, i32* %87, i32* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %92

92:                                               ; preds = %80, %74
  br label %93

93:                                               ; preds = %92, %50
  br label %103

94:                                               ; preds = %42
  %95 = load i32**, i32*** %9, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = call i32* @svn_authz__parse(i32** %95, i32* %96, i32* %97, i32* %98, i32* %99)
  %101 = load i8*, i8** %11, align 8
  %102 = call i32* @svn_error_quick_wrapf(i32* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  store i32* %102, i32** %17, align 8
  br label %103

103:                                              ; preds = %94, %93
  %104 = load i32*, i32** %22, align 8
  %105 = call i32 @svn_repos__destroy_config_access(i32* %104)
  %106 = load i32*, i32** %17, align 8
  ret i32* %106
}

declare dso_local i32* @svn_repos__create_config_access(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__get_config(i32**, i32**, i32*, i8*, i32, i32*) #1

declare dso_local i32* @construct_authz_key(i32*, i32*, i32*) #1

declare dso_local i32 @svn_object_pool__lookup(i8**, i64, i32*, i32*) #1

declare dso_local i32* @svn_object_pool__new_item_pool(i64) #1

declare dso_local i32* @svn_authz__parse(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_quick_wrapf(i32*, i8*, i8*) #1

declare dso_local i32 @svn_object_pool__insert(i8**, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_repos__destroy_config_access(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
