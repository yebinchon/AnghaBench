; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_apply_single_prop_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_apply_single_prop_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32**, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*)* @apply_single_prop_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @apply_single_prop_add(i32** %0, i32* %1, i32* %2, i8* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  store i32** %0, i32*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32*, i32** %12, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %17, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %77

27:                                               ; preds = %9
  %28 = load i32*, i32** %17, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i64 @svn_string_compare(i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %13, align 8
  store i32 %33, i32* %34, align 4
  br label %76

35:                                               ; preds = %27
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %20, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %39 = call i64 @strcmp(i8* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load i32*, i32** %17, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = call %struct.TYPE_8__* @combine_mergeinfo_props(i32** %21, i32* %42, i32* %43, i32* %44, i32* %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %22, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %57 = call i32 @svn_error_clear(%struct.TYPE_8__* %56)
  br label %61

58:                                               ; preds = %49
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %60 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %59)
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %10, align 8
  br label %89

61:                                               ; preds = %55
  br label %68

62:                                               ; preds = %41
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %20, align 4
  %64 = load i32*, i32** %21, align 8
  %65 = load i32**, i32*** %11, align 8
  store i32* %64, i32** %65, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %61
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @TRUE, align 4
  %74 = load i32*, i32** %12, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %32
  br label %87

77:                                               ; preds = %9
  %78 = load i32*, i32** %15, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  br label %86

83:                                               ; preds = %77
  %84 = load i32*, i32** %16, align 8
  %85 = load i32**, i32*** %11, align 8
  store i32* %84, i32** %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %76
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %10, align 8
  br label %89

89:                                               ; preds = %87, %58
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  ret %struct.TYPE_8__* %90
}

declare dso_local i64 @svn_string_compare(i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @combine_mergeinfo_props(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
