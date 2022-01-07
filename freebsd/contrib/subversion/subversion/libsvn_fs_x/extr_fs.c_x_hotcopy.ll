; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs.c_x_hotcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs.c_x_hotcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i8*, i32, i32, i32, i8*, i32 (i8*)*, i8*, i32*, i32*, i32*)* @x_hotcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_hotcopy(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 (i8*)* %8, i8* %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32 (i8*)*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i32 (i8*)* %8, i32 (i8*)** %22, align 8
  store i8* %9, i8** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = load i32*, i32** %24, align 8
  %30 = load i32*, i32** %25, align 8
  %31 = load i32*, i32** %26, align 8
  %32 = call i32 @x_open(i32* %27, i8* %28, i32* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32 (i8*)*, i32 (i8*)** %22, align 8
  %35 = icmp ne i32 (i8*)* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %13
  %37 = load i32 (i8*)*, i32 (i8*)** %22, align 8
  %38 = load i8*, i8** %23, align 8
  %39 = call i32 %37(i8* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %36, %13
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i32 @svn_fs__check_fs(i32* %42, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @initialize_fs_struct(i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load i8*, i8** %21, align 8
  %56 = load i32 (i8*)*, i32 (i8*)** %22, align 8
  %57 = load i8*, i8** %23, align 8
  %58 = load i32*, i32** %24, align 8
  %59 = load i32*, i32** %25, align 8
  %60 = load i32*, i32** %26, align 8
  %61 = call i32* @svn_fs_x__hotcopy(i32* %49, i32* %50, i8* %51, i8* %52, i32 %53, i32 %54, i8* %55, i32 (i8*)* %56, i8* %57, i32* %58, i32* %59, i32* %60)
  ret i32* %61
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @x_open(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32 @initialize_fs_struct(i32*) #1

declare dso_local i32* @svn_fs_x__hotcopy(i32*, i32*, i8*, i8*, i32, i32, i8*, i32 (i8*)*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
