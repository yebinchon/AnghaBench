; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_xlate_alloc_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_xlate_alloc_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32*, i32, i32* }

@SVN_APR_DEFAULT_CHARSET = common dso_local global i8* null, align 8
@SVN_APR_LOCALE_CHARSET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"APR: \00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Can't create a character converter from native encoding to '%s'\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Can't create a character converter from '%s' to native encoding\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't create a character converter from '%s' to '%s'\00", align 1
@SVN_ERR_PLUGIN_LOAD_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@xlate_handle_node_cleanup = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__**, i8*, i8*, i32*)* @xlate_alloc_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xlate_alloc_handle(%struct.TYPE_5__** %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [512 x i8], align 16
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** @SVN_APR_DEFAULT_CHARSET, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** @SVN_APR_DEFAULT_CHARSET, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** @SVN_APR_LOCALE_CHARSET, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** @SVN_APR_LOCALE_CHARSET, align 8
  %29 = icmp ne i8* %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  br label %32

32:                                               ; preds = %30, %18, %4
  %33 = phi i1 [ false, %18 ], [ false, %4 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @SVN_ERR_ASSERT(i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @apr_xlate_open(i32** %11, i8* %36, i8* %37, i32* %38)
  store i64 %39, i64* %10, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @APR_STATUS_IS_EINVAL(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @APR_STATUS_IS_ENOTIMPL(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %32
  store i32* null, i32** %11, align 8
  br label %89

48:                                               ; preds = %43
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @APR_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** @SVN_APR_LOCALE_CHARSET, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %7, align 8
  %60 = call i8* (i32*, i32, i8*, ...) @apr_psprintf(i32* %57, i32 %58, i8* %59)
  store i8* %60, i8** %13, align 8
  br label %77

61:                                               ; preds = %52
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** @SVN_APR_LOCALE_CHARSET, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i8*, i8** %8, align 8
  %69 = call i8* (i32*, i32, i8*, ...) @apr_psprintf(i32* %66, i32 %67, i8* %68)
  store i8* %69, i8** %13, align 8
  br label %76

70:                                               ; preds = %61
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i8* (i32*, i32, i8*, ...) @apr_psprintf(i32* %71, i32 %72, i8* %73, i8* %74)
  store i8* %75, i8** %13, align 8
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %80 = call i32 @svn_strerror(i64 %78, i8* %79, i32 512)
  %81 = load i32, i32* @SVN_ERR_PLUGIN_LOAD_FAILURE, align 4
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %84 = call i32 @svn_error_create(i64 %82, i32* null, i8* %83)
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i32* @svn_error_createf(i32 %81, i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %85, i8* %86)
  store i32* %87, i32** %5, align 8
  br label %143

88:                                               ; preds = %48
  br label %89

89:                                               ; preds = %88, %47
  %90 = load i32*, i32** %9, align 8
  %91 = call %struct.TYPE_5__* @apr_palloc(i32* %90, i32 40)
  %92 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %92, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  store i32* %93, i32** %96, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** @SVN_APR_LOCALE_CHARSET, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %89
  %105 = load i32*, i32** %9, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i8* @apr_pstrdup(i32* %105, i8* %106)
  br label %110

108:                                              ; preds = %89
  %109 = load i8*, i8** %8, align 8
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i8* [ %107, %104 ], [ %109, %108 ]
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i8*, i8** @SVN_APR_LOCALE_CHARSET, align 8
  %117 = icmp ne i8* %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32*, i32** %9, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i8* @apr_pstrdup(i32* %119, i8* %120)
  br label %124

122:                                              ; preds = %110
  %123 = load i8*, i8** %7, align 8
  br label %124

124:                                              ; preds = %122, %118
  %125 = phi i8* [ %121, %118 ], [ %123, %122 ]
  %126 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  store i8* %125, i8** %128, align 8
  %129 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %124
  %135 = load i32*, i32** %9, align 8
  %136 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* @xlate_handle_node_cleanup, align 4
  %139 = load i32, i32* @apr_pool_cleanup_null, align 4
  %140 = call i32 @apr_pool_cleanup_register(i32* %135, %struct.TYPE_5__* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %134, %124
  %142 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %142, i32** %5, align 8
  br label %143

143:                                              ; preds = %141, %77
  %144 = load i32*, i32** %5, align 8
  ret i32* %144
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @apr_xlate_open(i32**, i8*, i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EINVAL(i64) #1

declare dso_local i64 @APR_STATUS_IS_ENOTIMPL(i64) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_strerror(i64, i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @svn_error_create(i64, i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @apr_palloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
