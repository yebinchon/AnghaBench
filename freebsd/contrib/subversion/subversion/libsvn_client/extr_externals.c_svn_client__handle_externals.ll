; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_svn_client__handle_externals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_svn_client__handle_externals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Traversal of '%s' found no ambient depth\00", align 1
@FALSE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @svn_client__handle_externals(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6, %struct.TYPE_15__* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %18, align 8
  store i32* %8, i32** %19, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @SVN_ERR_ASSERT(i8* %32)
  %34 = load i32*, i32** %19, align 8
  %35 = call i32* @svn_pool_create(i32* %34)
  store i32* %35, i32** %22, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %14, align 8
  %40 = load i32*, i32** %19, align 8
  %41 = load i32*, i32** %22, align 8
  %42 = call i32 @svn_wc__externals_defined_below(i32** %20, i32 %38, i8* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %19, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32* @apr_hash_first(i32* %44, i32* %45)
  store i32* %46, i32** %21, align 8
  br label %47

47:                                               ; preds = %92, %9
  %48 = load i32*, i32** %21, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %95

50:                                               ; preds = %47
  %51 = load i32*, i32** %21, align 8
  %52 = call i8* @apr_hash_this_key(i32* %51)
  store i8* %52, i8** %23, align 8
  %53 = load i32*, i32** %21, align 8
  %54 = call i8* @apr_hash_this_val(i32* %53)
  store i8* %54, i8** %24, align 8
  %55 = load i32, i32* @svn_depth_infinity, align 4
  store i32 %55, i32* %25, align 4
  %56 = load i32*, i32** %22, align 8
  %57 = call i32 @svn_pool_clear(i32* %56)
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %50
  %61 = load i32*, i32** %12, align 8
  %62 = load i8*, i8** %23, align 8
  %63 = load i32*, i32** %21, align 8
  %64 = call i32 @apr_hash_this_key_len(i32* %63)
  %65 = call i8* @apr_hash_get(i32* %61, i8* %62, i32 %64)
  store i8* %65, i8** %26, align 8
  %66 = load i8*, i8** %26, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %71 = load i8*, i8** %23, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @svn_dirent_local_style(i8* %71, i32* %72)
  %74 = call %struct.TYPE_14__* @svn_error_createf(i32 %69, i32* null, i32 %70, i32 %73)
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %10, align 8
  br label %186

75:                                               ; preds = %60
  %76 = load i8*, i8** %26, align 8
  %77 = call i32 @svn_depth_from_word(i8* %76)
  store i32 %77, i32* %25, align 4
  br label %78

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %50
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = load i8*, i8** %23, align 8
  %84 = load i8*, i8** %24, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %17, align 8
  %89 = load i32*, i32** %22, align 8
  %90 = call i32 @handle_externals_change(%struct.TYPE_15__* %80, i8* %81, i32* %82, i8* %83, i8* %84, i32* %85, i32 %86, i32 %87, i32* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %92

92:                                               ; preds = %79
  %93 = load i32*, i32** %21, align 8
  %94 = call i32* @apr_hash_next(i32* %93)
  store i32* %94, i32** %21, align 8
  br label %47

95:                                               ; preds = %47
  %96 = load i32*, i32** %19, align 8
  %97 = load i32*, i32** %20, align 8
  %98 = call i32* @apr_hash_first(i32* %96, i32* %97)
  store i32* %98, i32** %21, align 8
  br label %99

99:                                               ; preds = %179, %95
  %100 = load i32*, i32** %21, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %182

102:                                              ; preds = %99
  %103 = load i32*, i32** %21, align 8
  %104 = call i8* @apr_hash_this_key(i32* %103)
  store i8* %104, i8** %27, align 8
  %105 = load i32*, i32** %21, align 8
  %106 = call i8* @apr_hash_this_val(i32* %105)
  store i8* %106, i8** %28, align 8
  %107 = load i32*, i32** %22, align 8
  %108 = call i32 @svn_pool_clear(i32* %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %110 = load i8*, i8** %27, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %112 = load i8*, i8** %28, align 8
  %113 = load i8*, i8** %27, align 8
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @handle_external_item_removal(%struct.TYPE_15__* %111, i8* %112, i8* %113, i32* %114)
  %116 = load i32*, i32** %22, align 8
  %117 = call i32 @wrap_external_error(%struct.TYPE_15__* %109, i8* %110, i32 %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i8*, i8** %27, align 8
  store i8* %119, i8** %29, align 8
  br label %120

120:                                              ; preds = %173, %102
  %121 = load i8*, i8** %29, align 8
  %122 = load i32*, i32** %22, align 8
  %123 = call i8* @svn_dirent_dirname(i8* %121, i32* %122)
  store i8* %123, i8** %29, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %29, align 8
  %128 = load i32, i32* @FALSE, align 4
  %129 = load i32, i32* @FALSE, align 4
  %130 = load i32*, i32** %22, align 8
  %131 = call i32 @svn_wc_read_kind2(i64* %30, i32 %126, i8* %127, i32 %128, i32 %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load i64, i64* %30, align 8
  %134 = load i64, i64* @svn_node_none, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %172

136:                                              ; preds = %120
  %137 = load i8*, i8** %29, align 8
  %138 = load i32*, i32** %22, align 8
  %139 = call %struct.TYPE_14__* @svn_io_dir_remove_nonrecursive(i8* %137, i32* %138)
  store %struct.TYPE_14__* %139, %struct.TYPE_14__** %31, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %141 = icmp ne %struct.TYPE_14__* %140, null
  br i1 %141, label %142, label %171

142:                                              ; preds = %136
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @APR_STATUS_IS_ENOTEMPTY(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %150 = call i32 @svn_error_clear(%struct.TYPE_14__* %149)
  br label %178

151:                                              ; preds = %142
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @APR_STATUS_IS_ENOENT(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @APR_STATUS_IS_ENOTDIR(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157, %151
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %165 = call i32 @svn_error_clear(%struct.TYPE_14__* %164)
  br label %169

166:                                              ; preds = %157
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %168 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %167)
  store %struct.TYPE_14__* %168, %struct.TYPE_14__** %10, align 8
  br label %186

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170, %136
  br label %172

172:                                              ; preds = %171, %120
  br label %173

173:                                              ; preds = %172
  %174 = load i8*, i8** %29, align 8
  %175 = load i8*, i8** %28, align 8
  %176 = call i64 @strcmp(i8* %174, i8* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %120, label %178

178:                                              ; preds = %173, %148
  br label %179

179:                                              ; preds = %178
  %180 = load i32*, i32** %21, align 8
  %181 = call i32* @apr_hash_next(i32* %180)
  store i32* %181, i32** %21, align 8
  br label %99

182:                                              ; preds = %99
  %183 = load i32*, i32** %22, align 8
  %184 = call i32 @svn_pool_destroy(i32* %183)
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %185, %struct.TYPE_14__** %10, align 8
  br label %186

186:                                              ; preds = %182, %166, %68
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  ret %struct.TYPE_14__* %187
}

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__externals_defined_below(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i32 @apr_hash_this_key_len(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_depth_from_word(i8*) #1

declare dso_local i32 @handle_externals_change(%struct.TYPE_15__*, i8*, i32*, i8*, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @wrap_external_error(%struct.TYPE_15__*, i8*, i32, i32*) #1

declare dso_local i32 @handle_external_item_removal(%struct.TYPE_15__*, i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_io_dir_remove_nonrecursive(i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOTEMPTY(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i64 @APR_STATUS_IS_ENOTDIR(i32) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
