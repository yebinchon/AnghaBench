; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_get_entry_access_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_get_entry_access_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i32*, i8*, i64, i32*, i32*)* @get_entry_access_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_entry_access_info(i8** %0, i8** %1, i32* %2, i8* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @svn_node_unknown, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %7
  %24 = load i32*, i32** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32* @svn_wc__adm_retrieve_internal2(i32* %24, i8* %25, i32* %26)
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @svn_node_dir, align 8
  store i64 %31, i64* %17, align 8
  br label %37

32:                                               ; preds = %23
  %33 = load i8*, i8** %11, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @svn_io_check_special_path(i8* %33, i64* %17, i64* %18, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* @svn_node_dir, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* %16, align 8
  br label %44

44:                                               ; preds = %42, %41
  br label %52

45:                                               ; preds = %7
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @svn_node_dir, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %16, align 8
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i64, i64* %16, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32*, i32** %13, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i8* @apr_pstrdup(i32* %56, i8* %57)
  %59 = load i8**, i8*** %8, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %60, align 8
  br label %67

61:                                               ; preds = %52
  %62 = load i8**, i8*** %8, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @svn_dirent_split(i8** %62, i8** %63, i8* %64, i32* %65)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
}

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_special_path(i8*, i64*, i64*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
