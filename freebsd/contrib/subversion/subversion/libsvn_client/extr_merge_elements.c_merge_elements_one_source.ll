; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge_elements.c_merge_elements_one_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge_elements.c_merge_elements_one_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"--- Merging by elements: left=%s, right=%s, matching=%s\00", align 1
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Merge had conflicts; this is not yet supported\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"--- Dry run; not writing merge result to WC\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i32*, i32*, i32*)* @merge_elements_one_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_elements_one_source(i64* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i64 %6, i64 %7, i64 %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  store i64* %0, i64** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i32* %5, i32** %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = load i32*, i32** %25, align 8
  %33 = call i32 @pathrev_str(i32* %31, i32* %32)
  %34 = load i32*, i32** %16, align 8
  %35 = load i32*, i32** %25, align 8
  %36 = call i32 @pathrev_str(i32* %34, i32* %35)
  %37 = load i32*, i32** %19, align 8
  %38 = load i32*, i32** %25, align 8
  %39 = call i32 @element_matching_info_str(i32* %37, i32* %38)
  %40 = call i32 (i8*, ...) @verbose_notify(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = load i32*, i32** %24, align 8
  %47 = load i32*, i32** %25, align 8
  %48 = load i32*, i32** %25, align 8
  %49 = call i32 @assign_eids_to_trees(i32** %26, i32** %27, i32** %28, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %26, align 8
  %52 = load i32*, i32** %27, align 8
  %53 = load i32*, i32** %28, align 8
  %54 = load i32*, i32** %25, align 8
  %55 = load i32*, i32** %25, align 8
  %56 = call i32 @merge_trees(i32** %29, i8** %30, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i8*, i8** %30, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %12
  %61 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32* @svn_error_create(i32 %61, i32* null, i32 %62)
  store i32* %63, i32** %13, align 8
  br label %80

64:                                               ; preds = %12
  %65 = load i64, i64* %22, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 (i8*, ...) @verbose_notify(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %78

69:                                               ; preds = %64
  %70 = load i32*, i32** %17, align 8
  %71 = load i32*, i32** %29, align 8
  %72 = load i32*, i32** %24, align 8
  %73 = load i32*, i32** %25, align 8
  %74 = call i32 @apply_merge_result_to_wc(i32* %70, i32* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i64, i64* @TRUE, align 8
  %77 = load i64*, i64** %14, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %69, %67
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %13, align 8
  br label %80

80:                                               ; preds = %78, %60
  %81 = load i32*, i32** %13, align 8
  ret i32* %81
}

declare dso_local i32 @verbose_notify(i8*, ...) #1

declare dso_local i32 @pathrev_str(i32*, i32*) #1

declare dso_local i32 @element_matching_info_str(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @assign_eids_to_trees(i32**, i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @merge_trees(i32**, i8**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apply_merge_result_to_wc(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
