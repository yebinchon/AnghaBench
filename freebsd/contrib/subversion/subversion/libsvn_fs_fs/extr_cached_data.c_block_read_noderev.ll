; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_block_read_noderev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_block_read_noderev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i64, i32*, i32*)* @block_read_noderev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @block_read_noderev(i32** %0, %struct.TYPE_14__* %1, i32* %2, %struct.TYPE_15__* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_16__, align 4
  %19 = alloca i64, align 8
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %16, align 8
  %23 = bitcast %struct.TYPE_16__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 12, i1 false)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %7
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %8, align 8
  br label %97

43:                                               ; preds = %36, %7
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @svn_cache__has_key(i64* %19, i64 %54, %struct.TYPE_16__* %18, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i64, i64* %19, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %8, align 8
  br label %97

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %46, %43
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @read_item(i32** %17, %struct.TYPE_14__* %64, i32* %65, %struct.TYPE_15__* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32**, i32*** %9, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @svn_fs_fs__read_noderev(i32** %70, i32* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = load i32**, i32*** %9, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @fixup_node_revision(%struct.TYPE_14__* %76, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %63
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32**, i32*** %9, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @svn_cache__set(i64 %89, %struct.TYPE_16__* %18, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %95

95:                                               ; preds = %86, %63
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %96, i32** %8, align 8
  br label %97

97:                                               ; preds = %95, %60, %41
  %98 = load i32*, i32** %8, align 8
  ret i32* %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_cache__has_key(i64*, i64, %struct.TYPE_16__*, i32*) #2

declare dso_local i32 @read_item(i32**, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @svn_fs_fs__read_noderev(i32**, i32*, i32*, i32*) #2

declare dso_local i32 @fixup_node_revision(%struct.TYPE_14__*, i32*, i32*) #2

declare dso_local i32 @svn_cache__set(i64, %struct.TYPE_16__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
