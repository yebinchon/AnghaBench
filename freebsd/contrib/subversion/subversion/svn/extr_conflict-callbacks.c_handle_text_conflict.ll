; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_handle_text_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_handle_text_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_client_conflict_option_unspecified = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Merge conflict discovered in binary file '%s'.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Merge conflict discovered in file '%s'.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"mf\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"tf\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"Invalid option; cannot display conflicts for a binary file.\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Invalid option; original files not available.\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Invalid option; there's no merged version to diff.\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c":-E\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c":-g\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"=>-\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c":>.\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"Invalid option; there's no base path to merge.\0A\0A\00", align 1
@SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL = common dso_local global i64 0, align 8
@SVN_ERR_EXTERNAL_PROGRAM = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c":-l\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Invalid option.\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@svn_client_conflict_option_undefined = common dso_local global i64 0, align 8
@svn_client_conflict_option_working_text_where_conflicted = common dso_local global i64 0, align 8
@svn_client_conflict_option_incoming_text_where_conflicted = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [69 x i8] c"Invalid option; cannot choose based on conflicts in a binary file.\0A\0A\00", align 1
@svn_client_conflict_option_merged_text = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [78 x i8] c"Invalid option; use diff/edit/merge/launch before choosing 'mark resolved'.\0A\0A\00", align 1
@svn_client_conflict_option_postpone = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_15__*, i8*, i32*, i32*, i32*, i32*)* @handle_text_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @handle_text_conflict(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5, %struct.TYPE_15__* %6, i8* %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i64, align 8
  %40 = alloca [9 x i8*], align 16
  %41 = alloca i8**, align 8
  %42 = alloca %struct.TYPE_16__*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca %struct.TYPE_14__*, align 8
  %45 = alloca i32, align 4
  %46 = alloca [1024 x i8], align 16
  %47 = alloca i8*, align 8
  %48 = alloca %struct.TYPE_14__*, align 8
  %49 = alloca [1024 x i8], align 16
  %50 = alloca i8*, align 8
  %51 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i8* %5, i8** %19, align 8
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %52 = load i32*, i32** %25, align 8
  %53 = call i32* @svn_pool_create(i32* %52)
  store i32* %53, i32** %26, align 8
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %27, align 4
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %28, align 4
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %29, align 4
  %57 = load i32*, i32** %18, align 8
  %58 = call i8* @svn_client_conflict_get_local_abspath(i32* %57)
  store i8* %58, i8** %31, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = call i8* @svn_client_conflict_text_get_mime_type(i32* %59)
  store i8* %60, i8** %32, align 8
  %61 = load i8*, i8** %32, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %12
  %64 = load i8*, i8** %32, align 8
  %65 = call i32 @svn_mime_type_is_binary(i8* %64)
  br label %68

66:                                               ; preds = %12
  %67 = load i32, i32* @FALSE, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  store i32 %69, i32* %33, align 4
  %70 = load i32*, i32** %18, align 8
  %71 = call i8* @svn_client_conflict_get_local_abspath(i32* %70)
  store i8* %71, i8** %37, align 8
  %72 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  store i64 %72, i64* %39, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = load i32*, i32** %25, align 8
  %75 = load i32*, i32** %25, align 8
  %76 = call i32 @svn_client_conflict_text_get_contents(i32* null, i8** %35, i8** %34, i8** %36, i32* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i8*, i8** %19, align 8
  %79 = load i8*, i8** %31, align 8
  %80 = load i32*, i32** %25, align 8
  %81 = call i8* @svn_cl__local_style_skip_ancestor(i8* %78, i8* %79, i32* %80)
  store i8* %81, i8** %30, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %33, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32*, i32** %25, align 8
  %91 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8*, i8** %30, align 8
  %95 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %89, i32* %90, i8* %93, i8* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  br label %106

97:                                               ; preds = %85
  %98 = load i32, i32* @stderr, align 4
  %99 = load i32*, i32** %25, align 8
  %100 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8*, i8** %30, align 8
  %104 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %98, i32* %99, i8* %102, i8* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %106

106:                                              ; preds = %97, %88
  %107 = load i32, i32* @TRUE, align 4
  %108 = load i32*, i32** %17, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %68
  %110 = load i32, i32* %33, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %109
  %113 = load i8*, i8** %37, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8*, i8** %34, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %115, %112
  %119 = load i8*, i8** %34, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = load i8*, i8** %35, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i8*, i8** %36, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124, %115
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %27, align 4
  br label %129

129:                                              ; preds = %127, %124, %121, %118, %109
  %130 = load i32*, i32** %18, align 8
  %131 = load i32*, i32** %24, align 8
  %132 = load i32, i32* %33, align 4
  %133 = load i32*, i32** %25, align 8
  %134 = load i32*, i32** %25, align 8
  %135 = call i32 @build_text_conflict_options(i32** %38, i32* %130, i32* %131, i32 %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  br label %137

137:                                              ; preds = %612, %592, %572, %420, %364, %291, %258, %241, %203, %129
  %138 = load i32, i32* @TRUE, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %613

140:                                              ; preds = %137
  %141 = getelementptr inbounds [9 x i8*], [9 x i8*]* %40, i64 0, i64 0
  store i8** %141, i8*** %41, align 8
  %142 = load i32*, i32** %26, align 8
  %143 = call i32 @svn_pool_clear(i32* %142)
  %144 = load i8**, i8*** %41, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %41, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %144, align 8
  %146 = load i32, i32* %27, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %140
  %149 = load i8*, i8** %35, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8**, i8*** %41, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i32 1
  store i8** %153, i8*** %41, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %152, align 8
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i8**, i8*** %41, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i32 1
  store i8** %156, i8*** %41, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %155, align 8
  %157 = load i8*, i8** %35, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i8**, i8*** %41, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i32 1
  store i8** %161, i8*** %41, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %160, align 8
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %29, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i8**, i8*** %41, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i32 1
  store i8** %167, i8*** %41, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %166, align 8
  br label %168

168:                                              ; preds = %165, %162
  br label %190

169:                                              ; preds = %140
  %170 = load i32, i32* %29, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %33, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172, %169
  %176 = load i8**, i8*** %41, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i32 1
  store i8** %177, i8*** %41, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %176, align 8
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i8*, i8** %35, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %33, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181, %178
  %185 = load i8**, i8*** %41, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i32 1
  store i8** %186, i8*** %41, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %185, align 8
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i8**, i8*** %41, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i32 1
  store i8** %189, i8*** %41, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %188, align 8
  br label %190

190:                                              ; preds = %187, %168
  %191 = load i8**, i8*** %41, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i32 1
  store i8** %192, i8*** %41, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %191, align 8
  %193 = load i8**, i8*** %41, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %194, i8*** %41, align 8
  store i8* null, i8** %193, align 8
  %195 = load i32*, i32** %38, align 8
  %196 = getelementptr inbounds [9 x i8*], [9 x i8*]* %40, i64 0, i64 0
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %198 = load i32*, i32** %26, align 8
  %199 = call i32 @prompt_user(%struct.TYPE_16__** %42, i32* %195, i8** %196, i32* null, %struct.TYPE_15__* %197, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %202 = icmp ne %struct.TYPE_16__* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %190
  br label %137

204:                                              ; preds = %190
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @strcmp(i32 %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %39, align 8
  %214 = load i32, i32* @TRUE, align 4
  %215 = load i32*, i32** %16, align 8
  store i32 %214, i32* %215, align 4
  br label %613

216:                                              ; preds = %204
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @strcmp(i32 %219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %216
  %223 = load i32*, i32** %38, align 8
  %224 = load i32*, i32** %26, align 8
  %225 = call i32 @help_string(i8** %43, i32* %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  %227 = load i32, i32* @stderr, align 4
  %228 = load i32*, i32** %25, align 8
  %229 = load i8*, i8** %43, align 8
  %230 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %227, i32* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %229)
  %231 = call i32 @SVN_ERR(i32 %230)
  br label %611

232:                                              ; preds = %216
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @strcmp(i32 %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %279

238:                                              ; preds = %232
  %239 = load i32, i32* %33, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %238
  %242 = load i32, i32* @stderr, align 4
  %243 = load i32*, i32** %26, align 8
  %244 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0))
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i8*
  %247 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %242, i32* %243, i8* %246)
  %248 = call i32 @SVN_ERR(i32 %247)
  br label %137

249:                                              ; preds = %238
  %250 = load i8*, i8** %35, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i8*, i8** %34, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i8*, i8** %36, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %266, label %258

258:                                              ; preds = %255, %252, %249
  %259 = load i32, i32* @stderr, align 4
  %260 = load i32*, i32** %26, align 8
  %261 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  %262 = sext i32 %261 to i64
  %263 = inttoptr i64 %262 to i8*
  %264 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %259, i32* %260, i8* %263)
  %265 = call i32 @SVN_ERR(i32 %264)
  br label %137

266:                                              ; preds = %255
  br label %267

267:                                              ; preds = %266
  %268 = load i32*, i32** %18, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %26, align 8
  %276 = call i32 @show_conflicts(i32* %268, i32 %271, i32 %274, i32* %275)
  %277 = call i32 @SVN_ERR(i32 %276)
  %278 = load i32, i32* @TRUE, align 4
  store i32 %278, i32* %29, align 4
  br label %610

279:                                              ; preds = %232
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i64 @strcmp(i32 %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %313

285:                                              ; preds = %279
  %286 = load i32, i32* %27, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i8*, i8** %35, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %299, label %291

291:                                              ; preds = %288, %285
  %292 = load i32, i32* @stderr, align 4
  %293 = load i32*, i32** %26, align 8
  %294 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0))
  %295 = sext i32 %294 to i64
  %296 = inttoptr i64 %295 to i8*
  %297 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %292, i32* %293, i8* %296)
  %298 = call i32 @SVN_ERR(i32 %297)
  br label %137

299:                                              ; preds = %288
  %300 = load i32*, i32** %18, align 8
  %301 = load i8*, i8** %37, align 8
  %302 = load i8*, i8** %19, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %26, align 8
  %310 = call i32 @show_diff(i32* %300, i8* %301, i8* %302, i32 %305, i32 %308, i32* %309)
  %311 = call i32 @SVN_ERR(i32 %310)
  %312 = load i32, i32* @TRUE, align 4
  store i32 %312, i32* %29, align 4
  br label %609

313:                                              ; preds = %279
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = call i64 @strcmp(i32 %316, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %313
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = call i64 @strcmp(i32 %322, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %319, %313
  %326 = load i8*, i8** %37, align 8
  %327 = load i8*, i8** %21, align 8
  %328 = load i32*, i32** %22, align 8
  %329 = load i32*, i32** %26, align 8
  %330 = call i32 @open_editor(i32* %28, i8* %326, i8* %327, i32* %328, i32* %329)
  %331 = call i32 @SVN_ERR(i32 %330)
  %332 = load i32, i32* %28, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %325
  %335 = load i32, i32* @TRUE, align 4
  store i32 %335, i32* %29, align 4
  br label %336

336:                                              ; preds = %334, %325
  br label %608

337:                                              ; preds = %319
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = call i64 @strcmp(i32 %340, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %361, label %343

343:                                              ; preds = %337
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = call i64 @strcmp(i32 %346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %361, label %349

349:                                              ; preds = %343
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = call i64 @strcmp(i32 %352, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %349
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i64 @strcmp(i32 %358, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %439

361:                                              ; preds = %355, %349, %343, %337
  %362 = load i8*, i8** %35, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %372, label %364

364:                                              ; preds = %361
  %365 = load i32, i32* @stderr, align 4
  %366 = load i32*, i32** %26, align 8
  %367 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0))
  %368 = sext i32 %367 to i64
  %369 = inttoptr i64 %368 to i8*
  %370 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %365, i32* %366, i8* %369)
  %371 = call i32 @SVN_ERR(i32 %370)
  br label %137

372:                                              ; preds = %361
  %373 = load i8*, i8** %34, align 8
  %374 = load i8*, i8** %36, align 8
  %375 = load i8*, i8** %35, align 8
  %376 = load i8*, i8** %37, align 8
  %377 = load i8*, i8** %31, align 8
  %378 = load i32*, i32** %22, align 8
  %379 = load i32*, i32** %26, align 8
  %380 = call %struct.TYPE_14__* @svn_cl__merge_file_externally(i8* %373, i8* %374, i8* %375, i8* %376, i8* %377, i32* %378, i32* null, i32* %379)
  store %struct.TYPE_14__* %380, %struct.TYPE_14__** %44, align 8
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %382 = icmp ne %struct.TYPE_14__* %381, null
  br i1 %382, label %383, label %435

383:                                              ; preds = %372
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %414

389:                                              ; preds = %383
  %390 = load i32, i32* @TRUE, align 4
  store i32 %390, i32* %45, align 4
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %392 = call i32 @svn_error_clear(%struct.TYPE_14__* %391)
  %393 = load i8*, i8** %34, align 8
  %394 = load i8*, i8** %36, align 8
  %395 = load i8*, i8** %35, align 8
  %396 = load i8*, i8** %37, align 8
  %397 = load i8*, i8** %31, align 8
  %398 = load i8*, i8** %19, align 8
  %399 = load i8*, i8** %21, align 8
  %400 = load i32*, i32** %22, align 8
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** %26, align 8
  %408 = call i32 @svn_cl__merge_file(i32* %45, i8* %393, i8* %394, i8* %395, i8* %396, i8* %397, i8* %398, i8* %399, i32* %400, i32 %403, i32 %406, i32* %407)
  %409 = call i32 @SVN_ERR(i32 %408)
  %410 = load i32, i32* %45, align 4
  %411 = icmp ne i32 %410, 0
  %412 = xor i1 %411, true
  %413 = zext i1 %412 to i32
  store i32 %413, i32* %29, align 4
  br label %434

414:                                              ; preds = %383
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @SVN_ERR_EXTERNAL_PROGRAM, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %431

420:                                              ; preds = %414
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %422 = getelementptr inbounds [1024 x i8], [1024 x i8]* %46, i64 0, i64 0
  %423 = call i8* @svn_err_best_message(%struct.TYPE_14__* %421, i8* %422, i32 1024)
  store i8* %423, i8** %47, align 8
  %424 = load i32, i32* @stderr, align 4
  %425 = load i32*, i32** %26, align 8
  %426 = load i8*, i8** %47, align 8
  %427 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %424, i32* %425, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %426)
  %428 = call i32 @SVN_ERR(i32 %427)
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %430 = call i32 @svn_error_clear(%struct.TYPE_14__* %429)
  br label %137

431:                                              ; preds = %414
  %432 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %433 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %432)
  store %struct.TYPE_14__* %433, %struct.TYPE_14__** %13, align 8
  br label %646

434:                                              ; preds = %389
  br label %438

435:                                              ; preds = %372
  %436 = load i32, i32* @TRUE, align 4
  store i32 %436, i32* %28, align 4
  %437 = load i32, i32* @TRUE, align 4
  store i32 %437, i32* %29, align 4
  br label %438

438:                                              ; preds = %435, %434
  br label %607

439:                                              ; preds = %355
  %440 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %441 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = call i64 @strcmp(i32 %442, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %451, label %445

445:                                              ; preds = %439
  %446 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = call i64 @strcmp(i32 %448, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %521

451:                                              ; preds = %445, %439
  %452 = load i8*, i8** %34, align 8
  %453 = icmp ne i8* %452, null
  br i1 %453, label %454, label %512

454:                                              ; preds = %451
  %455 = load i8*, i8** %36, align 8
  %456 = icmp ne i8* %455, null
  br i1 %456, label %457, label %512

457:                                              ; preds = %454
  %458 = load i8*, i8** %35, align 8
  %459 = icmp ne i8* %458, null
  br i1 %459, label %460, label %512

460:                                              ; preds = %457
  %461 = load i8*, i8** %37, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %463, label %512

463:                                              ; preds = %460
  %464 = load i8*, i8** %34, align 8
  %465 = load i8*, i8** %36, align 8
  %466 = load i8*, i8** %35, align 8
  %467 = load i8*, i8** %37, align 8
  %468 = load i8*, i8** %31, align 8
  %469 = load i32*, i32** %22, align 8
  %470 = load i32*, i32** %26, align 8
  %471 = call %struct.TYPE_14__* @svn_cl__merge_file_externally(i8* %464, i8* %465, i8* %466, i8* %467, i8* %468, i32* %469, i32* null, i32* %470)
  store %struct.TYPE_14__* %471, %struct.TYPE_14__** %48, align 8
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %473 = icmp ne %struct.TYPE_14__* %472, null
  br i1 %473, label %474, label %497

474:                                              ; preds = %463
  %475 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %486, label %480

480:                                              ; preds = %474
  %481 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %482 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @SVN_ERR_EXTERNAL_PROGRAM, align 8
  %485 = icmp eq i64 %483, %484
  br i1 %485, label %486, label %497

486:                                              ; preds = %480, %474
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %488 = getelementptr inbounds [1024 x i8], [1024 x i8]* %49, i64 0, i64 0
  %489 = call i8* @svn_err_best_message(%struct.TYPE_14__* %487, i8* %488, i32 1024)
  store i8* %489, i8** %50, align 8
  %490 = load i32, i32* @stderr, align 4
  %491 = load i32*, i32** %26, align 8
  %492 = load i8*, i8** %50, align 8
  %493 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %490, i32* %491, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %492)
  %494 = call i32 @SVN_ERR(i32 %493)
  %495 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %496 = call i32 @svn_error_clear(%struct.TYPE_14__* %495)
  br label %506

497:                                              ; preds = %480, %463
  %498 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %499 = icmp ne %struct.TYPE_14__* %498, null
  br i1 %499, label %500, label %503

500:                                              ; preds = %497
  %501 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %502 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %501)
  store %struct.TYPE_14__* %502, %struct.TYPE_14__** %13, align 8
  br label %646

503:                                              ; preds = %497
  %504 = load i32, i32* @TRUE, align 4
  store i32 %504, i32* %28, align 4
  br label %505

505:                                              ; preds = %503
  br label %506

506:                                              ; preds = %505, %486
  %507 = load i32, i32* %28, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %506
  %510 = load i32, i32* @TRUE, align 4
  store i32 %510, i32* %29, align 4
  br label %511

511:                                              ; preds = %509, %506
  br label %520

512:                                              ; preds = %460, %457, %454, %451
  %513 = load i32, i32* @stderr, align 4
  %514 = load i32*, i32** %26, align 8
  %515 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %516 = sext i32 %515 to i64
  %517 = inttoptr i64 %516 to i8*
  %518 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %513, i32* %514, i8* %517)
  %519 = call i32 @SVN_ERR(i32 %518)
  br label %520

520:                                              ; preds = %512, %511
  br label %606

521:                                              ; preds = %445
  %522 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %523 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 8
  %525 = call i64 @strcmp(i32 %524, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %527, label %551

527:                                              ; preds = %521
  %528 = load i32, i32* @TRUE, align 4
  store i32 %528, i32* %51, align 4
  %529 = load i8*, i8** %34, align 8
  %530 = load i8*, i8** %36, align 8
  %531 = load i8*, i8** %35, align 8
  %532 = load i8*, i8** %37, align 8
  %533 = load i8*, i8** %31, align 8
  %534 = load i8*, i8** %19, align 8
  %535 = load i8*, i8** %21, align 8
  %536 = load i32*, i32** %22, align 8
  %537 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %541 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = load i32*, i32** %26, align 8
  %544 = call i32 @svn_cl__merge_file(i32* %51, i8* %529, i8* %530, i8* %531, i8* %532, i8* %533, i8* %534, i8* %535, i32* %536, i32 %539, i32 %542, i32* %543)
  %545 = call i32 @SVN_ERR(i32 %544)
  %546 = load i32, i32* %51, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %550, label %548

548:                                              ; preds = %527
  %549 = load i32, i32* @TRUE, align 4
  store i32 %549, i32* %29, align 4
  br label %550

550:                                              ; preds = %548, %527
  br label %605

551:                                              ; preds = %521
  %552 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %553 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = load i64, i64* @svn_client_conflict_option_undefined, align 8
  %556 = icmp ne i64 %554, %555
  br i1 %556, label %557, label %604

557:                                              ; preds = %551
  %558 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %559 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @svn_client_conflict_option_working_text_where_conflicted, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %569, label %563

563:                                              ; preds = %557
  %564 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %565 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @svn_client_conflict_option_incoming_text_where_conflicted, align 8
  %568 = icmp eq i64 %566, %567
  br i1 %568, label %569, label %580

569:                                              ; preds = %563, %557
  %570 = load i32, i32* %33, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %580

572:                                              ; preds = %569
  %573 = load i32, i32* @stderr, align 4
  %574 = load i32*, i32** %26, align 8
  %575 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0))
  %576 = sext i32 %575 to i64
  %577 = inttoptr i64 %576 to i8*
  %578 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %573, i32* %574, i8* %577)
  %579 = call i32 @SVN_ERR(i32 %578)
  br label %137

580:                                              ; preds = %569, %563
  %581 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %582 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %581, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = load i64, i64* @svn_client_conflict_option_merged_text, align 8
  %585 = icmp eq i64 %583, %584
  br i1 %585, label %586, label %600

586:                                              ; preds = %580
  %587 = load i32, i32* %29, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %600, label %589

589:                                              ; preds = %586
  %590 = load i32, i32* %27, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %600

592:                                              ; preds = %589
  %593 = load i32, i32* @stderr, align 4
  %594 = load i32*, i32** %26, align 8
  %595 = call i32 @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.27, i64 0, i64 0))
  %596 = sext i32 %595 to i64
  %597 = inttoptr i64 %596 to i8*
  %598 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %593, i32* %594, i8* %597)
  %599 = call i32 @SVN_ERR(i32 %598)
  br label %137

600:                                              ; preds = %589, %586, %580
  %601 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %602 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %601, i32 0, i32 0
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %39, align 8
  br label %613

604:                                              ; preds = %551
  br label %605

605:                                              ; preds = %604, %550
  br label %606

606:                                              ; preds = %605, %520
  br label %607

607:                                              ; preds = %606, %438
  br label %608

608:                                              ; preds = %607, %336
  br label %609

609:                                              ; preds = %608, %299
  br label %610

610:                                              ; preds = %609, %267
  br label %611

611:                                              ; preds = %610, %222
  br label %612

612:                                              ; preds = %611
  br label %137

613:                                              ; preds = %600, %210, %137
  %614 = load i32*, i32** %26, align 8
  %615 = call i32 @svn_pool_destroy(i32* %614)
  %616 = load i64, i64* %39, align 8
  %617 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  %618 = icmp ne i64 %616, %617
  br i1 %618, label %619, label %636

619:                                              ; preds = %613
  %620 = load i64, i64* %39, align 8
  %621 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  %622 = icmp ne i64 %620, %621
  br i1 %622, label %623, label %636

623:                                              ; preds = %619
  %624 = load i32*, i32** %18, align 8
  %625 = load i64, i64* %39, align 8
  %626 = load i32, i32* @TRUE, align 4
  %627 = load i32, i32* @FALSE, align 4
  %628 = load i8*, i8** %19, align 8
  %629 = load i32*, i32** %23, align 8
  %630 = load i32*, i32** %24, align 8
  %631 = load i32*, i32** %25, align 8
  %632 = call i32 @mark_conflict_resolved(i32* %624, i64 %625, i32 %626, i32* null, i32 %627, i8* %628, i32* %629, i32* %630, i32* %631)
  %633 = call i32 @SVN_ERR(i32 %632)
  %634 = load i32, i32* @TRUE, align 4
  %635 = load i32*, i32** %14, align 8
  store i32 %634, i32* %635, align 4
  br label %644

636:                                              ; preds = %619, %613
  %637 = load i32, i32* @FALSE, align 4
  %638 = load i32*, i32** %14, align 8
  store i32 %637, i32* %638, align 4
  %639 = load i64, i64* %39, align 8
  %640 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  %641 = icmp eq i64 %639, %640
  %642 = zext i1 %641 to i32
  %643 = load i32*, i32** %15, align 8
  store i32 %642, i32* %643, align 4
  br label %644

644:                                              ; preds = %636, %623
  %645 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %645, %struct.TYPE_14__** %13, align 8
  br label %646

646:                                              ; preds = %644, %500, %431
  %647 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  ret %struct.TYPE_14__* %647
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(i32*) #1

declare dso_local i8* @svn_client_conflict_text_get_mime_type(i32*) #1

declare dso_local i32 @svn_mime_type_is_binary(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_text_get_contents(i32*, i8**, i8**, i8**, i32*, i32*, i32*) #1

declare dso_local i8* @svn_cl__local_style_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_cmdline_fprintf(i32, i32*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @build_text_conflict_options(i32**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @prompt_user(%struct.TYPE_16__**, i32*, i8**, i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @help_string(i8**, i32*, i32*) #1

declare dso_local i32 @show_conflicts(i32*, i32, i32, i32*) #1

declare dso_local i32 @show_diff(i32*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @open_editor(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_cl__merge_file_externally(i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_cl__merge_file(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i8* @svn_err_best_message(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @mark_conflict_resolved(i32*, i64, i32, i32*, i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
