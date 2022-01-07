; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_util.c_display_mergeinfo_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_util.c_display_mergeinfo_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"## -0,%u +0,%u ##%s\00", align 1
@APR_EOL_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"   Reverse-merged %s:r%s%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"   Merged %s:r%s%s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32*, i32*)* @display_mergeinfo_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @display_mergeinfo_diff(i8* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32* @svn_pool_create(i32* %23)
  store i32* %24, i32** %15, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i8*, i8** %6, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_mergeinfo_parse(i32** %11, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  br label %33

32:                                               ; preds = %5
  store i32* null, i32** %11, align 8
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @svn_mergeinfo_parse(i32** %12, i8* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %42

41:                                               ; preds = %33
  store i32* null, i32** %12, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @TRUE, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @svn_mergeinfo_diff2(i32** %14, i32** %13, i32* %43, i32* %44, i32 %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call i8* @apr_hash_count(i32* %53)
  %55 = load i32*, i32** %13, align 8
  %56 = call i8* @apr_hash_count(i32* %55)
  %57 = load i32, i32* @APR_EOL_STR, align 4
  %58 = call i32 @svn_stream_printf_from_utf8(i32* %50, i8* %51, i32* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %56, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32* @apr_hash_first(i32* %60, i32* %61)
  store i32* %62, i32** %16, align 8
  br label %63

63:                                               ; preds = %88, %42
  %64 = load i32*, i32** %16, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load i32*, i32** %16, align 8
  %68 = call i8* @apr_hash_this_key(i32* %67)
  store i8* %68, i8** %17, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i32* @apr_hash_this_val(i32* %69)
  store i32* %70, i32** %18, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @svn_pool_clear(i32* %71)
  %73 = load i32*, i32** %18, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @svn_rangelist_to_string(%struct.TYPE_3__** %19, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i8*, i8** %17, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @APR_EOL_STR, align 4
  %86 = call i32 @svn_stream_printf_from_utf8(i32* %77, i8* %78, i32* %79, i8* %80, i8* %81, i8* %84, i32 %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %88

88:                                               ; preds = %66
  %89 = load i32*, i32** %16, align 8
  %90 = call i32* @apr_hash_next(i32* %89)
  store i32* %90, i32** %16, align 8
  br label %63

91:                                               ; preds = %63
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = call i32* @apr_hash_first(i32* %92, i32* %93)
  store i32* %94, i32** %16, align 8
  br label %95

95:                                               ; preds = %120, %91
  %96 = load i32*, i32** %16, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load i32*, i32** %16, align 8
  %100 = call i8* @apr_hash_this_key(i32* %99)
  store i8* %100, i8** %20, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32* @apr_hash_this_val(i32* %101)
  store i32* %102, i32** %21, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @svn_pool_clear(i32* %103)
  %105 = load i32*, i32** %21, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @svn_rangelist_to_string(%struct.TYPE_3__** %22, i32* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load i32*, i32** %9, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i8*, i8** %20, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @APR_EOL_STR, align 4
  %118 = call i32 @svn_stream_printf_from_utf8(i32* %109, i8* %110, i32* %111, i8* %112, i8* %113, i8* %116, i32 %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  br label %120

120:                                              ; preds = %98
  %121 = load i32*, i32** %16, align 8
  %122 = call i32* @apr_hash_next(i32* %121)
  store i32* %122, i32** %16, align 8
  br label %95

123:                                              ; preds = %95
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @svn_pool_destroy(i32* %124)
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %126
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo_parse(i32**, i8*, i32*) #1

declare dso_local i32 @svn_mergeinfo_diff2(i32**, i32**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_printf_from_utf8(i32*, i8*, i32*, i8*, i8*, i8*, i32) #1

declare dso_local i8* @apr_hash_count(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_rangelist_to_string(%struct.TYPE_3__**, i32*, i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
