; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_check_ancestry_of_peg_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_check_ancestry_of_peg_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i64, i64, i32*)* @check_ancestry_of_peg_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_ancestry_of_peg_path(i32* %0, i32* %1, i8* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i8* null, i8** %15, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = call i32* @svn_pool_create(i32* %20)
  store i32* %21, i32** %17, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32* @svn_pool_create(i32* %22)
  store i32* %23, i32** %18, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @svn_fs_revision_root(i32** %13, i32* %24, i64 %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %13, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @svn_fs_node_history2(i32** %14, i32* %29, i8* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  store i8* null, i8** %9, align 8
  br label %35

35:                                               ; preds = %6, %61
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32*, i32** %18, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @svn_fs_history_prev2(i32** %14, i32* %36, i32 %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %67

45:                                               ; preds = %35
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = call i32 @svn_fs_history_location(i8** %15, i64* %16, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %12, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i8* @apr_pstrdup(i32* %53, i8* %54)
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %67

61:                                               ; preds = %56
  %62 = load i32*, i32** %17, align 8
  %63 = call i32 @svn_pool_clear(i32* %62)
  %64 = load i32*, i32** %17, align 8
  store i32* %64, i32** %19, align 8
  %65 = load i32*, i32** %18, align 8
  store i32* %65, i32** %17, align 8
  %66 = load i32*, i32** %19, align 8
  store i32* %66, i32** %18, align 8
  br label %35

67:                                               ; preds = %60, %44
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @SVN_ERR_ASSERT(i32 %70)
  %72 = load i32*, i32** %14, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i8*, i8** %15, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i64 @strcmp(i8* %75, i8* %76)
  %78 = icmp eq i64 %77, 0
  br label %79

79:                                               ; preds = %74, %67
  %80 = phi i1 [ false, %67 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %83
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_node_history2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_history_prev2(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_history_location(i8**, i64*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
