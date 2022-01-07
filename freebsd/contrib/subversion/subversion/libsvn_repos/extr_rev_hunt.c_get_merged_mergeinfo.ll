; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_get_merged_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_get_merged_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.path_revision = type { i8*, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { i8*, i32 }

@svn_tristate_false = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@svn_mergeinfo_inherited = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i32**, %struct.TYPE_20__*, %struct.path_revision*, i32*, i32*)* @get_merged_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @get_merged_mergeinfo(i32** %0, %struct.TYPE_20__* %1, %struct.path_revision* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.path_revision*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.path_revision* %2, %struct.path_revision** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.path_revision*, %struct.path_revision** %9, align 8
  %24 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.path_revision*, %struct.path_revision** %9, align 8
  %30 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_22__* @svn_fs_revision_root(i32** %17, i32 %28, i64 %31, i32* %32)
  %34 = call i32 @SVN_ERR(%struct.TYPE_22__* %33)
  %35 = load i32*, i32** %17, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call %struct.TYPE_22__* @svn_fs_paths_changed3(i32** %21, i32* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(%struct.TYPE_22__* %38)
  %40 = load i32*, i32** %21, align 8
  %41 = call %struct.TYPE_22__* @svn_fs_path_change_get(%struct.TYPE_21__** %22, i32* %40)
  %42 = call i32 @SVN_ERR(%struct.TYPE_22__* %41)
  br label %43

43:                                               ; preds = %88, %5
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %45 = icmp ne %struct.TYPE_21__* %44, null
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %46
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @svn_tristate_false, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %51
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = call i64 @svn_fspath__skip_ancestor(i8* %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %57
  %66 = load i8*, i8** %20, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i8*, i8** %20, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @svn_fspath__skip_ancestor(i8* %69, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %68, %65
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @apr_pstrmemdup(i32* %77, i8* %81, i32 %85)
  store i8* %86, i8** %20, align 8
  br label %87

87:                                               ; preds = %76, %68
  br label %88

88:                                               ; preds = %87, %57, %51, %46
  %89 = load i32*, i32** %21, align 8
  %90 = call %struct.TYPE_22__* @svn_fs_path_change_get(%struct.TYPE_21__** %22, i32* %89)
  %91 = call i32 @SVN_ERR(%struct.TYPE_22__* %90)
  br label %43

92:                                               ; preds = %43
  %93 = load i8*, i8** %20, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32**, i32*** %7, align 8
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %97, %struct.TYPE_22__** %6, align 8
  br label %190

98:                                               ; preds = %92
  %99 = load i32*, i32** %17, align 8
  %100 = load %struct.path_revision*, %struct.path_revision** %9, align 8
  %101 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %104 = load i32, i32* @TRUE, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call %struct.TYPE_22__* @svn_fs__get_mergeinfo_for_path(i32** %12, i32* %99, i8* %102, i32 %103, i32 %104, i32* %105, i32* %106)
  store %struct.TYPE_22__* %107, %struct.TYPE_22__** %16, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %109 = icmp ne %struct.TYPE_22__* %108, null
  br i1 %109, label %110, label %124

110:                                              ; preds = %98
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %118 = call i32 @svn_error_clear(%struct.TYPE_22__* %117)
  %119 = load i32**, i32*** %7, align 8
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %6, align 8
  br label %190

121:                                              ; preds = %110
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %123 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %122)
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %6, align 8
  br label %190

124:                                              ; preds = %98
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.path_revision*, %struct.path_revision** %9, align 8
  %129 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 1
  %132 = load i32*, i32** %11, align 8
  %133 = call %struct.TYPE_22__* @svn_fs_revision_root(i32** %18, i32 %127, i64 %131, i32* %132)
  %134 = call i32 @SVN_ERR(%struct.TYPE_22__* %133)
  %135 = load i32*, i32** %18, align 8
  %136 = load %struct.path_revision*, %struct.path_revision** %9, align 8
  %137 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %140 = load i32, i32* @TRUE, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = call %struct.TYPE_22__* @svn_fs__get_mergeinfo_for_path(i32** %13, i32* %135, i8* %138, i32 %139, i32 %140, i32* %141, i32* %142)
  store %struct.TYPE_22__* %143, %struct.TYPE_22__** %16, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %145 = icmp ne %struct.TYPE_22__* %144, null
  br i1 %145, label %146, label %163

146:                                              ; preds = %124
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %152, %146
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %160 = call i32 @svn_error_clear(%struct.TYPE_22__* %159)
  %161 = load i32**, i32*** %7, align 8
  store i32* null, i32** %161, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %162, %struct.TYPE_22__** %6, align 8
  br label %190

163:                                              ; preds = %152, %124
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %165 = call i32 @SVN_ERR(%struct.TYPE_22__* %164)
  br label %166

166:                                              ; preds = %163
  %167 = load i32*, i32** %13, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* @FALSE, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = call %struct.TYPE_22__* @svn_mergeinfo_diff2(i32** %14, i32** %15, i32* %167, i32* %168, i32 %169, i32* %170, i32* %171)
  %173 = call i32 @SVN_ERR(%struct.TYPE_22__* %172)
  %174 = load i32*, i32** %15, align 8
  %175 = load i32*, i32** %14, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = call %struct.TYPE_22__* @svn_mergeinfo_merge2(i32* %174, i32* %175, i32* %176, i32* %177)
  %179 = call i32 @SVN_ERR(%struct.TYPE_22__* %178)
  %180 = load i32*, i32** %15, align 8
  %181 = call i64 @apr_hash_count(i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %166
  %184 = load i32*, i32** %15, align 8
  %185 = load i32**, i32*** %7, align 8
  store i32* %184, i32** %185, align 8
  br label %188

186:                                              ; preds = %166
  %187 = load i32**, i32*** %7, align 8
  store i32* null, i32** %187, align 8
  br label %188

188:                                              ; preds = %186, %183
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %189, %struct.TYPE_22__** %6, align 8
  br label %190

190:                                              ; preds = %188, %158, %121, %116, %95
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  ret %struct.TYPE_22__* %191
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_fs_revision_root(i32**, i32, i64, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_fs_paths_changed3(i32**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_fs_path_change_get(%struct.TYPE_21__**, i32*) #1

declare dso_local i64 @svn_fspath__skip_ancestor(i8*, i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_22__* @svn_fs__get_mergeinfo_for_path(i32**, i32*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_mergeinfo_diff2(i32**, i32**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_mergeinfo_merge2(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
