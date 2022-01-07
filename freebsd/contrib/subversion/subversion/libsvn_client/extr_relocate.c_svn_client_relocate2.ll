; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_relocate.c_svn_client_relocate2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_relocate.c_svn_client_relocate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.validator_baton_t = type { i8*, i32*, i32, %struct.TYPE_18__* }

@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"'%s' is not a local path\00", align 1
@validator_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @svn_client_relocate2(i8* %0, i8* %1, i8* %2, i64 %3, %struct.TYPE_18__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.validator_baton_t, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %18, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %30 = getelementptr inbounds %struct.validator_baton_t, %struct.validator_baton_t* %14, i32 0, i32 3
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %struct.validator_baton_t, %struct.validator_baton_t* %14, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @apr_array_make(i32* %33, i32 1, i32 4)
  %35 = getelementptr inbounds %struct.validator_baton_t, %struct.validator_baton_t* %14, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = getelementptr inbounds %struct.validator_baton_t, %struct.validator_baton_t* %14, i32 0, i32 1
  store i32* %36, i32** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @svn_path_is_url(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %6
  %42 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %8, align 8
  %45 = call %struct.TYPE_17__* @svn_error_createf(i32 %42, i32* null, i32 %43, i8* %44)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %7, align 8
  br label %211

46:                                               ; preds = %6
  %47 = load i8*, i8** %8, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call %struct.TYPE_17__* @svn_dirent_get_absolute(i8** %15, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(%struct.TYPE_17__* %49)
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @validator_func, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = call %struct.TYPE_17__* @svn_wc_relocate4(i32 %56, i8* %57, i8* %58, i8* %59, i32 %60, %struct.validator_baton_t* %14, i32* %61)
  %63 = call %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__* %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %7, align 8
  br label %211

64:                                               ; preds = %46
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call %struct.TYPE_17__* @svn_client_get_repos_root(i8** %19, i32* null, i8* %65, %struct.TYPE_18__* %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(%struct.TYPE_17__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %15, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* @validator_func, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = call %struct.TYPE_17__* @svn_wc_relocate4(i32 %73, i8* %74, i8* %75, i8* %76, i32 %77, %struct.validator_baton_t* %14, i32* %78)
  %80 = call i32 @SVN_ERR(%struct.TYPE_17__* %79)
  %81 = load i8*, i8** %15, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call %struct.TYPE_17__* @svn_client_get_repos_root(i8** %20, i32* null, i8* %81, %struct.TYPE_18__* %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(%struct.TYPE_17__* %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %15, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call %struct.TYPE_17__* @svn_wc__externals_defined_below(i32** %16, i32 %89, i8* %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(%struct.TYPE_17__* %93)
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @apr_hash_count(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %64
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %7, align 8
  br label %211

100:                                              ; preds = %64
  %101 = load i32*, i32** %13, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i8* @apr_pstrdup(i32* %101, i8* %102)
  store i8* %103, i8** %21, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i8* @apr_pstrdup(i32* %104, i8* %105)
  store i8* %106, i8** %22, align 8
  %107 = load i8*, i8** %21, align 8
  %108 = call i64 @strlen(i8* %107)
  store i64 %108, i64* %23, align 8
  %109 = load i8*, i8** %22, align 8
  %110 = call i64 @strlen(i8* %109)
  store i64 %110, i64* %24, align 8
  br label %111

111:                                              ; preds = %131, %100
  %112 = load i64, i64* %23, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load i64, i64* %24, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i8*, i8** %21, align 8
  %119 = load i64, i64* %23, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8*, i8** %22, align 8
  %124 = load i64, i64* %24, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %122, %127
  br label %129

129:                                              ; preds = %117, %114, %111
  %130 = phi i1 [ false, %114 ], [ false, %111 ], [ %128, %117 ]
  br i1 %130, label %131, label %142

131:                                              ; preds = %129
  %132 = load i8*, i8** %22, align 8
  %133 = load i64, i64* %24, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %21, align 8
  %136 = load i64, i64* %23, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i64, i64* %23, align 8
  %139 = add i64 %138, -1
  store i64 %139, i64* %23, align 8
  %140 = load i64, i64* %24, align 8
  %141 = add i64 %140, -1
  store i64 %141, i64* %24, align 8
  br label %111

142:                                              ; preds = %129
  %143 = load i32*, i32** %13, align 8
  %144 = call i32* @svn_pool_create(i32* %143)
  store i32* %144, i32** %18, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = call i32* @apr_hash_first(i32* %145, i32* %146)
  store i32* %147, i32** %17, align 8
  br label %148

148:                                              ; preds = %204, %142
  %149 = load i32*, i32** %17, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %207

151:                                              ; preds = %148
  %152 = load i32*, i32** %17, align 8
  %153 = call i8* @apr_hash_this_key(i32* %152)
  store i8* %153, i8** %26, align 8
  %154 = load i32*, i32** %18, align 8
  %155 = call i32 @svn_pool_clear(i32* %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %15, align 8
  %160 = load i8*, i8** %26, align 8
  %161 = load i64, i64* @FALSE, align 8
  %162 = load i32*, i32** %18, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = call %struct.TYPE_17__* @svn_wc__read_external_info(i64* %25, i32* null, i32* null, i32* null, i32* null, i32 %158, i8* %159, i8* %160, i64 %161, i32* %162, i32* %163)
  %165 = call i32 @SVN_ERR(%struct.TYPE_17__* %164)
  %166 = load i64, i64* %25, align 8
  %167 = load i64, i64* @svn_node_dir, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %203

169:                                              ; preds = %151
  %170 = load i8*, i8** %26, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %172 = load i32*, i32** %18, align 8
  %173 = load i32*, i32** %18, align 8
  %174 = call %struct.TYPE_17__* @svn_client_get_repos_root(i8** %27, i32* null, i8* %170, %struct.TYPE_18__* %171, i32* %172, i32* %173)
  store %struct.TYPE_17__* %174, %struct.TYPE_17__** %28, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %176 = icmp ne %struct.TYPE_17__* %175, null
  br i1 %176, label %177, label %186

177:                                              ; preds = %169
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %185 = call i32 @svn_error_clear(%struct.TYPE_17__* %184)
  br label %204

186:                                              ; preds = %177, %169
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %188 = call i32 @SVN_ERR(%struct.TYPE_17__* %187)
  %189 = load i8*, i8** %19, align 8
  %190 = load i8*, i8** %27, align 8
  %191 = call i64 @strcmp(i8* %189, i8* %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %186
  %194 = load i8*, i8** %26, align 8
  %195 = load i8*, i8** %21, align 8
  %196 = load i8*, i8** %22, align 8
  %197 = load i64, i64* @FALSE, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %199 = load i32*, i32** %18, align 8
  %200 = call %struct.TYPE_17__* @svn_client_relocate2(i8* %194, i8* %195, i8* %196, i64 %197, %struct.TYPE_18__* %198, i32* %199)
  %201 = call i32 @SVN_ERR(%struct.TYPE_17__* %200)
  br label %202

202:                                              ; preds = %193, %186
  br label %203

203:                                              ; preds = %202, %151
  br label %204

204:                                              ; preds = %203, %183
  %205 = load i32*, i32** %17, align 8
  %206 = call i32* @apr_hash_next(i32* %205)
  store i32* %206, i32** %17, align 8
  br label %148

207:                                              ; preds = %148
  %208 = load i32*, i32** %18, align 8
  %209 = call i32 @svn_pool_destroy(i32* %208)
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %210, %struct.TYPE_17__** %7, align 8
  br label %211

211:                                              ; preds = %207, %98, %53, %41
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  ret %struct.TYPE_17__* %212
}

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local %struct.TYPE_17__* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_wc_relocate4(i32, i8*, i8*, i8*, i32, %struct.validator_baton_t*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_client_get_repos_root(i8**, i32*, i8*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__externals_defined_below(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__read_external_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
