; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_dir_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_dir_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32*, i8*, i32, i32*, i32*, i32, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @wrap_dir_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_dir_changed(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6, %struct.svn_diff_tree_processor_t* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.svn_diff_tree_processor_t* %7, %struct.svn_diff_tree_processor_t** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %17, align 8
  %23 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %19, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %26, i32* %21, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %9
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br label %32

32:                                               ; preds = %29, %9
  %33 = phi i1 [ false, %9 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (i32*, i32*, i8*, i32, i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i8*, i32, i32*, i32*, i32, i32*)** %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %18, align 8
  %49 = call i32 %40(i32* %21, i32* %20, i8* %41, i32 %42, i32* %43, i32* %44, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i8*, i8** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %17, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 @wrap_dir_closed(i8* %51, i32* %52, i32* %53, i8* %54, %struct.svn_diff_tree_processor_t* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @wrap_dir_closed(i8*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
