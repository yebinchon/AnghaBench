; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_remote_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_remote_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNKNOWN_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown node kind for '%s'\00", align 1
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64, i32, i32*, i64, i64, i64, i32, i8*, i32* (i8*)*, i8*, i32*)* @remote_proplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @remote_proplist(i8* %0, i8* %1, i64 %2, i32 %3, i32* %4, i64 %5, i64 %6, i64 %7, i32 %8, i8* %9, i32* (i8*)* %10, i8* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32* (i8*)*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca %struct.TYPE_3__*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i64, align 8
  store i8* %0, i8** %15, align 8
  store i8* %1, i8** %16, align 8
  store i64 %2, i64* %17, align 8
  store i32 %3, i32* %18, align 4
  store i32* %4, i32** %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i32 %8, i32* %23, align 4
  store i8* %9, i8** %24, align 8
  store i32* (i8*)* %10, i32* (i8*)** %25, align 8
  store i8* %11, i8** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* null, i32** %29, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32*, i32** %27, align 8
  %45 = call i8* @svn_path_url_add_component2(i8* %42, i8* %43, i32* %44)
  store i8* %45, i8** %31, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* @svn_node_dir, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %13
  %50 = load i32*, i32** %19, align 8
  %51 = load i64, i64* %22, align 8
  %52 = load i64, i64* @svn_depth_empty, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi i32** [ %28, %54 ], [ null, %55 ]
  %58 = load i8*, i8** %16, align 8
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @SVN_DIRENT_KIND, align 4
  %61 = load i32*, i32** %27, align 8
  %62 = call i32* @svn_ra_get_dir2(i32* %50, i32** %57, i32* null, i32** %29, i8* %58, i32 %59, i32 %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32* %62)
  br label %81

64:                                               ; preds = %13
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* @svn_node_file, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32*, i32** %19, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i32, i32* %18, align 4
  %72 = load i32*, i32** %27, align 8
  %73 = call i32* @svn_ra_get_file(i32* %69, i8* %70, i32 %71, i32* null, i32* null, i32** %29, i32* %72)
  %74 = call i32 @SVN_ERR(i32* %73)
  br label %80

75:                                               ; preds = %64
  %76 = load i32, i32* @SVN_ERR_NODE_UNKNOWN_KIND, align 4
  %77 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %78 = load i8*, i8** %31, align 8
  %79 = call i32* @svn_error_createf(i32 %76, i32* null, i32 %77, i8* %78)
  store i32* %79, i32** %14, align 8
  br label %228

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i64, i64* %21, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load i32*, i32** %19, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32*, i32** %27, align 8
  %89 = load i32*, i32** %27, align 8
  %90 = call i32* @svn_ra_get_inherited_props(i32* %85, i32** %32, i8* %86, i32 %87, i32* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32* %90)
  %92 = load i32*, i32** %19, align 8
  %93 = load i32*, i32** %27, align 8
  %94 = call i32* @svn_ra_get_repos_root2(i32* %92, i8** %33, i32* %93)
  %95 = call i32 @SVN_ERR(i32* %94)
  %96 = load i32*, i32** %32, align 8
  %97 = load i8*, i8** %33, align 8
  %98 = load i32*, i32** %27, align 8
  %99 = load i32*, i32** %27, align 8
  %100 = call i32* @svn_client__iprop_relpaths_to_urls(i32* %96, i8* %97, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32* %100)
  br label %103

102:                                              ; preds = %81
  store i32* null, i32** %32, align 8
  br label %103

103:                                              ; preds = %102, %84
  %104 = load i64, i64* %20, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i32* null, i32** %29, align 8
  br label %134

107:                                              ; preds = %103
  %108 = load i32*, i32** %27, align 8
  %109 = load i32*, i32** %29, align 8
  %110 = call i32* @apr_hash_first(i32* %108, i32* %109)
  store i32* %110, i32** %30, align 8
  br label %111

111:                                              ; preds = %130, %107
  %112 = load i32*, i32** %30, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load i32*, i32** %30, align 8
  %116 = call i8* @apr_hash_this_key(i32* %115)
  store i8* %116, i8** %34, align 8
  %117 = load i32*, i32** %30, align 8
  %118 = call i32 @apr_hash_this_key_len(i32* %117)
  store i32 %118, i32* %35, align 4
  %119 = load i8*, i8** %34, align 8
  %120 = call i64 @svn_property_kind2(i8* %119)
  store i64 %120, i64* %36, align 8
  %121 = load i64, i64* %36, align 8
  %122 = load i64, i64* @svn_prop_regular_kind, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load i32*, i32** %29, align 8
  %126 = load i8*, i8** %34, align 8
  %127 = load i32, i32* %35, align 4
  %128 = call i32 @apr_hash_set(i32* %125, i8* %126, i32 %127, i32* null)
  br label %129

129:                                              ; preds = %124, %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32*, i32** %30, align 8
  %132 = call i32* @apr_hash_next(i32* %131)
  store i32* %132, i32** %30, align 8
  br label %111

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133, %106
  %135 = load i8*, i8** %31, align 8
  %136 = load i32*, i32** %29, align 8
  %137 = load i32*, i32** %32, align 8
  %138 = load i32, i32* %23, align 4
  %139 = load i8*, i8** %24, align 8
  %140 = load i32*, i32** %27, align 8
  %141 = call i32* @call_receiver(i8* %135, i32* %136, i32* %137, i32 %138, i8* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32* %141)
  %143 = load i64, i64* %22, align 8
  %144 = load i64, i64* @svn_depth_empty, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %226

146:                                              ; preds = %134
  %147 = load i64, i64* %20, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %226

149:                                              ; preds = %146
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* @svn_node_dir, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %226

153:                                              ; preds = %149
  %154 = load i32*, i32** %28, align 8
  %155 = call i64 @apr_hash_count(i32* %154)
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %226

157:                                              ; preds = %153
  %158 = load i32*, i32** %27, align 8
  %159 = call i32* @svn_pool_create(i32* %158)
  store i32* %159, i32** %37, align 8
  %160 = load i32*, i32** %27, align 8
  %161 = load i32*, i32** %28, align 8
  %162 = call i32* @apr_hash_first(i32* %160, i32* %161)
  store i32* %162, i32** %30, align 8
  br label %163

163:                                              ; preds = %220, %157
  %164 = load i32*, i32** %30, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %223

166:                                              ; preds = %163
  %167 = load i32*, i32** %30, align 8
  %168 = call i8* @apr_hash_this_key(i32* %167)
  store i8* %168, i8** %38, align 8
  %169 = load i32*, i32** %30, align 8
  %170 = call %struct.TYPE_3__* @apr_hash_this_val(i32* %169)
  store %struct.TYPE_3__* %170, %struct.TYPE_3__** %39, align 8
  %171 = load i32* (i8*)*, i32* (i8*)** %25, align 8
  %172 = icmp ne i32* (i8*)* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = load i32* (i8*)*, i32* (i8*)** %25, align 8
  %175 = load i8*, i8** %26, align 8
  %176 = call i32* %174(i8* %175)
  %177 = call i32 @SVN_ERR(i32* %176)
  br label %178

178:                                              ; preds = %173, %166
  %179 = load i32*, i32** %37, align 8
  %180 = call i32 @svn_pool_clear(i32* %179)
  %181 = load i8*, i8** %16, align 8
  %182 = load i8*, i8** %38, align 8
  %183 = load i32*, i32** %37, align 8
  %184 = call i8* @svn_relpath_join(i8* %181, i8* %182, i32* %183)
  store i8* %184, i8** %40, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @svn_node_file, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %178
  %191 = load i64, i64* %22, align 8
  %192 = load i64, i64* @svn_depth_files, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %219

194:                                              ; preds = %190, %178
  %195 = load i64, i64* %22, align 8
  store i64 %195, i64* %41, align 8
  %196 = load i64, i64* %22, align 8
  %197 = load i64, i64* @svn_depth_immediates, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i64, i64* @svn_depth_empty, align 8
  store i64 %200, i64* %41, align 8
  br label %201

201:                                              ; preds = %199, %194
  %202 = load i8*, i8** %15, align 8
  %203 = load i8*, i8** %40, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %18, align 4
  %208 = load i32*, i32** %19, align 8
  %209 = load i64, i64* @TRUE, align 8
  %210 = load i64, i64* @FALSE, align 8
  %211 = load i64, i64* %41, align 8
  %212 = load i32, i32* %23, align 4
  %213 = load i8*, i8** %24, align 8
  %214 = load i32* (i8*)*, i32* (i8*)** %25, align 8
  %215 = load i8*, i8** %26, align 8
  %216 = load i32*, i32** %37, align 8
  %217 = call i32* @remote_proplist(i8* %202, i8* %203, i64 %206, i32 %207, i32* %208, i64 %209, i64 %210, i64 %211, i32 %212, i8* %213, i32* (i8*)* %214, i8* %215, i32* %216)
  %218 = call i32 @SVN_ERR(i32* %217)
  br label %219

219:                                              ; preds = %201, %190
  br label %220

220:                                              ; preds = %219
  %221 = load i32*, i32** %30, align 8
  %222 = call i32* @apr_hash_next(i32* %221)
  store i32* %222, i32** %30, align 8
  br label %163

223:                                              ; preds = %163
  %224 = load i32*, i32** %37, align 8
  %225 = call i32 @svn_pool_destroy(i32* %224)
  br label %226

226:                                              ; preds = %223, %153, %149, %146, %134
  %227 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %227, i32** %14, align 8
  br label %228

228:                                              ; preds = %226, %75
  %229 = load i32*, i32** %14, align 8
  ret i32* %229
}

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_get_dir2(i32*, i32**, i32*, i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_ra_get_inherited_props(i32*, i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32* @svn_client__iprop_relpaths_to_urls(i32*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @apr_hash_this_key_len(i32*) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @call_receiver(i8*, i32*, i32*, i32, i8*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_3__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
