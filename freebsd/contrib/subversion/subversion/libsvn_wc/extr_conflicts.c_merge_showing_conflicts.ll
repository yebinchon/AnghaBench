; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_merge_showing_conflicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_merge_showing_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32, i32*, i8*, i8*, i8*, i32, i32, i8*, i32*, i32*)* @merge_showing_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_showing_conflicts(i8** %0, i32* %1, i8* %2, i32 %3, i32* %4, i8* %5, i8* %6, i8* %7, i32 %8, i32 %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  store i8** %0, i8*** %14, align 8
  store i32* %1, i32** %15, align 8
  store i8* %2, i8** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  %31 = load i32*, i32** %26, align 8
  %32 = call i32* @svn_diff_file_options_create(i32* %31)
  store i32* %32, i32** %30, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %13
  %36 = load i32*, i32** %30, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = load i32*, i32** %26, align 8
  %39 = call i32 @svn_diff_file_options_parse(i32* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %35, %13
  %42 = load i32*, i32** %15, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32*, i32** %26, align 8
  %45 = load i32*, i32** %26, align 8
  %46 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %27, i32* %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i8**, i8*** %14, align 8
  %49 = load i8*, i8** %27, align 8
  %50 = load i32, i32* %22, align 4
  %51 = load i32*, i32** %25, align 8
  %52 = load i32*, i32** %26, align 8
  %53 = call i32 @svn_stream_open_unique(i32** %28, i8** %48, i8* %49, i32 %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i8*, i8** %19, align 8
  %56 = load i8*, i8** %20, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = load i32*, i32** %30, align 8
  %59 = load i32*, i32** %26, align 8
  %60 = call i32 @svn_diff_file_diff3_2(i32** %29, i8* %55, i8* %56, i8* %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** %28, align 8
  %63 = load i32*, i32** %29, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = load i8*, i8** %20, align 8
  %66 = load i8*, i8** %21, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %23, align 4
  %69 = load i8*, i8** %24, align 8
  %70 = load i32*, i32** %26, align 8
  %71 = call i32 @svn_diff_file_output_merge3(i32* %62, i32* %63, i8* %64, i8* %65, i8* %66, i32* null, i32* null, i32* null, i32* null, i32 %67, i32 %68, i8* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** %28, align 8
  %74 = call i32 @svn_stream_close(i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %76
}

declare dso_local i32* @svn_diff_file_options_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_diff_file_options_parse(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_diff_file_diff3_2(i32**, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_diff_file_output_merge3(i32*, i32*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
