; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_change_rev_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_change_rev_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32*, i64, i64, i32*)* @change_rev_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_rev_prop(i32* %0, i32 %1, i8* %2, i32* %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i64, i64* %14, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = load i8*, i8** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = call i32 @svn_repos__normalize_prop(i32** %12, i32* null, i8* %19, i32* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  br label %25

25:                                               ; preds = %18, %7
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = call i32* @svn_repos_fs_change_rev_prop4(i32* %29, i32 %30, i32* null, i8* %31, i32* null, i32* %32, i32 %33, i32 %34, i32* null, i32* null, i32* %35)
  store i32* %36, i32** %8, align 8
  br label %45

37:                                               ; preds = %25
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @svn_repos_fs(i32* %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32* @svn_fs_change_rev_prop2(i32 %39, i32 %40, i8* %41, i32* null, i32* %42, i32* %43)
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %37, %28
  %46 = load i32*, i32** %8, align 8
  ret i32* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__normalize_prop(i32**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_repos_fs_change_rev_prop4(i32*, i32, i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_fs_change_rev_prop2(i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_repos_fs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
