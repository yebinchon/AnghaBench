; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_apply_single_mergeinfo_prop_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_apply_single_mergeinfo_prop_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @apply_single_mergeinfo_prop_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_single_mergeinfo_prop_change(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i32*, i32** %16, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24, %9
  %28 = load i32*, i32** %16, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %16, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load i32*, i32** %13, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load i32*, i32** %16, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i64 @svn_string_compare(i32* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %39, %30, %24
  %45 = load i32*, i32** %16, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32*, i32** %16, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i64 @svn_string_compare(i32* %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  br label %67

55:                                               ; preds = %47
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @combine_forked_mergeinfo_props(i32** %15, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %15, align 8
  %64 = load i32**, i32*** %10, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %55, %52
  br label %71

68:                                               ; preds = %44
  %69 = load i32, i32* @TRUE, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %67
  br label %109

72:                                               ; preds = %39, %36, %33
  %73 = load i32*, i32** %16, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @diff_mergeinfo_props(i32* %19, i32* %20, i32* %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32, i32* %20, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = call i32 @svn_mergeinfo_to_string(i32** %21, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %21, align 8
  %86 = load i32**, i32*** %10, align 8
  store i32* %85, i32** %86, align 8
  br label %108

87:                                               ; preds = %72
  %88 = load i32*, i32** %14, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i64 @svn_string_compare(i32* %88, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32*, i32** %15, align 8
  %94 = load i32**, i32*** %10, align 8
  store i32* %93, i32** %94, align 8
  br label %107

95:                                               ; preds = %87
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @combine_forked_mergeinfo_props(i32** %15, i32* %96, i32* %97, i32* %98, i32* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** %15, align 8
  %104 = load i32**, i32*** %10, align 8
  store i32* %103, i32** %104, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32*, i32** %12, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %95, %92
  br label %108

108:                                              ; preds = %107, %75
  br label %109

109:                                              ; preds = %108, %71
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %110
}

declare dso_local i64 @svn_string_compare(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @combine_forked_mergeinfo_props(i32**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @diff_mergeinfo_props(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_mergeinfo_to_string(i32**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
