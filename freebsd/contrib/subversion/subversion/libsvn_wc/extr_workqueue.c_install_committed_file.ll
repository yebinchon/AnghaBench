; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_install_committed_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_install_committed_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_FROM_NF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32, i8*, i32*)* @install_committed_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @install_committed_file(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %16, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @SVN_WC_TRANSLATE_FROM_NF, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_wc__internal_translated_file(i8** %14, i8* %20, i32* %21, i8* %22, i32 %23, i32 %24, i8* %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @svn_wc__get_translate_info(i32* null, i32* null, i32* null, i32* %15, i32* %30, i8* %31, i32* null, i32 %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %6
  %40 = load i8*, i8** %16, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @svn_io_files_contents_same_p(i32* %13, i8* %44, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %51

49:                                               ; preds = %39, %6
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %14, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @svn_io_file_rename2(i8* %55, i8* %56, i32 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %51
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @svn_wc__sync_flags_with_props(i32* %64, i32* %65, i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__internal_translated_file(i8**, i8*, i32*, i8*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__get_translate_info(i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_files_contents_same_p(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__sync_flags_with_props(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
