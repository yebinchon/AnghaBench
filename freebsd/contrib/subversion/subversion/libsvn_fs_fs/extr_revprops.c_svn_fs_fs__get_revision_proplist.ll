; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_svn_fs_fs__get_revision_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_svn_fs_fs__get_revision_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"Failed to parse revprops for r%ld.\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_23__* null, align 8
@SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not read revprops for revision %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @svn_fs_fs__get_revision_proplist(i32** %0, %struct.TYPE_22__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_24__, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i32**, i32*** %8, align 8
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @svn_fs_fs__ensure_revision_exists(i32 %28, %struct.TYPE_22__* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %37 = call i32 @svn_fs_fs__reset_revprop_cache(%struct.TYPE_22__* %36)
  br label %65

38:                                               ; preds = %6
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @prepare_revprop_cache(%struct.TYPE_22__* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32**, i32*** %8, align 8
  %50 = bitcast i32** %49 to i8**
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @svn_cache__get(i8** %50, i32* %16, i32 %53, %struct.TYPE_24__* %17, i32* %54)
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @apr_psprintf(i32* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = call i32 @SVN_ERR_W(i32 %55, i32 %58)
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %38
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %7, align 8
  br label %132

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64, %35
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @svn_fs_fs__is_packed_revprop(%struct.TYPE_22__* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %65
  %71 = load i32**, i32*** %8, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = call %struct.TYPE_23__* @read_non_packed_revprop(i32** %71, %struct.TYPE_22__* %72, i32 %73, i32 %74, i32* %75)
  store %struct.TYPE_23__* %76, %struct.TYPE_23__** %18, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %78 = icmp ne %struct.TYPE_23__* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %70
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @APR_STATUS_IS_ENOENT(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %79
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %93 = call %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__* %92)
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %7, align 8
  br label %132

94:                                               ; preds = %85
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %96 = call i32 @svn_error_clear(%struct.TYPE_23__* %95)
  %97 = load i32**, i32*** %8, align 8
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %94, %70
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = load i32**, i32*** %8, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @read_pack_revprop(%struct.TYPE_25__** %19, %struct.TYPE_22__* %110, i32 %111, i32 %112, i32 %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32**, i32*** %8, align 8
  store i32* %119, i32** %120, align 8
  br label %121

121:                                              ; preds = %109, %105, %99
  %122 = load i32**, i32*** %8, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %127 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* %10, align 4
  %129 = call %struct.TYPE_23__* @svn_error_createf(i32 %126, i32* null, i32 %127, i32 %128)
  store %struct.TYPE_23__* %129, %struct.TYPE_23__** %7, align 8
  br label %132

130:                                              ; preds = %121
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %131, %struct.TYPE_23__** %7, align 8
  br label %132

132:                                              ; preds = %130, %125, %91, %62
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  ret %struct.TYPE_23__* %133
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__ensure_revision_exists(i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @svn_fs_fs__reset_revprop_cache(%struct.TYPE_22__*) #1

declare dso_local i32 @prepare_revprop_cache(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_cache__get(i8**, i32*, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @svn_fs_fs__is_packed_revprop(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_23__* @read_non_packed_revprop(i32**, %struct.TYPE_22__*, i32, i32, i32*) #1

declare dso_local i32 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_23__*) #1

declare dso_local i32 @read_pack_revprop(%struct.TYPE_25__**, %struct.TYPE_22__*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
