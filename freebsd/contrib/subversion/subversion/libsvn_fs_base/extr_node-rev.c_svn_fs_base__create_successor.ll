; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_node-rev.c_svn_fs_base__create_successor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_node-rev.c_svn_fs_base__create_successor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__create_successor(i32** %0, i32* %1, i32* %2, i32* %3, i8* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = call i32 @svn_fs_bdb__new_successor_id(i32** %17, i32* %18, i32* %19, i8* %20, i8* %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %17, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = call i32 @svn_fs_bdb__put_node_revision(i32* %26, i32* %27, i32* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %17, align 8
  %34 = load i32**, i32*** %9, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %35
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__new_successor_id(i32**, i32*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_bdb__put_node_revision(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
