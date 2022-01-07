; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_dir_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_dir_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.copy_as_changed_baton_t* }
%struct.copy_as_changed_baton_t = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i8**, i32*, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_4__*, i32*, i32*)* @copy_as_changed_dir_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_as_changed_dir_opened(i8** %0, i32* %1, i32* %2, i8* %3, i32* %4, i32* %5, i32* %6, i8* %7, %struct.TYPE_4__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.copy_as_changed_baton_t*, align 8
  store i8** %0, i8*** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i8* %7, i8** %19, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %25, align 8
  store %struct.copy_as_changed_baton_t* %26, %struct.copy_as_changed_baton_t** %23, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %11
  %30 = load i32*, i32** %18, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %18, align 8
  store i32* %37, i32** %16, align 8
  store i32* null, i32** %18, align 8
  br label %38

38:                                               ; preds = %32, %29, %11
  %39 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %23, align 8
  %40 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32 (i8**, i32*, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)*, i32 (i8**, i32*, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)** %42, align 8
  %44 = load i8**, i8*** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %23, align 8
  %53 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = call i32 %43(i8** %44, i32* %45, i32* %46, i8* %47, i32* %48, i32* %49, i32* %50, i8* %51, %struct.TYPE_5__* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
