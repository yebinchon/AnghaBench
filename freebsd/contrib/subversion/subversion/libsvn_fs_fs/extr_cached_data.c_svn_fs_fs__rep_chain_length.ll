; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__rep_chain_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__rep_chain_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_fs_fs__rep_delta = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__rep_chain_length(i32* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_10__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %11, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %5
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 1, %34 ]
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32* @svn_pool_create(i32* %39)
  store i32* %40, i32** %14, align 8
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %18, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = bitcast %struct.TYPE_12__* %19 to i8*
  %49 = bitcast %struct.TYPE_12__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 16, i1 false)
  store i32* null, i32** %20, align 8
  br label %50

50:                                               ; preds = %108, %35
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @svn_pool_clear(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sdiv i32 %54, %55
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %59, %50
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @create_rep_state_body(i32** %22, %struct.TYPE_11__** %21, i32** %20, %struct.TYPE_12__* %19, %struct.TYPE_10__* %67, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %85 = call i32 @svn_fs_fs__id_txn_reset(i32* %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @svn_fs_fs__rep_delta, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = srem i32 %94, 16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %66
  store i32* null, i32** %20, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @svn_pool_clear(i32* %98)
  br label %100

100:                                              ; preds = %97, %66
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i1 [ false, %101 ], [ %107, %104 ]
  br i1 %109, label %50, label %110

110:                                              ; preds = %108
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @svn_pool_destroy(i32* %115)
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @svn_pool_destroy(i32* %117)
  %119 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %119
}

declare dso_local i32* @svn_pool_create(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_rep_state_body(i32**, %struct.TYPE_11__**, i32**, %struct.TYPE_12__*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__id_txn_reset(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
