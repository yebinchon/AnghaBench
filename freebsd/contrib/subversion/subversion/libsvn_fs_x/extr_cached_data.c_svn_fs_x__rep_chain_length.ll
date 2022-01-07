; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__rep_chain_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__rep_chain_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_fs_x__rep_delta = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__rep_chain_length(i32* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_15__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %11, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @svn_fs_x__get_revnum(i64 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = call i32* @svn_pool_create(i32* %38)
  store i32* %39, i32** %18, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = bitcast %struct.TYPE_12__* %19 to i8*
  %42 = bitcast %struct.TYPE_12__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  store i32* null, i32** %20, align 8
  br label %43

43:                                               ; preds = %103, %5
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @svn_fs_x__get_revnum(i64 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sdiv i32 %48, %49
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %53, %43
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = call i32 @create_rep_state_body(i32** %22, %struct.TYPE_13__** %21, i32** %20, %struct.TYPE_12__* %19, %struct.TYPE_15__* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @svn_fs_x__change_set_by_rev(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @svn_fs_x__rep_delta, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = srem i32 %88, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %59
  store i32* null, i32** %20, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @svn_pool_clear(i32* %92)
  br label %94

94:                                               ; preds = %91, %59
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi i1 [ false, %95 ], [ %102, %98 ]
  br i1 %104, label %43, label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %14, align 4
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %18, align 8
  %111 = call i32 @svn_pool_destroy(i32* %110)
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %112
}

declare dso_local i32 @svn_fs_x__get_revnum(i64) #1

declare dso_local i32* @svn_pool_create(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_rep_state_body(i32**, %struct.TYPE_13__**, i32**, %struct.TYPE_12__*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i64 @svn_fs_x__change_set_by_rev(i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
