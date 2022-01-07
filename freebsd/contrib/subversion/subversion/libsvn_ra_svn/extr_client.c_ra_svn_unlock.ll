; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"w(b(!\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"unlock-many\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"c(?c)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"!))\00", align 1
@SVN_ERR_RA_SVN_UNKNOWN_CMD = common dso_local global i64 0, align 8
@SVN_RA_SVN_LIST = common dso_local global i64 0, align 8
@SVN_ERR_RA_SVN_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Unlock response not a list\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wl\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_29__* null, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Unknown status for unlock command\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"Didn't receive end marker for unlock responses\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_28__*, i32*, i32, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, i8*, i32*)* @ra_svn_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @ra_svn_unlock(%struct.TYPE_28__* %0, i32* %1, i32 %2, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_27__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_29__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)* %3, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %14, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32* @svn_pool_create(i32* %35)
  store i32* %36, i32** %17, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32* @reparent_path_hash(%struct.TYPE_28__* %37, i32* %38, i32* %39, i32* %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %42, i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32* @apr_hash_first(i32* %47, i32* %48)
  store i32* %49, i32** %16, align 8
  br label %50

50:                                               ; preds = %72, %6
  %51 = load i32*, i32** %16, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %50
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @svn_pool_clear(i32* %54)
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @apr_hash_this(i32* %56, i8** %21, i32* null, i8** %20)
  %58 = load i8*, i8** %21, align 8
  store i8* %58, i8** %19, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i8*, i8** %20, align 8
  store i8* %63, i8** %22, align 8
  br label %65

64:                                               ; preds = %53
  store i8* null, i8** %22, align 8
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i32*, i32** %15, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i8*, i8** %19, align 8
  %69 = load i8*, i8** %22, align 8
  %70 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %66, i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %65
  %73 = load i32*, i32** %16, align 8
  %74 = call i32* @apr_hash_next(i32* %73)
  store i32* %74, i32** %16, align 8
  br label %50

75:                                               ; preds = %50
  %76 = load i32*, i32** %15, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %76, i32* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call %struct.TYPE_29__* @handle_auth_request(%struct.TYPE_26__* %80, i32* %81)
  store %struct.TYPE_29__* %82, %struct.TYPE_29__** %18, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %84 = icmp ne %struct.TYPE_29__* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %75
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SVN_ERR_RA_SVN_UNKNOWN_CMD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %93 = call i32 @svn_error_clear(%struct.TYPE_29__* %92)
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)** %11, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call %struct.TYPE_29__* @ra_svn_unlock_compat(%struct.TYPE_28__* %94, i32* %95, i32 %96, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)* %97, i8* %98, i32* %99)
  store %struct.TYPE_29__* %100, %struct.TYPE_29__** %7, align 8
  br label %211

101:                                              ; preds = %85, %75
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %103 = icmp ne %struct.TYPE_29__* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  store %struct.TYPE_29__* %105, %struct.TYPE_29__** %7, align 8
  br label %211

106:                                              ; preds = %101
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32* @apr_hash_first(i32* %107, i32* %108)
  store i32* %109, i32** %16, align 8
  br label %110

110:                                              ; preds = %184, %106
  %111 = load i32*, i32** %16, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %187

113:                                              ; preds = %110
  %114 = load i32*, i32** %17, align 8
  %115 = call i32 @svn_pool_clear(i32* %114)
  %116 = load i32*, i32** %15, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @svn_ra_svn__read_item(i32* %116, i32* %117, %struct.TYPE_27__** %23)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %121 = call i64 @is_done_response(%struct.TYPE_27__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %187

124:                                              ; preds = %113
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @apr_hash_this(i32* %125, i8** %24, i32* null, i8** null)
  %127 = load i8*, i8** %24, align 8
  store i8* %127, i8** %19, align 8
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SVN_RA_SVN_LIST, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %135 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %136 = call %struct.TYPE_29__* @svn_error_create(i32 %134, i32* null, i32 %135)
  store %struct.TYPE_29__* %136, %struct.TYPE_29__** %7, align 8
  br label %211

137:                                              ; preds = %124
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = call i32 (i32*, i8*, i8**, ...) @svn_ra_svn__parse_tuple(i32* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %26, i32** %27)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load i8*, i8** %26, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i32*, i32** %27, align 8
  %148 = call %struct.TYPE_29__* @svn_ra_svn__handle_failure_status(i32* %147)
  store %struct.TYPE_29__* %148, %struct.TYPE_29__** %18, align 8
  br label %163

149:                                              ; preds = %137
  %150 = load i8*, i8** %26, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32*, i32** %27, align 8
  %155 = call i32 (i32*, i8*, i8**, ...) @svn_ra_svn__parse_tuple(i32* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %19)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %157, %struct.TYPE_29__** %18, align 8
  br label %162

158:                                              ; preds = %149
  %159 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %160 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %161 = call %struct.TYPE_29__* @svn_error_create(i32 %159, i32* null, i32 %160)
  store %struct.TYPE_29__* %161, %struct.TYPE_29__** %7, align 8
  br label %211

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %146
  %164 = load %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)** %11, align 8
  %165 = icmp ne %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)** %11, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = load i8*, i8** %19, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %172 = load i32*, i32** %17, align 8
  %173 = call %struct.TYPE_29__* %167(i8* %168, i8* %169, i32 %170, i32* null, %struct.TYPE_29__* %171, i32* %172)
  store %struct.TYPE_29__* %173, %struct.TYPE_29__** %25, align 8
  br label %176

174:                                              ; preds = %163
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %175, %struct.TYPE_29__** %25, align 8
  br label %176

176:                                              ; preds = %174, %166
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %178 = call i32 @svn_error_clear(%struct.TYPE_29__* %177)
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %180 = icmp ne %struct.TYPE_29__* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  store %struct.TYPE_29__* %182, %struct.TYPE_29__** %7, align 8
  br label %211

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183
  %185 = load i32*, i32** %16, align 8
  %186 = call i32* @apr_hash_next(i32* %185)
  store i32* %186, i32** %16, align 8
  br label %110

187:                                              ; preds = %123, %110
  %188 = load i32*, i32** %16, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %203, label %190

190:                                              ; preds = %187
  %191 = load i32*, i32** %15, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = call i32 @svn_ra_svn__read_item(i32* %191, i32* %192, %struct.TYPE_27__** %28)
  %194 = call i32 @SVN_ERR(i32 %193)
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  %196 = call i64 @is_done_response(%struct.TYPE_27__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %190
  %199 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %200 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %201 = call %struct.TYPE_29__* @svn_error_create(i32 %199, i32* null, i32 %200)
  store %struct.TYPE_29__* %201, %struct.TYPE_29__** %7, align 8
  br label %211

202:                                              ; preds = %190
  br label %203

203:                                              ; preds = %202, %187
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** %13, align 8
  %206 = call i32 @svn_ra_svn__read_cmd_response(i32* %204, i32* %205, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %207 = call i32 @SVN_ERR(i32 %206)
  %208 = load i32*, i32** %17, align 8
  %209 = call i32 @svn_pool_destroy(i32* %208)
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %210, %struct.TYPE_29__** %7, align 8
  br label %211

211:                                              ; preds = %203, %198, %181, %158, %133, %104, %91
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  ret %struct.TYPE_29__* %212
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @reparent_path_hash(%struct.TYPE_28__*, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32*, i32*, i8*, ...) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local %struct.TYPE_29__* @handle_auth_request(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ra_svn_unlock_compat(%struct.TYPE_28__*, i32*, i32, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, i8*, i32*) #1

declare dso_local i32 @svn_ra_svn__read_item(i32*, i32*, %struct.TYPE_27__**) #1

declare dso_local i64 @is_done_response(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_29__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, ...) #1

declare dso_local %struct.TYPE_29__* @svn_ra_svn__handle_failure_status(i32*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
