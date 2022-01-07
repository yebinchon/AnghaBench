; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_send_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_send_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i32, %struct.TYPE_8__*, i32*)*, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@interesting_merge = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i64, i32*, i8*, i8*, i32*, i8*, %struct.TYPE_9__*, i32*)* @send_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_log(i32 %0, i32* %1, i64 %2, i32* %3, i8* %4, i8* %5, i32* %6, i8* %7, %struct.TYPE_9__* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_8__, align 8
  %23 = alloca %struct.TYPE_9__, align 8
  %24 = alloca %struct.TYPE_10__, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %12, align 4
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i8* %7, i8** %19, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = bitcast %struct.TYPE_8__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %28 = bitcast %struct.TYPE_9__* %23 to i8*
  %29 = bitcast %struct.TYPE_9__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 32, i1 false)
  %30 = load i8*, i8** %17, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %10
  %33 = load i64, i64* %14, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i64, i64* %14, align 8
  %37 = call i64 @apr_hash_count(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i64, i64* @FALSE, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %53, align 8
  %54 = load i32, i32* @interesting_merge, align 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %56, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %20, align 8
  br label %60

57:                                               ; preds = %35, %32, %10
  %58 = load i64, i64* @TRUE, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %39
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %65 = load i32*, i32** %21, align 8
  %66 = call i32 @fill_log_entry(%struct.TYPE_8__* %22, i32 %61, i32* %62, i32* %63, %struct.TYPE_9__* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i8*, i8** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %60
  %76 = load i32*, i32** %15, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load i8*, i8** %17, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i64 @svn_bit_array__get(i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %11, align 8
  br label %110

88:                                               ; preds = %81
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i64, i64* @TRUE, align 8
  %92 = call i32 @svn_bit_array__set(i32* %89, i32 %90, i64 %91)
  br label %93

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %78, %75
  %95 = load i32*, i32** %21, align 8
  %96 = call i32* @svn_pool_create(i32* %95)
  store i32* %96, i32** %25, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %25, align 8
  %104 = call i32 %99(i32 %102, %struct.TYPE_8__* %22, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %25, align 8
  %107 = call i32 @svn_pool_destroy(i32* %106)
  br label %108

108:                                              ; preds = %94, %60
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %109, i32** %11, align 8
  br label %110

110:                                              ; preds = %108, %86
  %111 = load i32*, i32** %11, align 8
  ret i32* %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @apr_hash_count(i64) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @fill_log_entry(%struct.TYPE_8__*, i32, i32*, i32*, %struct.TYPE_9__*, i32*) #2

declare dso_local i64 @svn_bit_array__get(i32*, i32) #2

declare dso_local i32 @svn_bit_array__set(i32*, i32, i64) #2

declare dso_local i32* @svn_pool_create(i32*) #2

declare dso_local i32 @svn_pool_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
