; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_check_bump_layer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_check_bump_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32, i8*, i32, i32*)* @check_bump_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_bump_layer(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = call i8* @svn_relpath_skip_ancestor(i8* %21, i8* %22)
  store i8* %23, i8** %16, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @TRUE, align 4
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %7
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @svn_depth_infinity, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %8, align 8
  br label %74

35:                                               ; preds = %29
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i8*, i8** %16, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %8, align 8
  br label %74

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %70 [
    i32 130, label %47
    i32 129, label %50
    i32 128, label %58
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %72

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @svn_node_file, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %72

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %45, %57
  %59 = load i8*, i8** %16, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @relpath_depth(i8* %62)
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %58
  %66 = load i32, i32* @TRUE, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32*, i32** %10, align 8
  store i32 130, i32* %69, align 4
  br label %72

70:                                               ; preds = %45
  %71 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %72

72:                                               ; preds = %70, %68, %54, %47
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %8, align 8
  br label %74

74:                                               ; preds = %72, %43, %33
  %75 = load i32*, i32** %8, align 8
  ret i32* %75
}

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
