; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__get_wc_or_repos_mergeinfo_catalog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__get_wc_or_repos_mergeinfo_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@svn_mergeinfo_explicit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__get_wc_or_repos_mergeinfo_catalog(i32** %0, i64* %1, i64* %2, i64 %3, i64 %4, i64 %5, i32 %6, i32* %7, i8* %8, %struct.TYPE_5__* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_5__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  store i32** %0, i32*** %13, align 8
  store i64* %1, i64** %14, align 8
  store i64* %2, i64** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i32 %6, i32* %19, align 4
  store i32* %7, i32** %20, align 8
  store i8* %8, i8** %21, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  store i32* null, i32** %30, align 8
  store i32* null, i32** %31, align 8
  %35 = load i8*, i8** %21, align 8
  %36 = load i32*, i32** %24, align 8
  %37 = call i32 @svn_dirent_get_absolute(i8** %27, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i64*, i64** %15, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %12
  %42 = load i64, i64* @FALSE, align 8
  %43 = load i64*, i64** %15, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %12
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %27, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = load i32*, i32** %24, align 8
  %51 = load i32*, i32** %24, align 8
  %52 = call i32 @svn_wc__node_get_origin(i32* null, i32* %26, i8** %29, i8** %28, i32* null, i32* null, i32* null, i32 %47, i8* %48, i64 %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i8*, i8** %29, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i8*, i8** %28, align 8
  %58 = load i8*, i8** %29, align 8
  %59 = load i32*, i32** %24, align 8
  %60 = call i8* @svn_path_url_add_component2(i8* %57, i8* %58, i32* %59)
  store i8* %60, i8** %25, align 8
  br label %62

61:                                               ; preds = %44
  store i8* null, i8** %25, align 8
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i64, i64* %17, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %102, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %16, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i8*, i8** %27, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %71 = load i32*, i32** %23, align 8
  %72 = load i32*, i32** %24, align 8
  %73 = call i32 @svn_client__get_wc_mergeinfo_catalog(i32** %30, i64* %32, i64 %66, i32 %67, i8* %68, i32* null, i32* null, i64 %69, %struct.TYPE_5__* %70, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i64*, i64** %14, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i64, i64* %32, align 8
  %79 = load i64*, i64** %14, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %65
  %81 = load i64, i64* %32, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* @svn_mergeinfo_explicit, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %101, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %29, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32*, i32** %30, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32*, i32** %30, align 8
  %95 = load i8*, i8** %29, align 8
  %96 = call i64 @svn_hash_gets(i32* %94, i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93, %90, %87
  %99 = load i64, i64* @TRUE, align 8
  store i64 %99, i64* %17, align 8
  %100 = load i64, i64* @FALSE, align 8
  store i64 %100, i64* %16, align 8
  br label %101

101:                                              ; preds = %98, %93, %83, %80
  br label %102

102:                                              ; preds = %101, %62
  %103 = load i64, i64* %17, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %173

105:                                              ; preds = %102
  %106 = load i8*, i8** %25, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %172

108:                                              ; preds = %105
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %27, align 8
  %113 = load i32*, i32** %23, align 8
  %114 = load i32*, i32** %24, align 8
  %115 = call i32 @svn_wc_get_pristine_props(i32** %33, i32 %111, i8* %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i32*, i32** %33, align 8
  %118 = load i8*, i8** @SVN_PROP_MERGEINFO, align 8
  %119 = call i64 @svn_hash_gets(i32* %117, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %171, label %121

121:                                              ; preds = %108
  store i32* null, i32** %34, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load i32*, i32** %24, align 8
  %126 = call i32* @svn_pool_create(i32* %125)
  store i32* %126, i32** %34, align 8
  %127 = load i8*, i8** %25, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %129 = load i32*, i32** %34, align 8
  %130 = load i32*, i32** %34, align 8
  %131 = call i32 @svn_client_open_ra_session2(i32** %20, i8* %127, i32* null, %struct.TYPE_5__* %128, i32* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  br label %133

133:                                              ; preds = %124, %121
  %134 = load i32*, i32** %20, align 8
  %135 = load i8*, i8** %25, align 8
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load i64, i64* @TRUE, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i32*, i32** %23, align 8
  %141 = load i32*, i32** %24, align 8
  %142 = call i32 @svn_client__get_repos_mergeinfo_catalog(i32** %31, i32* %134, i8* %135, i32 %136, i32 %137, i64 %138, i64 %139, i32* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load i32*, i32** %31, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %164

146:                                              ; preds = %133
  %147 = load i32*, i32** %31, align 8
  %148 = load i8*, i8** %29, align 8
  %149 = call i64 @svn_hash_gets(i32* %147, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %146
  %152 = load i64*, i64** %14, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i64, i64* @TRUE, align 8
  %156 = load i64*, i64** %14, align 8
  store i64 %155, i64* %156, align 8
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i64*, i64** %15, align 8
  %159 = icmp ne i64* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i64, i64* @TRUE, align 8
  %162 = load i64*, i64** %15, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %146, %133
  %165 = load i32*, i32** %34, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %34, align 8
  %169 = call i32 @svn_pool_destroy(i32* %168)
  br label %170

170:                                              ; preds = %167, %164
  br label %171

171:                                              ; preds = %170, %108
  br label %172

172:                                              ; preds = %171, %105
  br label %173

173:                                              ; preds = %172, %102
  %174 = load i32*, i32** %30, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load i32*, i32** %30, align 8
  %178 = load i32**, i32*** %13, align 8
  store i32* %177, i32** %178, align 8
  %179 = load i32*, i32** %31, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load i32**, i32*** %13, align 8
  %183 = load i32*, i32** %182, align 8
  %184 = load i32*, i32** %31, align 8
  %185 = load i32*, i32** %23, align 8
  %186 = load i32*, i32** %24, align 8
  %187 = call i32 @svn_mergeinfo_catalog_merge(i32* %183, i32* %184, i32* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  br label %189

189:                                              ; preds = %181, %176
  br label %199

190:                                              ; preds = %173
  %191 = load i32*, i32** %31, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32*, i32** %31, align 8
  %195 = load i32**, i32*** %13, align 8
  store i32* %194, i32** %195, align 8
  br label %198

196:                                              ; preds = %190
  %197 = load i32**, i32*** %13, align 8
  store i32* null, i32** %197, align 8
  br label %198

198:                                              ; preds = %196, %193
  br label %199

199:                                              ; preds = %198, %189
  %200 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %200
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__node_get_origin(i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32, i8*, i64, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_client__get_wc_mergeinfo_catalog(i32**, i64*, i64, i32, i8*, i32*, i32*, i64, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_wc_get_pristine_props(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_client_open_ra_session2(i32**, i8*, i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @svn_client__get_repos_mergeinfo_catalog(i32**, i32*, i8*, i32, i32, i64, i64, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_mergeinfo_catalog_merge(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
