; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_ensure_repos_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_ensure_repos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"Working copy '%s' can't be upgraded because the repository root is not available and can't be retrieved\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"Working copy '%s' can't be upgraded because the repository uuid is not available and can't be retrieved\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Working copy '%s' can't be upgraded because it doesn't have a url\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32 (i32**, i32**, i8*, i32*, i32*, i32*)*, i8*, i32*, i32*, i32*)* @ensure_repos_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ensure_repos_info(%struct.TYPE_3__* %0, i8* %1, i32 (i32**, i32**, i8*, i32*, i32*, i32*)* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i32**, i32**, i8*, i32*, i32*, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 (i32**, i32**, i8*, i32*, i32*, i32*)* %2, i32 (i32**, i32**, i8*, i32*, i32*, i32*)** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %8, align 8
  br label %141

28:                                               ; preds = %21, %7
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %85

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  %44 = load i32*, i32** %15, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32* @apr_hash_first(i32* %44, i32* %45)
  store i32* %46, i32** %16, align 8
  br label %47

47:                                               ; preds = %81, %43
  %48 = load i32*, i32** %16, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load i32*, i32** %16, align 8
  %52 = call i32* @apr_hash_this_key(i32* %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @svn_uri__is_ancestor(i32* %52, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %16, align 8
  %65 = call i32* @apr_hash_this_key(i32* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %16, align 8
  %75 = call i32* @apr_hash_this_val(i32* %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %8, align 8
  br label %141

80:                                               ; preds = %50
  br label %81

81:                                               ; preds = %80
  %82 = load i32*, i32** %16, align 8
  %83 = call i32* @apr_hash_next(i32* %82)
  store i32* %83, i32** %16, align 8
  br label %47

84:                                               ; preds = %47
  br label %85

85:                                               ; preds = %84, %38, %33
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32 (i32**, i32**, i8*, i32*, i32*, i32*)*, i32 (i32**, i32**, i8*, i32*, i32*, i32*)** %11, align 8
  %92 = icmp eq i32 (i32**, i32**, i8*, i32*, i32*, i32*)* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* @SVN_ERR_WC_UNSUPPORTED_FORMAT, align 4
  %95 = call i32 @_(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %96 = load i8*, i8** %10, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @svn_dirent_local_style(i8* %96, i32* %97)
  %99 = call i32* @svn_error_createf(i32 %94, i32* null, i32 %95, i32 %98)
  store i32* %99, i32** %8, align 8
  br label %141

100:                                              ; preds = %90, %85
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32 (i32**, i32**, i8*, i32*, i32*, i32*)*, i32 (i32**, i32**, i8*, i32*, i32*, i32*)** %11, align 8
  %107 = icmp eq i32 (i32**, i32**, i8*, i32*, i32*, i32*)* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i32, i32* @SVN_ERR_WC_UNSUPPORTED_FORMAT, align 4
  %110 = call i32 @_(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i8*, i8** %10, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @svn_dirent_local_style(i8* %111, i32* %112)
  %114 = call i32* @svn_error_createf(i32 %109, i32* null, i32 %110, i32 %113)
  store i32* %114, i32** %8, align 8
  br label %141

115:                                              ; preds = %105, %100
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32, i32* @SVN_ERR_WC_UNSUPPORTED_FORMAT, align 4
  %122 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i8*, i8** %10, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @svn_dirent_local_style(i8* %123, i32* %124)
  %126 = call i32* @svn_error_createf(i32 %121, i32* null, i32 %122, i32 %125)
  store i32* %126, i32** %8, align 8
  br label %141

127:                                              ; preds = %115
  %128 = load i32 (i32**, i32**, i8*, i32*, i32*, i32*)*, i32 (i32**, i32**, i8*, i32*, i32*, i32*)** %11, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i8*, i8** %12, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 %128(i32** %130, i32** %132, i8* %133, i32* %136, i32* %137, i32* %138)
  %140 = call i32* @svn_error_trace(i32 %139)
  store i32* %140, i32** %8, align 8
  br label %141

141:                                              ; preds = %127, %120, %108, %93, %78, %26
  %142 = load i32*, i32** %8, align 8
  ret i32* %142
}

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i64 @svn_uri__is_ancestor(i32*, i32*) #1

declare dso_local i32* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
