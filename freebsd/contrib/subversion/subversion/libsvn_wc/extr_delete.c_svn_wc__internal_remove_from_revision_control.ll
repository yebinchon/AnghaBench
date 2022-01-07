; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_delete.c_svn_wc__internal_remove_from_revision_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_delete.c_svn_wc__internal_remove_from_revision_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_WC_LEFT_LOCAL_MOD = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_remove_from_revision_control(i32* %0, i8* %1, i64 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %14, align 8
  store i32* null, i32** %16, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @svn_wc__db_is_wcroot(i64* %15, i32* %18, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %15, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  br label %32

28:                                               ; preds = %6
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i8* @svn_dirent_dirname(i8* %29, i32* %30)
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i8* [ %27, %26 ], [ %31, %28 ]
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @svn_wc__write_check(i32* %23, i8* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @svn_wc__db_op_remove_node(i64* %14, i32* %37, i8* %38, i64 %39, i64 %40, i32* null, i32* null, i32 %41, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @svn_wc__wq_run(i32* %46, i8* %47, i32 %48, i8* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %32
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @svn_wc__adm_destroy(i32* %56, i8* %57, i32 %58, i8* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %55
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = call i32* @svn_io_dir_remove_nonrecursive(i8* %69, i32* %70)
  store i32* %71, i32** %16, align 8
  br label %72

72:                                               ; preds = %68, %65, %55
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %16, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @SVN_ERR_WC_LEFT_LOCAL_MOD, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = call i32* @svn_error_create(i32 %80, i32* %81, i32* null)
  store i32* %82, i32** %7, align 8
  br label %85

83:                                               ; preds = %76
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %84, i32** %7, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32*, i32** %7, align 8
  ret i32* %86
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__write_check(i32*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_op_remove_node(i64*, i32*, i8*, i64, i64, i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__adm_destroy(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_io_dir_remove_nonrecursive(i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
