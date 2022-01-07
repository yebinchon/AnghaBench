; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_shards_spanned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_shards_spanned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_13__*, %struct.TYPE_10__*, i32, i32*)* @shards_spanned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @shards_spanned(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_10__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %16, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @svn_pool_create(i32* %33)
  store i32* %34, i32** %13, align 8
  br label %35

35:                                               ; preds = %70, %5
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %71

46:                                               ; preds = %44
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_11__* %17 to i8*
  %50 = bitcast %struct.TYPE_11__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 8 %50, i64 4, i1 false)
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @svn_pool_clear(i32* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_fs_x__get_node_revision(%struct.TYPE_10__** %8, %struct.TYPE_13__* %53, %struct.TYPE_11__* %17, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @svn_fs_x__get_revnum(i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %46
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %66, %46
  br label %35

71:                                               ; preds = %44
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @svn_pool_destroy(i32* %72)
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %76
}

declare dso_local i32* @svn_pool_create(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_node_revision(%struct.TYPE_10__**, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
