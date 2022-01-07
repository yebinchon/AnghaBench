; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_get_mergeinfo_for_path_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_get_mergeinfo_for_path_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_mergeinfo_nearest_ancestor = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_21__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_mergeinfo_explicit = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Node-revision '%s@%ld' claims to have mergeinfo but doesn't\00", align 1
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i32**, %struct.TYPE_20__*, i8*, i64, i64, i32*, i32*)* @get_mergeinfo_for_path_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @get_mergeinfo_for_path_internal(i32** %0, %struct.TYPE_20__* %1, i8* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i8* @svn_fs__canonicalize_abspath(i8* %23, i32* %24)
  store i8* %25, i8** %11, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32*, i32** %15, align 8
  %30 = call i32 @open_path(%struct.TYPE_22__** %16, %struct.TYPE_20__* %26, i8* %27, i32 0, i32 %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @svn_mergeinfo_nearest_ancestor, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %7
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = icmp ne %struct.TYPE_22__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %8, align 8
  br label %152

42:                                               ; preds = %35, %7
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @svn_mergeinfo_nearest_ancestor, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  store %struct.TYPE_22__* %49, %struct.TYPE_22__** %17, align 8
  br label %52

50:                                               ; preds = %42
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %17, align 8
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %79, %52
  %54 = load i64, i64* @TRUE, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @svn_fs_fs__dag_has_mergeinfo(i64* %20, i32 %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %20, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %80

65:                                               ; preds = %56
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @svn_mergeinfo_explicit, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %70, %struct.TYPE_21__** %8, align 8
  br label %152

71:                                               ; preds = %65
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  store %struct.TYPE_22__* %74, %struct.TYPE_22__** %17, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %76 = icmp ne %struct.TYPE_22__* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %8, align 8
  br label %152

79:                                               ; preds = %71
  br label %53

80:                                               ; preds = %64, %53
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @svn_fs_fs__dag_get_proplist(i32** %18, i32 %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %18, align 8
  %88 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %89 = call %struct.TYPE_19__* @svn_hash_gets(i32* %87, i32 %88)
  store %struct.TYPE_19__* %89, %struct.TYPE_19__** %19, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %91 = icmp ne %struct.TYPE_19__* %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %94 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @parent_path_path(%struct.TYPE_22__* %95, i32* %96)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.TYPE_21__* @svn_error_createf(i32 %93, i32* null, i32 %94, i32 %97, i32 %100)
  store %struct.TYPE_21__* %101, %struct.TYPE_21__** %8, align 8
  br label %152

102:                                              ; preds = %80
  %103 = load i32**, i32*** %9, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %14, align 8
  %108 = call %struct.TYPE_21__* @svn_mergeinfo_parse(i32** %103, i32 %106, i32* %107)
  store %struct.TYPE_21__* %108, %struct.TYPE_21__** %21, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %110 = icmp ne %struct.TYPE_21__* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %102
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %119 = call i32 @svn_error_clear(%struct.TYPE_21__* %118)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %21, align 8
  %120 = load i32**, i32*** %9, align 8
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %117, %111
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %123 = call %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__* %122)
  store %struct.TYPE_21__* %123, %struct.TYPE_21__** %8, align 8
  br label %152

124:                                              ; preds = %102
  %125 = load i64, i64* %13, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %124
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %130 = icmp ne %struct.TYPE_22__* %128, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %127
  %132 = load i32**, i32*** %9, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %135 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %136 = load i64, i64* @TRUE, align 8
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 @svn_mergeinfo_inheritable2(i32** %22, i32* %133, i32* null, i32 %134, i32 %135, i64 %136, i32* %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32**, i32*** %9, align 8
  %142 = load i32*, i32** %22, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = call i32 @parent_path_relpath(%struct.TYPE_22__* %143, %struct.TYPE_22__* %144, i32* %145)
  %147 = load i32*, i32** %14, align 8
  %148 = call i32 @svn_fs__append_to_merged_froms(i32** %141, i32* %142, i32 %146, i32* %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  br label %150

150:                                              ; preds = %131, %127, %124
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %151, %struct.TYPE_21__** %8, align 8
  br label %152

152:                                              ; preds = %150, %121, %92, %77, %69, %40
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  ret %struct.TYPE_21__* %153
}

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_22__**, %struct.TYPE_20__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_has_mergeinfo(i64*, i32) #1

declare dso_local i32 @svn_fs_fs__dag_get_proplist(i32**, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_21__* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_22__*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_mergeinfo_parse(i32**, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__*) #1

declare dso_local i32 @svn_mergeinfo_inheritable2(i32**, i32*, i32*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_fs__append_to_merged_froms(i32**, i32*, i32, i32*) #1

declare dso_local i32 @parent_path_relpath(%struct.TYPE_22__*, %struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
