; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_copy_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_copy_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32, i32* }
%struct.TYPE_19__ = type { i32 }

@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Cannot copy between two different filesystems ('%s' and '%s')\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Copy from mutable tree not currently supported\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Copy immutable tree not supported\00", align 1
@open_path_last_optional = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_path_change_replace = common dso_local global i64 0, align 8
@svn_fs_path_change_add = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i8*, i32, i32*)* @copy_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_helper(%struct.TYPE_20__* %0, i8* %1, %struct.TYPE_20__* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %24 = call i32* @root_txn_id(%struct.TYPE_20__* %23)
  store i32* %24, i32** %16, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @fs_same_p(i32* %17, %struct.TYPE_22__* %27, %struct.TYPE_22__* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %38 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @svn_error_createf(i32 %37, i32* null, i32 %38, i32 %43, i32 %48)
  store i32* %49, i32** %7, align 8
  br label %240

50:                                               ; preds = %6
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %57 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32* @svn_error_create(i32 %56, i32* null, i32 %57)
  store i32* %58, i32** %7, align 8
  br label %240

59:                                               ; preds = %50
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %66 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32* @svn_error_create(i32 %65, i32* null, i32 %66)
  store i32* %67, i32** %7, align 8
  br label %240

68:                                               ; preds = %59
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @get_dag(i32** %14, %struct.TYPE_20__* %69, i8* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* @open_path_last_optional, align 4
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @open_path(%struct.TYPE_21__** %15, %struct.TYPE_20__* %74, i8* %75, i32 %76, i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %68
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @svn_fs_fs__allow_locked_operation(i8* %88, %struct.TYPE_22__* %91, i32 %92, i32 %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  br label %97

97:                                               ; preds = %87, %68
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @svn_fs_fs__dag_get_id(i32* %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @svn_fs_fs__dag_get_id(i32* %107)
  %109 = call i64 @svn_fs_fs__id_eq(i32 %104, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %112, i32** %7, align 8
  br label %240

113:                                              ; preds = %102, %97
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %236, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load i64, i64* @svn_fs_path_change_replace, align 8
  store i64 %124, i64* %18, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = call i64 @svn_fs_fs__fs_supports_mergeinfo(%struct.TYPE_22__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @svn_fs_fs__dag_get_mergeinfo_count(i64* %21, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %136

136:                                              ; preds = %130, %123
  br label %139

137:                                              ; preds = %118
  %138 = load i64, i64* @svn_fs_path_change_add, align 8
  store i64 %138, i64* %18, align 8
  store i64 0, i64* %21, align 8
  br label %139

139:                                              ; preds = %137, %136
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = call i64 @svn_fs_fs__fs_supports_mergeinfo(%struct.TYPE_22__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32*, i32** %14, align 8
  %147 = call i32 @svn_fs_fs__dag_get_mergeinfo_count(i64* %22, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  br label %149

149:                                              ; preds = %145, %139
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @make_path_mutable(%struct.TYPE_20__* %150, %struct.TYPE_19__* %153, i8* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load i8*, i8** %9, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = call i8* @svn_fs__canonicalize_abspath(i8* %158, i32* %159)
  store i8* %160, i8** %20, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i8*, i8** %20, align 8
  %175 = load i32*, i32** %16, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @svn_fs_fs__dag_copy(i32 %165, i32 %168, i32* %169, i32 %170, i32 %173, i8* %174, i32* %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  %179 = load i64, i64* %18, align 8
  %180 = load i64, i64* @svn_fs_path_change_add, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %149
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = call i32 @parent_path_path(%struct.TYPE_21__* %184, i32* %185)
  %187 = load i32*, i32** %13, align 8
  %188 = call i32 @dag_node_cache_invalidate(%struct.TYPE_20__* %183, i32 %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  br label %190

190:                                              ; preds = %182, %149
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %192, align 8
  %194 = call i64 @svn_fs_fs__fs_supports_mergeinfo(%struct.TYPE_22__* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %190
  %197 = load i64, i64* %21, align 8
  %198 = load i64, i64* %22, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %196
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %202, align 8
  %204 = load i64, i64* %22, align 8
  %205 = load i64, i64* %21, align 8
  %206 = sub nsw i64 %204, %205
  %207 = load i32*, i32** %13, align 8
  %208 = call i32 @increment_mergeinfo_up_tree(%struct.TYPE_19__* %203, i64 %206, i32* %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  br label %210

210:                                              ; preds = %200, %196, %190
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = call i32 @get_dag(i32** %19, %struct.TYPE_20__* %211, i8* %212, i32* %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %217, align 8
  %219 = load i32*, i32** %16, align 8
  %220 = load i8*, i8** %11, align 8
  %221 = load i32*, i32** %19, align 8
  %222 = call i32 @svn_fs_fs__dag_get_id(i32* %221)
  %223 = load i64, i64* %18, align 8
  %224 = load i32, i32* @FALSE, align 4
  %225 = load i32, i32* @FALSE, align 4
  %226 = load i32, i32* @FALSE, align 4
  %227 = load i32*, i32** %14, align 8
  %228 = call i32 @svn_fs_fs__dag_node_kind(i32* %227)
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i8*, i8** %20, align 8
  %233 = load i32*, i32** %13, align 8
  %234 = call i32 @add_change(%struct.TYPE_22__* %218, i32* %219, i8* %220, i32 %222, i64 %223, i32 %224, i32 %225, i32 %226, i32 %228, i32 %231, i8* %232, i32* %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  br label %238

236:                                              ; preds = %113
  %237 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %238

238:                                              ; preds = %236, %210
  %239 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %239, i32** %7, align 8
  br label %240

240:                                              ; preds = %238, %111, %64, %55, %36
  %241 = load i32*, i32** %7, align 8
  ret i32* %241
}

declare dso_local i32* @root_txn_id(%struct.TYPE_20__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @fs_same_p(i32*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @get_dag(i32**, %struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i32 @open_path(%struct.TYPE_21__**, %struct.TYPE_20__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__allow_locked_operation(i8*, %struct.TYPE_22__*, i32, i32, i32*) #1

declare dso_local i64 @svn_fs_fs__id_eq(i32, i32) #1

declare dso_local i32 @svn_fs_fs__dag_get_id(i32*) #1

declare dso_local i64 @svn_fs_fs__fs_supports_mergeinfo(%struct.TYPE_22__*) #1

declare dso_local i32 @svn_fs_fs__dag_get_mergeinfo_count(i64*, i32*) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_copy(i32, i32, i32*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @dag_node_cache_invalidate(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @increment_mergeinfo_up_tree(%struct.TYPE_19__*, i64, i32*) #1

declare dso_local i32 @add_change(%struct.TYPE_22__*, i32*, i8*, i32, i64, i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_node_kind(i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
