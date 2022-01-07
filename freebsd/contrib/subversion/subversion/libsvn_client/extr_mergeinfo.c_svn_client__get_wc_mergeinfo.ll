; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__get_wc_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__get_wc_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i64 0, align 8
@svn_mergeinfo_nearest_ancestor = common dso_local global i64 0, align 8
@svn_mergeinfo_inherited = common dso_local global i64 0, align 8
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@svn_mergeinfo_explicit = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @svn_client__get_wc_mergeinfo(i32** %0, i64* %1, i64 %2, i8* %3, i8* %4, i8** %5, i64 %6, %struct.TYPE_15__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i32** %0, i32*** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64 %2, i64* %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8** %5, i8*** %16, align 8
  store i64 %6, i64* %17, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 @svn_dirent_is_absolute(i8* %31)
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %10
  %37 = load i8*, i8** %15, align 8
  %38 = call i32 @svn_dirent_is_absolute(i8* %37)
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  br label %40

40:                                               ; preds = %36, %10
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = load i64, i64* @TRUE, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = load i32*, i32** %20, align 8
  %48 = call %struct.TYPE_14__* @svn_wc__node_get_base(i32* null, i64* %23, i32* null, i32* null, i32* null, i32* null, i32 %43, i8* %44, i64 %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(%struct.TYPE_14__* %48)
  %50 = load i32*, i32** %20, align 8
  %51 = call i32* @svn_pool_create(i32* %50)
  store i32* %51, i32** %24, align 8
  br label %52

52:                                               ; preds = %172, %40
  %53 = load i64, i64* @TRUE, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %174

55:                                               ; preds = %52
  %56 = load i32*, i32** %24, align 8
  %57 = call i32 @svn_pool_clear(i32* %56)
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @svn_mergeinfo_nearest_ancestor, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  store i32* null, i32** %22, align 8
  %62 = load i64, i64* @svn_mergeinfo_inherited, align 8
  store i64 %62, i64* %13, align 8
  br label %97

63:                                               ; preds = %55
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = load i32*, i32** %24, align 8
  %70 = call %struct.TYPE_14__* @svn_client__parse_mergeinfo(i32** %22, i32 %66, i8* %67, i32* %68, i32* %69)
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %26, align 8
  %71 = load i64, i64* %17, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %63
  %74 = load i8*, i8** %21, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %73, %63
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %81 = icmp ne %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %90 = call i32 @svn_error_clear(%struct.TYPE_14__* %89)
  %91 = load i32*, i32** %19, align 8
  %92 = call i32* @apr_hash_make(i32* %91)
  store i32* %92, i32** %22, align 8
  br label %174

93:                                               ; preds = %82, %79, %73
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %95 = call i32 @SVN_ERR(%struct.TYPE_14__* %94)
  br label %96

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96, %61
  %98 = load i32*, i32** %22, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %173

100:                                              ; preds = %97
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @svn_mergeinfo_explicit, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %173

104:                                              ; preds = %100
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = call i32 @svn_dirent_is_root(i8* %105, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %173, label %110

110:                                              ; preds = %104
  %111 = load i8*, i8** %15, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i8*, i8** %15, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = call i64 @strcmp(i8* %114, i8* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %174

119:                                              ; preds = %113, %110
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %14, align 8
  %124 = load i32*, i32** %24, align 8
  %125 = call %struct.TYPE_14__* @svn_wc_check_root(i64* %27, i64* %28, i32* null, i32 %122, i8* %123, i32* %124)
  %126 = call i32 @SVN_ERR(%struct.TYPE_14__* %125)
  %127 = load i64, i64* %27, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = load i64, i64* %28, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %119
  br label %174

133:                                              ; preds = %129
  %134 = load i8*, i8** %14, align 8
  %135 = load i32*, i32** %24, align 8
  %136 = call i32 @svn_dirent_basename(i8* %134, i32* %135)
  %137 = load i8*, i8** %21, align 8
  %138 = load i32*, i32** %19, align 8
  %139 = call i8* @svn_relpath_join(i32 %136, i8* %137, i32* %138)
  store i8* %139, i8** %21, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = load i32*, i32** %20, align 8
  %142 = call i8* @svn_dirent_dirname(i8* %140, i32* %141)
  store i8* %142, i8** %14, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %14, align 8
  %147 = load i64, i64* @TRUE, align 8
  %148 = load i32*, i32** %20, align 8
  %149 = load i32*, i32** %20, align 8
  %150 = call %struct.TYPE_14__* @svn_wc__node_get_base(i32* null, i64* %29, i32* null, i32* null, i32* null, i32* null, i32 %145, i8* %146, i64 %147, i32* %148, i32* %149)
  %151 = call i32 @SVN_ERR(%struct.TYPE_14__* %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %14, align 8
  %156 = load i32*, i32** %20, align 8
  %157 = load i32*, i32** %20, align 8
  %158 = call %struct.TYPE_14__* @svn_wc__node_get_changed_info(i64* %30, i32* null, i32* null, i32 %154, i8* %155, i32* %156, i32* %157)
  %159 = call i32 @SVN_ERR(%struct.TYPE_14__* %158)
  %160 = load i64, i64* %23, align 8
  %161 = call i64 @SVN_IS_VALID_REVNUM(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %133
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* %30, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i64, i64* %29, align 8
  %169 = load i64, i64* %23, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %163
  br label %174

172:                                              ; preds = %167, %133
  br label %52

173:                                              ; preds = %104, %100, %97
  br label %174

174:                                              ; preds = %173, %171, %132, %118, %88, %52
  %175 = load i32*, i32** %24, align 8
  %176 = call i32 @svn_pool_destroy(i32* %175)
  %177 = load i8*, i8** %21, align 8
  %178 = call i64 @svn_path_is_empty(i8* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i64, i64* @FALSE, align 8
  store i64 %181, i64* %25, align 8
  %182 = load i32*, i32** %22, align 8
  %183 = load i32**, i32*** %11, align 8
  store i32* %182, i32** %183, align 8
  br label %200

184:                                              ; preds = %174
  %185 = load i32*, i32** %22, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load i64, i64* @TRUE, align 8
  store i64 %188, i64* %25, align 8
  %189 = load i32**, i32*** %11, align 8
  %190 = load i32*, i32** %22, align 8
  %191 = load i8*, i8** %21, align 8
  %192 = load i32*, i32** %19, align 8
  %193 = load i32*, i32** %20, align 8
  %194 = call %struct.TYPE_14__* @svn_mergeinfo__add_suffix_to_mergeinfo(i32** %189, i32* %190, i8* %191, i32* %192, i32* %193)
  %195 = call i32 @SVN_ERR(%struct.TYPE_14__* %194)
  br label %199

196:                                              ; preds = %184
  %197 = load i64, i64* @FALSE, align 8
  store i64 %197, i64* %25, align 8
  %198 = load i32**, i32*** %11, align 8
  store i32* null, i32** %198, align 8
  br label %199

199:                                              ; preds = %196, %187
  br label %200

200:                                              ; preds = %199, %180
  %201 = load i8**, i8*** %16, align 8
  %202 = icmp ne i8** %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i8*, i8** %21, align 8
  %205 = load i8**, i8*** %16, align 8
  store i8* %204, i8** %205, align 8
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i64, i64* %25, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %229

209:                                              ; preds = %206
  %210 = load i32**, i32*** %11, align 8
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @apr_hash_count(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %209
  %215 = load i32**, i32*** %11, align 8
  %216 = load i32**, i32*** %11, align 8
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %219 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %220 = load i64, i64* @TRUE, align 8
  %221 = load i32*, i32** %19, align 8
  %222 = load i32*, i32** %20, align 8
  %223 = call %struct.TYPE_14__* @svn_mergeinfo_inheritable2(i32** %215, i32* %217, i32* null, i32 %218, i32 %219, i64 %220, i32* %221, i32* %222)
  %224 = call i32 @SVN_ERR(%struct.TYPE_14__* %223)
  %225 = load i32**, i32*** %11, align 8
  %226 = load i32*, i32** %225, align 8
  %227 = load i32*, i32** %20, align 8
  %228 = call i32 @svn_mergeinfo__remove_empty_rangelists(i32* %226, i32* %227)
  br label %229

229:                                              ; preds = %214, %209, %206
  %230 = load i64*, i64** %12, align 8
  %231 = icmp ne i64* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i64, i64* %25, align 8
  %234 = load i64*, i64** %12, align 8
  store i64 %233, i64* %234, align 8
  br label %235

235:                                              ; preds = %232, %229
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_14__* %236
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @svn_wc__node_get_base(i32*, i64*, i32*, i32*, i32*, i32*, i32, i8*, i64, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_client__parse_mergeinfo(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_14__* @svn_wc_check_root(i64*, i64*, i32*, i32, i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc__node_get_changed_info(i64*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local %struct.TYPE_14__* @svn_mergeinfo__add_suffix_to_mergeinfo(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_mergeinfo_inheritable2(i32**, i32*, i32*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_mergeinfo__remove_empty_rangelists(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
