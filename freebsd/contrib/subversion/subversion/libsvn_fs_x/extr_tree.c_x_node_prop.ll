; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_node_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_node_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*, i8*, i32*)* @x_node_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_node_prop(i32** %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32* @svn_pool_create(i32* %14)
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = call i32 @svn_fs_x__get_temp_dag_node(i32** %11, i32* %16, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @svn_fs_x__dag_get_proplist(i32** %12, i32* %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32**, i32*** %6, align 8
  store i32* null, i32** %26, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load i32*, i32** %12, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @svn_hash_gets(i32* %30, i8* %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @svn_string_dup(i32 %32, i32* %33)
  %35 = load i32**, i32*** %6, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %5
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_pool_destroy(i32* %37)
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_temp_dag_node(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_get_proplist(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_string_dup(i32, i32*) #1

declare dso_local i32 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
