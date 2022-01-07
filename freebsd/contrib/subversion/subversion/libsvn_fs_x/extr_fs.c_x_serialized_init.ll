; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs.c_x_serialized_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs.c_x_serialized_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32* }

@SVN_FSX_SHARED_USERDATA_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't fetch FSX shared data\00", align 1
@SVN_FS_X__USE_LOCK_MUTEX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Can't store FSX shared data\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, i32*)* @x_serialized_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_serialized_init(%struct.TYPE_9__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @SVN_FSX_SHARED_USERDATA_PREFIX, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SVN_VA_NULL, align 4
  %33 = call i8* @apr_pstrcat(i32* %24, i32 %25, i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @apr_pool_userdata_get(i8** %10, i8* %34, i32* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %3
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32* @svn_error_wrap_apr(i64 %40, i32 %41)
  store i32* %42, i32** %4, align 8
  br label %97

43:                                               ; preds = %3
  %44 = load i8*, i8** %10, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %11, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %92, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = call %struct.TYPE_7__* @apr_pcalloc(i32* %49, i32 24)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %11, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* @SVN_FS_X__USE_LOCK_MUTEX, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @svn_mutex__init(i32* %55, i32 %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* @SVN_FS_X__USE_LOCK_MUTEX, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @svn_mutex__init(i32* %61, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* @SVN_FS_X__USE_LOCK_MUTEX, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @svn_mutex__init(i32* %67, i32 %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @svn_mutex__init(i32* %73, i32 %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i8* @apr_pstrdup(i32* %78, i8* %79)
  store i8* %80, i8** %9, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @apr_pool_userdata_set(%struct.TYPE_7__* %81, i8* %82, i32* null, i32* %83)
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %48
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %90 = call i32* @svn_error_wrap_apr(i64 %88, i32 %89)
  store i32* %90, i32** %4, align 8
  br label %97

91:                                               ; preds = %48
  br label %92

92:                                               ; preds = %91, %43
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %95, align 8
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %96, i32** %4, align 8
  br label %97

97:                                               ; preds = %92, %87, %39
  %98 = load i32*, i32** %4, align 8
  ret i32* %98
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @apr_pstrcat(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @apr_pool_userdata_get(i8**, i8*, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mutex__init(i32*, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i64 @apr_pool_userdata_set(%struct.TYPE_7__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
