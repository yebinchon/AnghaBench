; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_upgrade_apply_dav_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_upgrade_apply_dav_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STMT_UPDATE_BASE_NODE_DAV_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32*, i32*)* @upgrade_apply_dav_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @upgrade_apply_dav_cache(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32* @svn_pool_create(i32* %17)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @STMT_UPDATE_BASE_NODE_DAV_CACHE, align 4
  %21 = call i32 @svn_sqlite__get_statement(i32** %13, i32* %19, i32 %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32* @apr_hash_first(i32* %23, i32* %24)
  store i32* %25, i32** %12, align 8
  br label %26

26:                                               ; preds = %53, %5
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i32*, i32** %12, align 8
  %31 = call i8* @apr_hash_this_key(i32* %30)
  store i8* %31, i8** %14, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32* @apr_hash_this_val(i32* %32)
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @svn_pool_clear(i32* %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i8* @svn_relpath_join(i8* %36, i8* %37, i32* %38)
  store i8* %39, i8** %16, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %16, align 8
  %43 = call i32 @svn_sqlite__bindf(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @svn_sqlite__bind_properties(i32* %45, i32 3, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @svn_sqlite__step_done(i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %53

53:                                               ; preds = %29
  %54 = load i32*, i32** %12, align 8
  %55 = call i32* @apr_hash_next(i32* %54)
  store i32* %55, i32** %12, align 8
  br label %26

56:                                               ; preds = %26
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @svn_pool_destroy(i32* %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__bind_properties(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
