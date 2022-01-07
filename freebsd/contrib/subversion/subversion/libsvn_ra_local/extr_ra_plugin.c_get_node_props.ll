; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_get_node_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_get_node_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_PROP_ENTRY_COMMITTED_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_PROP_ENTRY_COMMITTED_DATE = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_LAST_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_UUID = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*, i8*, i32*, i32*)* @get_node_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_node_props(i32** %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @svn_fs_node_proplist(i32** %16, i32* %17, i8* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @svn_repos_get_committed_info(i32* %13, i8** %14, i8** %15, i32* %22, i8* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_REV, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32* @svn_string_createf(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @svn_hash_sets(i32* %28, i32 %29, i32* %32)
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_DATE, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %6
  %40 = load i8*, i8** %14, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @svn_string_create(i8* %40, i32* %41)
  br label %44

43:                                               ; preds = %6
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32* [ %42, %39 ], [ null, %43 ]
  %46 = call i32 @svn_hash_sets(i32* %35, i32 %36, i32* %45)
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @SVN_PROP_ENTRY_LAST_AUTHOR, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i8*, i8** %15, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32* @svn_string_create(i8* %53, i32* %54)
  br label %57

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32* [ %55, %52 ], [ null, %56 ]
  %59 = call i32 @svn_hash_sets(i32* %48, i32 %49, i32* %58)
  %60 = load i32**, i32*** %7, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @SVN_PROP_ENTRY_UUID, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32* @svn_string_create(i8* %63, i32* %64)
  %66 = call i32 @svn_hash_sets(i32* %61, i32 %62, i32* %65)
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %67
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_node_proplist(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_repos_get_committed_info(i32*, i8**, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32* @svn_string_createf(i32*, i8*, i32) #1

declare dso_local i32* @svn_string_create(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
