; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_reverse_dir_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_reverse_dir_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.reverse_tree_baton_t* }
%struct.reverse_tree_baton_t = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i8*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, %struct.TYPE_4__*, i32*)* @reverse_dir_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @reverse_dir_deleted(i8* %0, i32* %1, i32* %2, i8* %3, %struct.TYPE_4__* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.reverse_tree_baton_t*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %15, align 8
  store %struct.reverse_tree_baton_t* %16, %struct.reverse_tree_baton_t** %13, align 8
  %17 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %13, align 8
  %18 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %13, align 8
  %23 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i8* @svn_relpath_join(i64 %24, i8* %25, i32* %26)
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %21, %6
  %29 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %13, align 8
  %30 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (i8*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*)** %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %13, align 8
  %39 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 %33(i8* %34, i32* null, i32* %35, i32* null, i32* %36, i8* %37, %struct.TYPE_5__* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %44
}

declare dso_local i8* @svn_relpath_join(i64, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
