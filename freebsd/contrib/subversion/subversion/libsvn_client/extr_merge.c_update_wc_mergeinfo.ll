; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_update_wc_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_update_wc_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_32__ = type { i64 }

@SVN_ERR_WC_NOT_LOCKED = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_mergeinfo_nearest_ancestor = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_33__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_33__* (i32*, i8*, i8*, i32*, i64, %struct.TYPE_34__*, i32*)* @update_wc_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_33__* @update_wc_mergeinfo(i32* %0, i8* %1, i8* %2, i32* %3, i64 %4, %struct.TYPE_34__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca %struct.TYPE_32__*, align 8
  %21 = alloca %struct.TYPE_33__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_34__* %5, %struct.TYPE_34__** %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i32* @svn_pool_create(i32* %27)
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32* @apr_hash_first(i32* %29, i32* %30)
  store i32* %31, i32** %17, align 8
  br label %32

32:                                               ; preds = %203, %7
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %206

35:                                               ; preds = %32
  %36 = load i32*, i32** %17, align 8
  %37 = call i8* @apr_hash_this_key(i32* %36)
  store i8* %37, i8** %18, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = call %struct.TYPE_32__* @apr_hash_this_val(i32* %38)
  store %struct.TYPE_32__* %39, %struct.TYPE_32__** %19, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = call i32 @svn_pool_clear(i32* %40)
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %18, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = call %struct.TYPE_33__* @svn_client__parse_mergeinfo(i32** %24, i32 %44, i8* %45, i32* %46, i32* %47)
  store %struct.TYPE_33__* %48, %struct.TYPE_33__** %21, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %50 = icmp ne %struct.TYPE_33__* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %35
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SVN_ERR_WC_NOT_LOCKED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %51
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %65 = call i32 @svn_error_clear(%struct.TYPE_33__* %64)
  br label %203

66:                                               ; preds = %57
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %68 = call %struct.TYPE_33__* @svn_error_trace(%struct.TYPE_33__* %67)
  store %struct.TYPE_33__* %68, %struct.TYPE_33__** %8, align 8
  br label %210

69:                                               ; preds = %35
  %70 = load i32*, i32** %24, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* @svn_mergeinfo_nearest_ancestor, align 4
  %79 = load i8*, i8** %18, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = call %struct.TYPE_33__* @svn_client__get_wc_mergeinfo(i32** %24, i32* null, i32 %78, i8* %79, i32* null, i32* null, i32 %80, %struct.TYPE_34__* %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(%struct.TYPE_33__* %84)
  br label %86

86:                                               ; preds = %77, %72, %69
  %87 = load i32*, i32** %24, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %16, align 8
  %91 = call i32* @apr_hash_make(i32* %90)
  store i32* %91, i32** %24, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = call i8* @svn_dirent_skip_ancestor(i8* %93, i8* %94)
  store i8* %95, i8** %22, align 8
  %96 = load i8*, i8** %22, align 8
  %97 = icmp ne i8* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 @SVN_ERR_ASSERT(i32 %98)
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** %22, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = call i8* @svn_fspath__join(i8* %100, i8* %101, i32* %102)
  store i8* %103, i8** %23, align 8
  %104 = load i32*, i32** %24, align 8
  %105 = load i8*, i8** %23, align 8
  %106 = call i8* @svn_hash_gets(i32* %104, i8* %105)
  %107 = bitcast i8* %106 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %107, %struct.TYPE_32__** %20, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %109 = icmp eq %struct.TYPE_32__* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %92
  %111 = load i32*, i32** %16, align 8
  %112 = call %struct.TYPE_32__* @apr_array_make(i32* %111, i32 0, i32 8)
  store %struct.TYPE_32__* %112, %struct.TYPE_32__** %20, align 8
  br label %113

113:                                              ; preds = %110, %92
  %114 = load i64, i64* %13, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = call %struct.TYPE_32__* @svn_rangelist_dup(%struct.TYPE_32__* %117, i32* %118)
  store %struct.TYPE_32__* %119, %struct.TYPE_32__** %19, align 8
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = call %struct.TYPE_33__* @svn_rangelist_reverse(%struct.TYPE_32__* %120, i32* %121)
  %123 = call i32 @SVN_ERR(%struct.TYPE_33__* %122)
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %126 = load i32, i32* @FALSE, align 4
  %127 = load i32*, i32** %16, align 8
  %128 = call %struct.TYPE_33__* @svn_rangelist_remove(%struct.TYPE_32__** %20, %struct.TYPE_32__* %124, %struct.TYPE_32__* %125, i32 %126, i32* %127)
  %129 = call i32 @SVN_ERR(%struct.TYPE_33__* %128)
  br label %137

130:                                              ; preds = %113
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = call %struct.TYPE_33__* @svn_rangelist_merge2(%struct.TYPE_32__* %131, %struct.TYPE_32__* %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(%struct.TYPE_33__* %135)
  br label %137

137:                                              ; preds = %130, %116
  %138 = load i32*, i32** %24, align 8
  %139 = load i8*, i8** %23, align 8
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %141 = call i32 @svn_hash_sets(i32* %138, i8* %139, %struct.TYPE_32__* %140)
  %142 = load i64, i64* %13, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i32*, i32** %24, align 8
  %146 = call i64 @apr_hash_count(i32* %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32* null, i32** %24, align 8
  br label %149

149:                                              ; preds = %148, %144, %137
  %150 = load i32*, i32** %24, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @svn_mergeinfo__remove_empty_rangelists(i32* %150, i32* %151)
  %153 = load i32*, i32** %9, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %180

155:                                              ; preds = %149
  %156 = load i32*, i32** %9, align 8
  %157 = load i8*, i8** %18, align 8
  %158 = call i8* @svn_hash_gets(i32* %156, i8* %157)
  %159 = bitcast i8* %158 to i32*
  store i32* %159, i32** %25, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = call i32* @apr_hash_pool_get(i32* %160)
  store i32* %161, i32** %26, align 8
  %162 = load i32*, i32** %25, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %155
  %165 = load i32*, i32** %24, align 8
  %166 = load i32*, i32** %25, align 8
  %167 = load i32*, i32** %26, align 8
  %168 = load i32*, i32** %15, align 8
  %169 = call %struct.TYPE_33__* @svn_mergeinfo_merge2(i32* %165, i32* %166, i32* %167, i32* %168)
  %170 = call i32 @SVN_ERR(%struct.TYPE_33__* %169)
  br label %171

171:                                              ; preds = %164, %155
  %172 = load i32*, i32** %9, align 8
  %173 = load i32*, i32** %26, align 8
  %174 = load i8*, i8** %18, align 8
  %175 = call i8* @apr_pstrdup(i32* %173, i8* %174)
  %176 = load i32*, i32** %24, align 8
  %177 = load i32*, i32** %26, align 8
  %178 = call %struct.TYPE_32__* @svn_mergeinfo_dup(i32* %176, i32* %177)
  %179 = call i32 @svn_hash_sets(i32* %172, i8* %175, %struct.TYPE_32__* %178)
  br label %202

180:                                              ; preds = %149
  %181 = load i8*, i8** %18, align 8
  %182 = load i32*, i32** %24, align 8
  %183 = load i32, i32* @TRUE, align 4
  %184 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %185 = load i32*, i32** %16, align 8
  %186 = call %struct.TYPE_33__* @svn_client__record_wc_mergeinfo(i8* %181, i32* %182, i32 %183, %struct.TYPE_34__* %184, i32* %185)
  store %struct.TYPE_33__* %186, %struct.TYPE_33__** %21, align 8
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %188 = icmp ne %struct.TYPE_33__* %187, null
  br i1 %188, label %189, label %198

189:                                              ; preds = %180
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SVN_ERR_ENTRY_NOT_FOUND, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %197 = call i32 @svn_error_clear(%struct.TYPE_33__* %196)
  br label %201

198:                                              ; preds = %189, %180
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %200 = call i32 @SVN_ERR(%struct.TYPE_33__* %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %171
  br label %203

203:                                              ; preds = %202, %63
  %204 = load i32*, i32** %17, align 8
  %205 = call i32* @apr_hash_next(i32* %204)
  store i32* %205, i32** %17, align 8
  br label %32

206:                                              ; preds = %32
  %207 = load i32*, i32** %16, align 8
  %208 = call i32 @svn_pool_destroy(i32* %207)
  %209 = load %struct.TYPE_33__*, %struct.TYPE_33__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_33__* %209, %struct.TYPE_33__** %8, align 8
  br label %210

210:                                              ; preds = %206, %66
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  ret %struct.TYPE_33__* %211
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_32__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_33__* @svn_client__parse_mergeinfo(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_33__* @svn_error_trace(%struct.TYPE_33__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_33__* @svn_client__get_wc_mergeinfo(i32**, i32*, i32, i8*, i32*, i32*, i32, %struct.TYPE_34__*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local %struct.TYPE_32__* @apr_array_make(i32*, i32, i32) #1

declare dso_local %struct.TYPE_32__* @svn_rangelist_dup(%struct.TYPE_32__*, i32*) #1

declare dso_local %struct.TYPE_33__* @svn_rangelist_reverse(%struct.TYPE_32__*, i32*) #1

declare dso_local %struct.TYPE_33__* @svn_rangelist_remove(%struct.TYPE_32__**, %struct.TYPE_32__*, %struct.TYPE_32__*, i32, i32*) #1

declare dso_local %struct.TYPE_33__* @svn_rangelist_merge2(%struct.TYPE_32__*, %struct.TYPE_32__*, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_32__*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_mergeinfo__remove_empty_rangelists(i32*, i32*) #1

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.TYPE_33__* @svn_mergeinfo_merge2(i32*, i32*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local %struct.TYPE_32__* @svn_mergeinfo_dup(i32*, i32*) #1

declare dso_local %struct.TYPE_33__* @svn_client__record_wc_mergeinfo(i8*, i32*, i32, %struct.TYPE_34__*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
