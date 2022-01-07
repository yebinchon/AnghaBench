; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_svn_fs_x__get_revision_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_svn_fs_x__get_revision_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_26__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Could not read revprops for revision %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @svn_fs_x__get_revision_proplist(i32** %0, %struct.TYPE_25__* %1, i32 %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_23__, align 4
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.TYPE_27__*, align 8
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %16, align 8
  %24 = load i32**, i32*** %9, align 8
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i32 @svn_fs_x__ensure_revision_exists(i32 %25, %struct.TYPE_25__* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %7
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %34 = call i32 @is_generation_valid(%struct.TYPE_25__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %7
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @read_revprop_generation(%struct.TYPE_25__* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i64 @has_revprop_cache(%struct.TYPE_25__* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = bitcast %struct.TYPE_23__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 12, i1 false)
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32**, i32*** %9, align 8
  %58 = bitcast i32** %57 to i8**
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @svn_cache__get(i8** %58, i64* %17, i32 %61, %struct.TYPE_23__* %18, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_26__* %68, %struct.TYPE_26__** %8, align 8
  br label %125

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69, %44, %41
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @svn_fs_x__is_packed_revprop(%struct.TYPE_25__* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %70
  %76 = load i32**, i32*** %9, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = call %struct.TYPE_26__* @read_non_packed_revprop(i32** %76, %struct.TYPE_25__* %77, i32 %78, i32* %79, i32* %80)
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %19, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %83 = icmp ne %struct.TYPE_26__* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @APR_STATUS_IS_ENOENT(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %92 = call %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__* %91)
  store %struct.TYPE_26__* %92, %struct.TYPE_26__** %8, align 8
  br label %125

93:                                               ; preds = %84
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %95 = call i32 @svn_error_clear(%struct.TYPE_26__* %94)
  %96 = load i32**, i32*** %9, align 8
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %93, %75
  br label %98

98:                                               ; preds = %97, %70
  %99 = load i32**, i32*** %9, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @FALSE, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @read_pack_revprop(%struct.TYPE_27__** %20, %struct.TYPE_25__* %103, i32 %104, i32 %105, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32**, i32*** %9, align 8
  store i32* %112, i32** %113, align 8
  br label %114

114:                                              ; preds = %102, %98
  %115 = load i32**, i32*** %9, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %120 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* %11, align 4
  %122 = call %struct.TYPE_26__* @svn_error_createf(i32 %119, i32* null, i32 %120, i32 %121)
  store %struct.TYPE_26__* %122, %struct.TYPE_26__** %8, align 8
  br label %125

123:                                              ; preds = %114
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_26__* %124, %struct.TYPE_26__** %8, align 8
  br label %125

125:                                              ; preds = %123, %118, %90, %67
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  ret %struct.TYPE_26__* %126
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__ensure_revision_exists(i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @is_generation_valid(%struct.TYPE_25__*) #1

declare dso_local i32 @read_revprop_generation(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @has_revprop_cache(%struct.TYPE_25__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_cache__get(i8**, i64*, i32, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @svn_fs_x__is_packed_revprop(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_26__* @read_non_packed_revprop(i32**, %struct.TYPE_25__*, i32, i32*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_26__*) #1

declare dso_local i32 @read_pack_revprop(%struct.TYPE_27__**, %struct.TYPE_25__*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
