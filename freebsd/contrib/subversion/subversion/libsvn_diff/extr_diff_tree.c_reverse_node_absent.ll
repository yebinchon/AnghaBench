; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_reverse_node_absent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_reverse_node_absent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.reverse_tree_baton_t* }
%struct.reverse_tree_baton_t = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i8*, i8*, %struct.TYPE_5__*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_4__*, i32*)* @reverse_node_absent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @reverse_node_absent(i8* %0, i8* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.reverse_tree_baton_t*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %11, align 8
  store %struct.reverse_tree_baton_t* %12, %struct.reverse_tree_baton_t** %9, align 8
  %13 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %9, align 8
  %14 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %9, align 8
  %19 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @svn_relpath_join(i64 %20, i8* %21, i32* %22)
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %17, %4
  %25 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %9, align 8
  %26 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (i8*, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8*, i8*, %struct.TYPE_5__*, i32*)** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %9, align 8
  %33 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 %29(i8* %30, i8* %31, %struct.TYPE_5__* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %38
}

declare dso_local i8* @svn_relpath_join(i64, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
