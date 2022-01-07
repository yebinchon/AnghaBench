; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_description_incoming_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_description_incoming_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Changes destined for a directory arrived during merge of\0A'^/%s:%ld'.\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Changes destined for a file arrived during merge of\0A'^/%s:%ld'.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Changes arrived during merge of\0A'^/%s:%ld'.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [100 x i8] c"Changes destined for a directory arrived via the following revisions during merge of\0A'^/%s:%ld-%ld'\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"Changes destined for a file arrived via the following revisions during merge of\0A'^/%s:%ld-%ld'\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"Changes from the following revisions arrived during merge of\0A'^/%s:%ld-%ld'\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"Changes destined for a directory arrived during reverse-merge of\0A'^/%s:%ld'.\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Changes destined for a file arrived during reverse-merge of\0A'^/%s:%ld'.\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Changes arrived during reverse-merge of\0A'^/%s:%ld'.\00", align 1
@.str.9 = private unnamed_addr constant [108 x i8] c"Changes destined for a directory arrived via the following revisions during reverse-merge of\0A'^/%s:%ld-%ld'\00", align 1
@.str.10 = private unnamed_addr constant [103 x i8] c"Changes destined for a file arrived via the following revisions during reverse-merge of\0A'^/%s:%ld-%ld'\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"Changes from the following revisions arrived during reverse-merge of\0A'^/%s:%ld-%ld'\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s:\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_7__*, i32*, i32*, i32*)* @conflict_tree_get_description_incoming_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_tree_get_description_incoming_edit(i8** %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load i8**, i8*** %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @conflict_tree_get_incoming_description_generic(i8** %26, %struct.TYPE_7__* %27, i32* %28, i32* %29, i32* %30)
  %32 = call i32* @svn_error_trace(i32 %31)
  store i32* %32, i32** %6, align 8
  br label %254

33:                                               ; preds = %5
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %14, i64* %15, i64* %16, %struct.TYPE_7__* %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %17, i64* %18, i64* %19, %struct.TYPE_7__* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_7__* %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %20, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* @svn_wc_operation_update, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %33
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %19, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i8* @describe_incoming_edit_upon_update(i64 %53, i64 %54, i64 %55, i64 %56, i32* %57)
  store i8* %58, i8** %12, align 8
  br label %242

59:                                               ; preds = %33
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @svn_wc_operation_switch, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i8*, i8** %17, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i8* @describe_incoming_edit_upon_switch(i8* %64, i64 %65, i64 %66, i32* %67)
  store i8* %68, i8** %12, align 8
  br label %241

69:                                               ; preds = %59
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @svn_wc_operation_merge, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %240

73:                                               ; preds = %69
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %18, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %158

77:                                               ; preds = %73
  %78 = load i64, i64* %15, align 8
  %79 = add nsw i64 %78, 1
  %80 = load i64, i64* %18, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %119

82:                                               ; preds = %77
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* @svn_node_dir, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32*, i32** %11, align 8
  %88 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %89 = load i8*, i8** %17, align 8
  %90 = load i64, i64* %18, align 8
  %91 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %87, i8* %88, i8* %89, i64 %90)
  store i8* %91, i8** %12, align 8
  br label %113

92:                                               ; preds = %82
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* @svn_node_file, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %19, align 8
  %98 = load i64, i64* @svn_node_symlink, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96, %92
  %101 = load i32*, i32** %11, align 8
  %102 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i8*, i8** %17, align 8
  %104 = load i64, i64* %18, align 8
  %105 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %101, i8* %102, i8* %103, i64 %104)
  store i8* %105, i8** %12, align 8
  br label %112

106:                                              ; preds = %96
  %107 = load i32*, i32** %11, align 8
  %108 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i8*, i8** %17, align 8
  %110 = load i64, i64* %18, align 8
  %111 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %107, i8* %108, i8* %109, i64 %110)
  store i8* %111, i8** %12, align 8
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %86
  %114 = load i32*, i32** %10, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i8* @apr_pstrdup(i32* %114, i8* %115)
  %117 = load i8**, i8*** %7, align 8
  store i8* %116, i8** %117, align 8
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %118, i32** %6, align 8
  br label %254

119:                                              ; preds = %77
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* @svn_node_dir, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i32*, i32** %11, align 8
  %125 = call i8* @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i8*, i8** %17, align 8
  %127 = load i64, i64* %15, align 8
  %128 = add nsw i64 %127, 1
  %129 = load i64, i64* %18, align 8
  %130 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %124, i8* %125, i8* %126, i64 %128, i64 %129)
  store i8* %130, i8** %12, align 8
  br label %156

131:                                              ; preds = %119
  %132 = load i64, i64* %19, align 8
  %133 = load i64, i64* @svn_node_file, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* @svn_node_symlink, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %135, %131
  %140 = load i32*, i32** %11, align 8
  %141 = call i8* @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i8*, i8** %17, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add nsw i64 %143, 1
  %145 = load i64, i64* %18, align 8
  %146 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %140, i8* %141, i8* %142, i64 %144, i64 %145)
  store i8* %146, i8** %12, align 8
  br label %155

147:                                              ; preds = %135
  %148 = load i32*, i32** %11, align 8
  %149 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0))
  %150 = load i8*, i8** %17, align 8
  %151 = load i64, i64* %15, align 8
  %152 = add nsw i64 %151, 1
  %153 = load i64, i64* %18, align 8
  %154 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %148, i8* %149, i8* %150, i64 %152, i64 %153)
  store i8* %154, i8** %12, align 8
  br label %155

155:                                              ; preds = %147, %139
  br label %156

156:                                              ; preds = %155, %123
  br label %157

157:                                              ; preds = %156
  br label %239

158:                                              ; preds = %73
  %159 = load i64, i64* %18, align 8
  %160 = add nsw i64 %159, 1
  %161 = load i64, i64* %15, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %200

163:                                              ; preds = %158
  %164 = load i64, i64* %19, align 8
  %165 = load i64, i64* @svn_node_dir, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i32*, i32** %11, align 8
  %169 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i8*, i8** %17, align 8
  %171 = load i64, i64* %15, align 8
  %172 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %168, i8* %169, i8* %170, i64 %171)
  store i8* %172, i8** %12, align 8
  br label %194

173:                                              ; preds = %163
  %174 = load i64, i64* %19, align 8
  %175 = load i64, i64* @svn_node_file, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %19, align 8
  %179 = load i64, i64* @svn_node_symlink, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %177, %173
  %182 = load i32*, i32** %11, align 8
  %183 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %184 = load i8*, i8** %17, align 8
  %185 = load i64, i64* %15, align 8
  %186 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %182, i8* %183, i8* %184, i64 %185)
  store i8* %186, i8** %12, align 8
  br label %193

187:                                              ; preds = %177
  %188 = load i32*, i32** %11, align 8
  %189 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %190 = load i8*, i8** %17, align 8
  %191 = load i64, i64* %15, align 8
  %192 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %188, i8* %189, i8* %190, i64 %191)
  store i8* %192, i8** %12, align 8
  br label %193

193:                                              ; preds = %187, %181
  br label %194

194:                                              ; preds = %193, %167
  %195 = load i32*, i32** %10, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = call i8* @apr_pstrdup(i32* %195, i8* %196)
  %198 = load i8**, i8*** %7, align 8
  store i8* %197, i8** %198, align 8
  %199 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %199, i32** %6, align 8
  br label %254

200:                                              ; preds = %158
  %201 = load i64, i64* %19, align 8
  %202 = load i64, i64* @svn_node_dir, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load i32*, i32** %11, align 8
  %206 = call i8* @_(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.9, i64 0, i64 0))
  %207 = load i8*, i8** %17, align 8
  %208 = load i64, i64* %18, align 8
  %209 = add nsw i64 %208, 1
  %210 = load i64, i64* %15, align 8
  %211 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %205, i8* %206, i8* %207, i64 %209, i64 %210)
  store i8* %211, i8** %12, align 8
  br label %237

212:                                              ; preds = %200
  %213 = load i64, i64* %19, align 8
  %214 = load i64, i64* @svn_node_file, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %220, label %216

216:                                              ; preds = %212
  %217 = load i64, i64* %19, align 8
  %218 = load i64, i64* @svn_node_symlink, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %216, %212
  %221 = load i32*, i32** %11, align 8
  %222 = call i8* @_(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.10, i64 0, i64 0))
  %223 = load i8*, i8** %17, align 8
  %224 = load i64, i64* %18, align 8
  %225 = add nsw i64 %224, 1
  %226 = load i64, i64* %15, align 8
  %227 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %221, i8* %222, i8* %223, i64 %225, i64 %226)
  store i8* %227, i8** %12, align 8
  br label %236

228:                                              ; preds = %216
  %229 = load i32*, i32** %11, align 8
  %230 = call i8* @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i64 0, i64 0))
  %231 = load i8*, i8** %17, align 8
  %232 = load i64, i64* %18, align 8
  %233 = add nsw i64 %232, 1
  %234 = load i64, i64* %15, align 8
  %235 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %229, i8* %230, i8* %231, i64 %233, i64 %234)
  store i8* %235, i8** %12, align 8
  br label %236

236:                                              ; preds = %228, %220
  br label %237

237:                                              ; preds = %236, %204
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238, %157
  br label %240

240:                                              ; preds = %239, %69
  br label %241

241:                                              ; preds = %240, %63
  br label %242

242:                                              ; preds = %241, %52
  %243 = load i32*, i32** %11, align 8
  %244 = load i8*, i8** %12, align 8
  %245 = load i32*, i32** %20, align 8
  %246 = load i32*, i32** %11, align 8
  %247 = call i64 @describe_incoming_edit_list_modified_revs(i32* %245, i32* %246)
  %248 = call i8* (i32*, i8*, i8*, i64, ...) @apr_psprintf(i32* %243, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %244, i64 %247)
  store i8* %248, i8** %12, align 8
  %249 = load i32*, i32** %10, align 8
  %250 = load i8*, i8** %12, align 8
  %251 = call i8* @apr_pstrdup(i32* %249, i8* %250)
  %252 = load i8**, i8*** %7, align 8
  store i8* %251, i8** %252, align 8
  %253 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %253, i32** %6, align 8
  br label %254

254:                                              ; preds = %242, %194, %113, %25
  %255 = load i32*, i32** %6, align 8
  ret i32* %255
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @conflict_tree_get_incoming_description_generic(i8**, %struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i64*, i64*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i64*, i64*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_7__*) #1

declare dso_local i8* @describe_incoming_edit_upon_update(i64, i64, i64, i64, i32*) #1

declare dso_local i8* @describe_incoming_edit_upon_switch(i8*, i64, i64, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i64, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i64 @describe_incoming_edit_list_modified_revs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
