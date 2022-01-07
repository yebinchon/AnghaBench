; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_local.c_svn_wc__diff7.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_local.c_svn_wc__diff7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 (i32, i32, i32, i32, %struct.TYPE_14__*, i32)*, i32 (i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_14__*, i32)* }
%struct.diff_baton = type { i8*, i32, %struct.node_state_t*, i32*, %struct.TYPE_14__*, i32, i32 }
%struct.node_state_t = type { i32, %struct.node_state_t*, i32, i32, i32, i32, i64, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@diff_status_callback = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__diff7(i8** %0, i32* %1, %struct.TYPE_13__* %2, i8* %3, i32 %4, i32 %5, %struct.TYPE_15__* %6, %struct.TYPE_14__* %7, i32 %8, i8* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.diff_baton, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca %struct.node_state_t*, align 8
  store i8** %0, i8*** %13, align 8
  store i32* %1, i32** %14, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %31 = bitcast %struct.diff_baton* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 48, i1 false)
  %32 = load i8*, i8** %16, align 8
  %33 = call i32 @svn_dirent_is_absolute(i8* %32)
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %16, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32*, i32** %24, align 8
  %43 = call i32 @svn_wc__db_read_kind(i64* %26, i32 %37, i8* %38, i32 %39, i32 %40, i32 %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i8*, i8** %16, align 8
  %46 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load i8**, i8*** %13, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %12
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %16, align 8
  %54 = load i32*, i32** %24, align 8
  %55 = call i32 @svn_wc__db_is_wcroot(i32* %28, i32 %52, i8* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32, i32* %28, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %49
  %60 = load i8*, i8** %16, align 8
  %61 = load i32*, i32** %24, align 8
  %62 = call i8* @svn_dirent_dirname(i8* %60, i32* %61)
  %63 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %49
  br label %75

65:                                               ; preds = %12
  %66 = load i64, i64* %26, align 8
  %67 = load i64, i64* @svn_node_dir, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** %16, align 8
  %71 = load i32*, i32** %24, align 8
  %72 = call i8* @svn_dirent_dirname(i8* %70, i32* %71)
  %73 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %69, %65
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i8**, i8*** %13, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32*, i32** %23, align 8
  %80 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 @svn_dirent_skip_ancestor(i8* %81, i8* %82)
  %84 = call i8* @apr_pstrdup(i32* %79, i32 %83)
  %85 = load i8**, i8*** %13, align 8
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %78, %75
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i64, i64* %26, align 8
  %91 = load i64, i64* @svn_node_dir, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32*, i32** %14, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %86
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %97 = icmp ne %struct.TYPE_15__* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %105 = load i32*, i32** %23, align 8
  %106 = call i32 @svn_hash_from_cstring_keys(i32** %29, %struct.TYPE_15__* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = load i32*, i32** %29, align 8
  %112 = load i32*, i32** %23, align 8
  %113 = call %struct.TYPE_14__* @svn_wc__changelist_filter_tree_processor_create(%struct.TYPE_14__* %108, %struct.TYPE_13__* %109, i8* %110, i32* %111, i32* %112)
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %20, align 8
  br label %114

114:                                              ; preds = %103, %98, %95
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 5
  store i32 %117, i32* %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %120 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 4
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %120, align 8
  %121 = load i32, i32* %18, align 4
  %122 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 1
  store i32 %121, i32* %122, align 8
  %123 = load i32*, i32** %24, align 8
  %124 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 3
  store i32* %123, i32** %124, align 8
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %27, align 4
  br label %131

129:                                              ; preds = %114
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %27, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %16, align 8
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* @TRUE, align 4
  %139 = load i32, i32* @FALSE, align 4
  %140 = load i32, i32* @diff_status_callback, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i8*, i8** %22, align 8
  %143 = load i32*, i32** %24, align 8
  %144 = call i32 @svn_wc__internal_walk_status(i32 %134, i8* %135, i32 %136, i32 %137, i32 %138, i32 %139, i32* null, i32 %140, %struct.diff_baton* %25, i32 %141, i8* %142, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %146

146:                                              ; preds = %216, %131
  %147 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 2
  %148 = load %struct.node_state_t*, %struct.node_state_t** %147, align 8
  %149 = icmp ne %struct.node_state_t* %148, null
  br i1 %149, label %150, label %225

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 2
  %152 = load %struct.node_state_t*, %struct.node_state_t** %151, align 8
  store %struct.node_state_t* %152, %struct.node_state_t** %30, align 8
  %153 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %154 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %216, label %157

157:                                              ; preds = %150
  %158 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %159 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %193

162:                                              ; preds = %157
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load i32 (i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_14__*, i32)*, i32 (i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_14__*, i32)** %164, align 8
  %166 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %167 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %170 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %173 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %176 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %179 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %182 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %185 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %188 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %189 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 %165(i32 %168, i32 %171, i32 %174, i32 %177, i32 %180, i64 %183, i32 %186, %struct.TYPE_14__* %187, i32 %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  br label %215

193:                                              ; preds = %157
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32 (i32, i32, i32, i32, %struct.TYPE_14__*, i32)*, i32 (i32, i32, i32, i32, %struct.TYPE_14__*, i32)** %195, align 8
  %197 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %198 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %201 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %204 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %207 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %210 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %211 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 %196(i32 %199, i32 %202, i32 %205, i32 %208, %struct.TYPE_14__* %209, i32 %212)
  %214 = call i32 @SVN_ERR(i32 %213)
  br label %215

215:                                              ; preds = %193, %162
  br label %216

216:                                              ; preds = %215, %150
  %217 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %218 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %217, i32 0, i32 1
  %219 = load %struct.node_state_t*, %struct.node_state_t** %218, align 8
  %220 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %25, i32 0, i32 2
  store %struct.node_state_t* %219, %struct.node_state_t** %220, align 8
  %221 = load %struct.node_state_t*, %struct.node_state_t** %30, align 8
  %222 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @svn_pool_clear(i32 %223)
  br label %146

225:                                              ; preds = %146
  %226 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %226
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #2

declare dso_local i32 @svn_dirent_is_absolute(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_wc__db_read_kind(i64*, i32, i8*, i32, i32, i32, i32*) #2

declare dso_local i32 @svn_wc__db_is_wcroot(i32*, i32, i8*, i32*) #2

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #2

declare dso_local i8* @apr_pstrdup(i32*, i32) #2

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i8*) #2

declare dso_local i32 @svn_hash_from_cstring_keys(i32**, %struct.TYPE_15__*, i32*) #2

declare dso_local %struct.TYPE_14__* @svn_wc__changelist_filter_tree_processor_create(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*, i32*, i32*) #2

declare dso_local i32 @svn_wc__internal_walk_status(i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.diff_baton*, i32, i8*, i32*) #2

declare dso_local i32 @svn_pool_clear(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
