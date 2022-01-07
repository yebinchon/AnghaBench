; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_local.c_ensure_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_local.c_ensure_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.diff_baton = type { %struct.TYPE_12__*, i32, %struct.node_state_t*, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* (i32**, i8**, i8**, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_12__*, i32*, i32*)* }
%struct.node_state_t = type { i8*, i32*, i32*, %struct.node_state_t*, i8*, i8*, i8*, i8*, i8* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.diff_baton*, i8*, i64, i32*)* @ensure_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @ensure_state(%struct.diff_baton* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.diff_baton*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.node_state_t*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.diff_baton* %0, %struct.diff_baton** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %16 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %15, i32 0, i32 2
  %17 = load %struct.node_state_t*, %struct.node_state_t** %16, align 8
  %18 = icmp ne %struct.node_state_t* %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %4
  %20 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %21 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @svn_dirent_skip_ancestor(i32 %22, i8* %23)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %5, align 8
  br label %213

29:                                               ; preds = %19
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i8* @svn_dirent_dirname(i8* %35, i32* %36)
  %38 = load i64, i64* @FALSE, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call %struct.TYPE_11__* @ensure_state(%struct.diff_baton* %34, i8* %37, i64 %38, i32* %39)
  %41 = call i32 @SVN_ERR(%struct.TYPE_11__* %40)
  br label %42

42:                                               ; preds = %33, %29
  br label %64

43:                                               ; preds = %4
  %44 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %45 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %44, i32 0, i32 2
  %46 = load %struct.node_state_t*, %struct.node_state_t** %45, align 8
  %47 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @svn_dirent_is_child(i8* %48, i8* %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i8* @svn_dirent_dirname(i8* %54, i32* %55)
  %57 = load i64, i64* @FALSE, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call %struct.TYPE_11__* @ensure_state(%struct.diff_baton* %53, i8* %56, i64 %57, i32* %58)
  %60 = call i32 @SVN_ERR(%struct.TYPE_11__* %59)
  br label %63

61:                                               ; preds = %43
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %5, align 8
  br label %213

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %66 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %65, i32 0, i32 2
  %67 = load %struct.node_state_t*, %struct.node_state_t** %66, align 8
  %68 = icmp ne %struct.node_state_t* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %71 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %70, i32 0, i32 2
  %72 = load %struct.node_state_t*, %struct.node_state_t** %71, align 8
  %73 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %72, i32 0, i32 7
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %5, align 8
  br label %213

78:                                               ; preds = %69, %64
  %79 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %80 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %79, i32 0, i32 2
  %81 = load %struct.node_state_t*, %struct.node_state_t** %80, align 8
  %82 = icmp ne %struct.node_state_t* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %85 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %84, i32 0, i32 2
  %86 = load %struct.node_state_t*, %struct.node_state_t** %85, align 8
  %87 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  br label %93

89:                                               ; preds = %78
  %90 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %91 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  br label %93

93:                                               ; preds = %89, %83
  %94 = phi i32* [ %88, %83 ], [ %92, %89 ]
  %95 = call i32* @svn_pool_create(i32* %94)
  store i32* %95, i32** %11, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call %struct.node_state_t* @apr_pcalloc(i32* %96, i32 72)
  store %struct.node_state_t* %97, %struct.node_state_t** %10, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %100 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %99, i32 0, i32 1
  store i32* %98, i32** %100, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i8* @apr_pstrdup(i32* %101, i8* %102)
  %104 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %105 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %107 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %110 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @svn_dirent_skip_ancestor(i32 %108, i8* %111)
  %113 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %114 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %116 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %115, i32 0, i32 2
  %117 = load %struct.node_state_t*, %struct.node_state_t** %116, align 8
  %118 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %119 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %118, i32 0, i32 3
  store %struct.node_state_t* %117, %struct.node_state_t** %119, align 8
  %120 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %121 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %122 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %121, i32 0, i32 2
  store %struct.node_state_t* %120, %struct.node_state_t** %122, align 8
  %123 = load i64, i64* %8, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %93
  %126 = load i8*, i8** @TRUE, align 8
  %127 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %128 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %127, i32 0, i32 8
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @TRUE, align 8
  %130 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %131 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %5, align 8
  br label %213

133:                                              ; preds = %93
  %134 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %135 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call %struct.TYPE_11__* @svn_wc__db_base_get_info(i32* null, i32* null, i64* %13, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %136, i8* %137, i32* %138, i32* %139)
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %14, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %133
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %151 = call %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__* %150)
  store %struct.TYPE_11__* %151, %struct.TYPE_11__** %5, align 8
  br label %213

152:                                              ; preds = %143
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %154 = call i32 @svn_error_clear(%struct.TYPE_11__* %153)
  store i64 0, i64* %13, align 8
  br label %155

155:                                              ; preds = %152, %133
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %158 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i8* @svn_diff__source_create(i64 %156, i32* %159)
  %161 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %162 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %161, i32 0, i32 5
  store i8* %160, i8** %162, align 8
  %163 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %164 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %165 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i8* @svn_diff__source_create(i64 %163, i32* %166)
  %168 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %169 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %171 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %170, i32 0, i32 0
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__* (i32**, i8**, i8**, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_12__*, i32*, i32*)*, %struct.TYPE_11__* (i32**, i8**, i8**, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_12__*, i32*, i32*)** %173, align 8
  %175 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %176 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %175, i32 0, i32 2
  %177 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %178 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %177, i32 0, i32 8
  %179 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %180 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %179, i32 0, i32 7
  %181 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %182 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %181, i32 0, i32 6
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %185 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %184, i32 0, i32 5
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %188 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %191 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %190, i32 0, i32 3
  %192 = load %struct.node_state_t*, %struct.node_state_t** %191, align 8
  %193 = icmp ne %struct.node_state_t* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %155
  %195 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %196 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %195, i32 0, i32 3
  %197 = load %struct.node_state_t*, %struct.node_state_t** %196, align 8
  %198 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  br label %201

200:                                              ; preds = %155
  br label %201

201:                                              ; preds = %200, %194
  %202 = phi i32* [ %199, %194 ], [ null, %200 ]
  %203 = load %struct.diff_baton*, %struct.diff_baton** %6, align 8
  %204 = getelementptr inbounds %struct.diff_baton, %struct.diff_baton* %203, i32 0, i32 0
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = load %struct.node_state_t*, %struct.node_state_t** %10, align 8
  %207 = getelementptr inbounds %struct.node_state_t, %struct.node_state_t* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = call %struct.TYPE_11__* %174(i32** %176, i8** %178, i8** %180, i8* %183, i8* %186, i8* %189, i32* null, i32* %202, %struct.TYPE_12__* %205, i32* %208, i32* %209)
  %211 = call i32 @SVN_ERR(%struct.TYPE_11__* %210)
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %212, %struct.TYPE_11__** %5, align 8
  br label %213

213:                                              ; preds = %201, %149, %125, %76, %61, %27
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %214
}

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_11__*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i64 @svn_dirent_is_child(i8*, i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.node_state_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @svn_wc__db_base_get_info(i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local i8* @svn_diff__source_create(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
