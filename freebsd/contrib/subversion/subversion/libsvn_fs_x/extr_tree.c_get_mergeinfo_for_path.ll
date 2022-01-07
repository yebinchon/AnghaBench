; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_get_mergeinfo_for_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_get_mergeinfo_for_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_mergeinfo_nearest_ancestor = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_mergeinfo_explicit = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Node-revision '%s@%ld' claims to have mergeinfo but doesn't\00", align 1
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i32**, %struct.TYPE_21__*, i8*, i64, i64, i32*, i32*)* @get_mergeinfo_for_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @get_mergeinfo_for_path(i32** %0, %struct.TYPE_21__* %1, i8* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32**, i32*** %9, align 8
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_20__** %16, %struct.TYPE_21__* %23, i8* %24, i32 0, i32 %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @svn_mergeinfo_nearest_ancestor, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %7
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %8, align 8
  br label %149

40:                                               ; preds = %33, %7
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @svn_mergeinfo_nearest_ancestor, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %17, align 8
  br label %50

48:                                               ; preds = %40
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %17, align 8
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %75, %50
  %52 = load i64, i64* @TRUE, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @svn_fs_x__dag_has_mergeinfo(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %76

61:                                               ; preds = %54
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @svn_mergeinfo_explicit, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %8, align 8
  br label %149

67:                                               ; preds = %61
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %17, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %72 = icmp ne %struct.TYPE_20__* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %74, %struct.TYPE_22__** %8, align 8
  br label %149

75:                                               ; preds = %67
  br label %51

76:                                               ; preds = %60, %51
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @svn_fs_x__dag_get_proplist(i32** %18, i32 %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %18, align 8
  %85 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %86 = call %struct.TYPE_19__* @svn_hash_gets(i32* %84, i32 %85)
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %19, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %88 = icmp ne %struct.TYPE_19__* %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %91 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @parent_path_path(%struct.TYPE_20__* %92, i32* %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_22__* @svn_error_createf(i32 %90, i32* null, i32 %91, i32 %94, i32 %97)
  store %struct.TYPE_22__* %98, %struct.TYPE_22__** %8, align 8
  br label %149

99:                                               ; preds = %76
  %100 = load i32**, i32*** %9, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %14, align 8
  %105 = call %struct.TYPE_22__* @svn_mergeinfo_parse(i32** %100, i32 %103, i32* %104)
  store %struct.TYPE_22__* %105, %struct.TYPE_22__** %20, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %107 = icmp ne %struct.TYPE_22__* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %99
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %116 = call i32 @svn_error_clear(%struct.TYPE_22__* %115)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %20, align 8
  %117 = load i32**, i32*** %9, align 8
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %114, %108
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %120 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %119)
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %8, align 8
  br label %149

121:                                              ; preds = %99
  %122 = load i64, i64* %13, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %121
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %127 = icmp ne %struct.TYPE_20__* %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = load i32**, i32*** %9, align 8
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %132 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %133 = load i64, i64* @TRUE, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @svn_mergeinfo_inheritable2(i32** %21, i32* %130, i32* null, i32 %131, i32 %132, i64 %133, i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load i32**, i32*** %9, align 8
  %139 = load i32*, i32** %21, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = call i32 @parent_path_relpath(%struct.TYPE_20__* %140, %struct.TYPE_20__* %141, i32* %142)
  %144 = load i32*, i32** %14, align 8
  %145 = call i32 @svn_fs__append_to_merged_froms(i32** %138, i32* %139, i32 %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  br label %147

147:                                              ; preds = %128, %124, %121
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %148, %struct.TYPE_22__** %8, align 8
  br label %149

149:                                              ; preds = %147, %118, %89, %73, %65, %38
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  ret %struct.TYPE_22__* %150
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_dag_path(%struct.TYPE_20__**, %struct.TYPE_21__*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i64 @svn_fs_x__dag_has_mergeinfo(i32) #1

declare dso_local i32 @svn_fs_x__dag_get_proplist(i32**, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_22__* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_mergeinfo_parse(i32**, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local i32 @svn_mergeinfo_inheritable2(i32**, i32*, i32*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_fs__append_to_merged_froms(i32**, i32*, i32, i32*) #1

declare dso_local i32 @parent_path_relpath(%struct.TYPE_20__*, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
