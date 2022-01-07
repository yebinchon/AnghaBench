; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_p2l_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_p2l_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@SVN_ERR_FS_INDEX_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Offset %s too large in revision %ld\00", align 1
@APR_UINT32_MAX = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32, i32, i32*)* @get_p2l_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_p2l_keys(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, i32* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %14, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %13, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i32 @get_p2l_page_info(%struct.TYPE_11__* %16, %struct.TYPE_9__* %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %7
  %33 = load i32, i32* @SVN_ERR_FS_INDEX_OVERFLOW, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @apr_off_t_toa(i32* %35, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = call i32* @svn_error_createf(i32 %33, i32* null, i32 %34, i32 %37, i32 %38)
  store i32* %39, i32** %8, align 8
  br label %73

40:                                               ; preds = %7
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = bitcast %struct.TYPE_11__* %44 to i8*
  %46 = bitcast %struct.TYPE_11__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 32, i1 false)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = bitcast %struct.TYPE_10__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 32, i1 false)
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @APR_UINT32_MAX, align 8
  %55 = icmp sle i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store i64 %59, i64* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = bitcast %struct.TYPE_10__* %68 to i8*
  %70 = bitcast %struct.TYPE_10__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 32, i1 false)
  br label %71

71:                                               ; preds = %50, %47
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %8, align 8
  br label %73

73:                                               ; preds = %71, %32
  %74 = load i32*, i32** %8, align 8
  ret i32* %74
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_p2l_page_info(%struct.TYPE_11__*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_off_t_toa(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
