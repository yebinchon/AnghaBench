; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_new_node_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_new_node_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_baton_t = type { i32, i64, i32, i32, i32, i32* }
%struct.node_baton_t = type { i8*, i32, i8*, i8*, %struct.TYPE_2__*, i32, i32, i8*, i8*, i8*, i64, i32* }
%struct.TYPE_2__ = type { i32, i8*, i8*, %struct.parse_baton_t* }
%struct.revmap_t = type { i32 }

@SVN_REPOS_DUMPFILE_NODE_PATH = common dso_local global i8* null, align 8
@SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH = common dso_local global i8* null, align 8
@SVN_REPOS_DUMPFILE_NODE_KIND = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV = common dso_local global i8* null, align 8
@SVN_ERR_INCOMPLETE_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid copy source path '%s'\00", align 1
@FALSE = common dso_local global i8* null, align 8
@SVN_REPOS_DUMPFILE_NODE_ACTION = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Missing Node-action for path '%s'\00", align 1
@SVN_REPOS_DUMPFILE_PROP_DELTA = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@SVN_REPOS_DUMPFILE_TEXT_DELTA = common dso_local global i8* null, align 8
@SVN_REPOS_DUMPFILE_CONTENT_LENGTH = common dso_local global i8* null, align 8
@SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH = common dso_local global i8* null, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"No valid copyfrom revision in filtered stream\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32*)* @new_node_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @new_node_record(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.parse_baton_t*, align 8
  %11 = alloca %struct.node_baton_t*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.revmap_t*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i8* @apr_palloc(i32* %22, i32 88)
  %24 = load i8**, i8*** %6, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.node_baton_t*
  store %struct.node_baton_t* %27, %struct.node_baton_t** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  %30 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %31 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %30, i32 0, i32 4
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %34 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %33, i32 0, i32 11
  store i32* %32, i32** %34, align 8
  %35 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %36 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load %struct.parse_baton_t*, %struct.parse_baton_t** %38, align 8
  store %struct.parse_baton_t* %39, %struct.parse_baton_t** %10, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_PATH, align 8
  %42 = call i8* @svn_hash_gets(i32* %40, i8* %41)
  store i8* %42, i8** %12, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, align 8
  %45 = call i8* @svn_hash_gets(i32* %43, i8* %44)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 47
  br i1 %50, label %51, label %56

51:                                               ; preds = %4
  %52 = load i32*, i32** %9, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* @SVN_VA_NULL, align 4
  %55 = call i8* @apr_pstrcat(i32* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %54)
  store i8* %55, i8** %12, align 8
  br label %56

56:                                               ; preds = %51, %4
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 47
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32*, i32** %9, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* @SVN_VA_NULL, align 4
  %69 = call i8* @apr_pstrcat(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %67, i32 %68)
  store i8* %69, i8** %13, align 8
  br label %70

70:                                               ; preds = %65, %59, %56
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %73 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %76 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %79 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @skip_path(i8* %71, i32 %74, i32 %77, i32 %80)
  %82 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %83 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %82, i32 0, i32 10
  store i64 %81, i64* %83, align 8
  %84 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %85 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %84, i32 0, i32 10
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %70
  %89 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %90 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %93 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = call i32* @apr_hash_pool_get(i32* %94)
  %96 = load i8*, i8** %12, align 8
  %97 = call i8* @apr_pstrdup(i32* %95, i8* %96)
  %98 = call i32 @svn_hash_sets(i32* %91, i8* %97, i8* inttoptr (i64 1 to i8*))
  %99 = load i8*, i8** @TRUE, align 8
  %100 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %101 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %100, i32 0, i32 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i8* %99, i8** %103, align 8
  br label %357

104:                                              ; preds = %70
  %105 = load i32*, i32** %7, align 8
  %106 = load i8*, i8** @SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH, align 8
  %107 = call i8* @svn_hash_gets(i32* %105, i8* %106)
  store i8* %107, i8** %15, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %146

110:                                              ; preds = %104
  %111 = load i8*, i8** %13, align 8
  %112 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %113 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %116 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %119 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @skip_path(i8* %111, i32 %114, i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %110
  %124 = load i32*, i32** %7, align 8
  %125 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_KIND, align 8
  %126 = call i8* @svn_hash_gets(i32* %124, i8* %125)
  store i8* %126, i8** %16, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load i8*, i8** %16, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32*, i32** %7, align 8
  %135 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, align 8
  %136 = call i32 @svn_hash_sets(i32* %134, i8* %135, i8* null)
  %137 = load i32*, i32** %7, align 8
  %138 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, align 8
  %139 = call i32 @svn_hash_sets(i32* %137, i8* %138, i8* null)
  store i8* null, i8** %13, align 8
  br label %145

140:                                              ; preds = %129, %123
  %141 = load i32, i32* @SVN_ERR_INCOMPLETE_DATA, align 4
  %142 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i8*, i8** %13, align 8
  %144 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %141, i32* null, i32 %142, i8* %143)
  store i32* %144, i32** %5, align 8
  br label %359

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145, %110, %104
  %147 = load i8*, i8** @FALSE, align 8
  %148 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %149 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %148, i32 0, i32 9
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** @FALSE, align 8
  %151 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %152 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %151, i32 0, i32 8
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** @FALSE, align 8
  %154 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %155 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  %156 = load i8*, i8** @FALSE, align 8
  %157 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %158 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** @FALSE, align 8
  %160 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %161 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %160, i32 0, i32 7
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %146
  %165 = load i8*, i8** %15, align 8
  %166 = call i32 @svn__atoui64(i8* %165)
  br label %168

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167, %164
  %169 = phi i32 [ %166, %164 ], [ 0, %167 ]
  %170 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %171 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @svn_repos__dumpfile_headers_create(i32* %172)
  %174 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %175 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @svn_stringbuf_create_empty(i32* %176)
  %178 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %179 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = call i8* @apr_pstrdup(i32* %180, i8* %181)
  %183 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %184 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load i8*, i8** @TRUE, align 8
  %186 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %187 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %186, i32 0, i32 4
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  store i8* %185, i8** %189, align 8
  %190 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %191 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %190, i32 0, i32 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %168
  %197 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %198 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %197, i32 0, i32 4
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = call i32 @output_revision(%struct.TYPE_2__* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  br label %202

202:                                              ; preds = %196, %168
  %203 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %204 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_PATH, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = call i32 @svn_repos__dumpfile_header_push(i32 %205, i8* %206, i8* %208)
  %210 = load i32*, i32** %7, align 8
  %211 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_KIND, align 8
  %212 = call i8* @svn_hash_gets(i32* %210, i8* %211)
  store i8* %212, i8** %16, align 8
  %213 = load i8*, i8** %16, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %202
  %216 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %217 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_KIND, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = call i32 @svn_repos__dumpfile_header_push(i32 %218, i8* %219, i8* %220)
  br label %222

222:                                              ; preds = %215, %202
  %223 = load i32*, i32** %7, align 8
  %224 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_ACTION, align 8
  %225 = call i8* @svn_hash_gets(i32* %223, i8* %224)
  store i8* %225, i8** %17, align 8
  %226 = load i8*, i8** %17, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %222
  %229 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %230 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_ACTION, align 8
  %233 = load i8*, i8** %17, align 8
  %234 = call i32 @svn_repos__dumpfile_header_push(i32 %231, i8* %232, i8* %233)
  br label %240

235:                                              ; preds = %222
  %236 = load i32, i32* @SVN_ERR_INCOMPLETE_DATA, align 4
  %237 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %238 = load i8*, i8** %12, align 8
  %239 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %236, i32* null, i32 %237, i8* %238)
  store i32* %239, i32** %5, align 8
  br label %359

240:                                              ; preds = %228
  %241 = load i32*, i32** %9, align 8
  %242 = load i32*, i32** %7, align 8
  %243 = call i32* @apr_hash_first(i32* %241, i32* %242)
  store i32* %243, i32** %14, align 8
  br label %244

244:                                              ; preds = %353, %240
  %245 = load i32*, i32** %14, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %356

247:                                              ; preds = %244
  %248 = load i32*, i32** %14, align 8
  %249 = call i8* @apr_hash_this_key(i32* %248)
  store i8* %249, i8** %18, align 8
  %250 = load i32*, i32** %14, align 8
  %251 = call i8* @apr_hash_this_val(i32* %250)
  store i8* %251, i8** %19, align 8
  %252 = load i8*, i8** %18, align 8
  %253 = load i8*, i8** @SVN_REPOS_DUMPFILE_PROP_DELTA, align 8
  %254 = call i64 @strcmp(i8* %252, i8* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %247
  %257 = load i8*, i8** %19, align 8
  %258 = call i64 @strcmp(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i8*, i8** @TRUE, align 8
  %262 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %263 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %262, i32 0, i32 3
  store i8* %261, i8** %263, align 8
  br label %264

264:                                              ; preds = %260, %256, %247
  %265 = load i8*, i8** %18, align 8
  %266 = load i8*, i8** @SVN_REPOS_DUMPFILE_TEXT_DELTA, align 8
  %267 = call i64 @strcmp(i8* %265, i8* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %277, label %269

269:                                              ; preds = %264
  %270 = load i8*, i8** %19, align 8
  %271 = call i64 @strcmp(i8* %270, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %269
  %274 = load i8*, i8** @TRUE, align 8
  %275 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %276 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %275, i32 0, i32 2
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %273, %269, %264
  %278 = load i8*, i8** %18, align 8
  %279 = load i8*, i8** @SVN_REPOS_DUMPFILE_CONTENT_LENGTH, align 8
  %280 = call i64 @strcmp(i8* %278, i8* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %307

282:                                              ; preds = %277
  %283 = load i8*, i8** %18, align 8
  %284 = load i8*, i8** @SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH, align 8
  %285 = call i64 @strcmp(i8* %283, i8* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %307

287:                                              ; preds = %282
  %288 = load i8*, i8** %18, align 8
  %289 = load i8*, i8** @SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH, align 8
  %290 = call i64 @strcmp(i8* %288, i8* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %307

292:                                              ; preds = %287
  %293 = load i8*, i8** %18, align 8
  %294 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_PATH, align 8
  %295 = call i64 @strcmp(i8* %293, i8* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %292
  %298 = load i8*, i8** %18, align 8
  %299 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_KIND, align 8
  %300 = call i64 @strcmp(i8* %298, i8* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load i8*, i8** %18, align 8
  %304 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_ACTION, align 8
  %305 = call i64 @strcmp(i8* %303, i8* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %302, %297, %292, %287, %282, %277
  br label %353

308:                                              ; preds = %302
  %309 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %310 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %346

313:                                              ; preds = %308
  %314 = load i8*, i8** %18, align 8
  %315 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, align 8
  %316 = call i64 @strcmp(i8* %314, i8* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %346, label %318

318:                                              ; preds = %313
  %319 = load i8*, i8** %19, align 8
  %320 = call i32 @SVN_STR_TO_REV(i8* %319)
  store i32 %320, i32* %20, align 4
  %321 = load %struct.parse_baton_t*, %struct.parse_baton_t** %10, align 8
  %322 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call %struct.revmap_t* @apr_hash_get(i32 %323, i32* %20, i32 4)
  store %struct.revmap_t* %324, %struct.revmap_t** %21, align 8
  %325 = load %struct.revmap_t*, %struct.revmap_t** %21, align 8
  %326 = icmp ne %struct.revmap_t* %325, null
  br i1 %326, label %327, label %333

327:                                              ; preds = %318
  %328 = load %struct.revmap_t*, %struct.revmap_t** %21, align 8
  %329 = getelementptr inbounds %struct.revmap_t, %struct.revmap_t* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i64 @SVN_IS_VALID_REVNUM(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %327, %318
  %334 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %335 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %336 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %334, i32* null, i32 %335)
  store i32* %336, i32** %5, align 8
  br label %359

337:                                              ; preds = %327
  %338 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %339 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load i8*, i8** @SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, align 8
  %342 = load %struct.revmap_t*, %struct.revmap_t** %21, align 8
  %343 = getelementptr inbounds %struct.revmap_t, %struct.revmap_t* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @svn_repos__dumpfile_header_pushf(i32 %340, i8* %341, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %344)
  br label %353

346:                                              ; preds = %313, %308
  %347 = load %struct.node_baton_t*, %struct.node_baton_t** %11, align 8
  %348 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = load i8*, i8** %18, align 8
  %351 = load i8*, i8** %19, align 8
  %352 = call i32 @svn_repos__dumpfile_header_push(i32 %349, i8* %350, i8* %351)
  br label %353

353:                                              ; preds = %346, %337, %307
  %354 = load i32*, i32** %14, align 8
  %355 = call i32* @apr_hash_next(i32* %354)
  store i32* %355, i32** %14, align 8
  br label %244

356:                                              ; preds = %244
  br label %357

357:                                              ; preds = %356, %88
  %358 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %358, i32** %5, align 8
  br label %359

359:                                              ; preds = %357, %333, %235, %140
  %360 = load i32*, i32** %5, align 8
  ret i32* %360
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i64 @skip_path(i8*, i32, i32, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn__atoui64(i8*) #1

declare dso_local i32 @svn_repos__dumpfile_headers_create(i32*) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @output_revision(%struct.TYPE_2__*) #1

declare dso_local i32 @svn_repos__dumpfile_header_push(i32, i8*, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @SVN_STR_TO_REV(i8*) #1

declare dso_local %struct.revmap_t* @apr_hash_get(i32, i32*, i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_repos__dumpfile_header_pushf(i32, i8*, i8*, i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
