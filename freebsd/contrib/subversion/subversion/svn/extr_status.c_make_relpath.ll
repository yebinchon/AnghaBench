; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status.c_make_relpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status.c_make_relpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32*, i32*)* @make_relpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_relpath(i8* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i8* @svn_dirent_skip_ancestor(i8* %16, i8* %17)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i8* @svn_dirent_join(i8* %22, i8* %23, i32* %24)
  store i8* %25, i8** %6, align 8
  br label %62

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i8* @svn_dirent_get_longest_ancestor(i8* %27, i8* %28, i32* %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32*, i32** %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @apr_pstrdup(i32* %36, i8* %37)
  store i8* %38, i8** %6, align 8
  br label %62

39:                                               ; preds = %26
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @svn_dirent_skip_ancestor(i8* %40, i8* %41)
  store i8* %42, i8** %14, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @svn_dirent_skip_ancestor(i8* %43, i8* %44)
  store i8* %45, i8** %15, align 8
  br label %46

46:                                               ; preds = %50, %39
  %47 = load i8*, i8** %14, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** %14, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i8* @svn_dirent_dirname(i8* %51, i32* %52)
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i8* @svn_dirent_join(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  store i8* %56, i8** %13, align 8
  br label %46

57:                                               ; preds = %46
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i8* @svn_dirent_join(i8* %58, i8* %59, i32* %60)
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %57, %35, %21
  %63 = load i8*, i8** %6, align 8
  ret i8* %63
}

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_get_longest_ancestor(i8*, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
