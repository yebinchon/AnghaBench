; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"w((?c)b(!\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lock-many\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"c(?r)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"!))\00", align 1
@SVN_ERR_RA_SVN_UNKNOWN_CMD = common dso_local global i64 0, align 8
@SVN_RA_SVN_LIST = common dso_local global i64 0, align 8
@SVN_ERR_RA_SVN_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Lock response not a list\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wl\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Unknown status for lock command\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_29__* null, align 8
@.str.9 = private unnamed_addr constant [45 x i8] c"Didn't receive end marker for lock responses\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_28__*, i32*, i8*, i32, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, i8*, i32*)* @ra_svn_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @ra_svn_lock(%struct.TYPE_28__* %0, i32* %1, i8* %2, i32 %3, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_27__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_29__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)* %4, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %16, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %17, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call i32* @svn_pool_create(i32* %39)
  store i32* %40, i32** %20, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = call i32* @reparent_path_hash(%struct.TYPE_28__* %41, i32* %42, i32* %43, i32* %44)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %46, i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32* @apr_hash_first(i32* %52, i32* %53)
  store i32* %54, i32** %18, align 8
  br label %55

55:                                               ; preds = %73, %7
  %56 = load i32*, i32** %18, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @svn_pool_clear(i32* %59)
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @apr_hash_this(i32* %61, i8** %21, i32* null, i8** %23)
  %63 = load i8*, i8** %21, align 8
  store i8* %63, i8** %22, align 8
  %64 = load i8*, i8** %23, align 8
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %24, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = load i8*, i8** %22, align 8
  %69 = load i32*, i32** %24, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %66, i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %73

73:                                               ; preds = %58
  %74 = load i32*, i32** %18, align 8
  %75 = call i32* @apr_hash_next(i32* %74)
  store i32* %75, i32** %18, align 8
  br label %55

76:                                               ; preds = %55
  %77 = load i32*, i32** %17, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %77, i32* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = call %struct.TYPE_29__* @handle_auth_request(%struct.TYPE_26__* %81, i32* %82)
  store %struct.TYPE_29__* %83, %struct.TYPE_29__** %19, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %85 = icmp ne %struct.TYPE_29__* %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %76
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SVN_ERR_RA_SVN_UNKNOWN_CMD, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %94 = call i32 @svn_error_clear(%struct.TYPE_29__* %93)
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)** %13, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = call %struct.TYPE_29__* @ra_svn_lock_compat(%struct.TYPE_28__* %95, i32* %96, i8* %97, i32 %98, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)* %99, i8* %100, i32* %101)
  store %struct.TYPE_29__* %102, %struct.TYPE_29__** %8, align 8
  br label %220

103:                                              ; preds = %86, %76
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %105 = icmp ne %struct.TYPE_29__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  store %struct.TYPE_29__* %107, %struct.TYPE_29__** %8, align 8
  br label %220

108:                                              ; preds = %103
  %109 = load i32*, i32** %15, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i32* @apr_hash_first(i32* %109, i32* %110)
  store i32* %111, i32** %18, align 8
  br label %112

112:                                              ; preds = %193, %108
  %113 = load i32*, i32** %18, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %196

115:                                              ; preds = %112
  %116 = load i32*, i32** %18, align 8
  %117 = call i32 @apr_hash_this(i32* %116, i8** %26, i32* null, i8** null)
  %118 = load i8*, i8** %26, align 8
  store i8* %118, i8** %27, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = call i32 @svn_pool_clear(i32* %119)
  %121 = load i32*, i32** %17, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = call i32 @svn_ra_svn__read_item(i32* %121, i32* %122, %struct.TYPE_27__** %25)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %126 = call i64 @is_done_response(%struct.TYPE_27__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %196

129:                                              ; preds = %115
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SVN_RA_SVN_LIST, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %137 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %138 = call %struct.TYPE_29__* @svn_error_create(i32 %136, i32* null, i32 %137)
  store %struct.TYPE_29__* %138, %struct.TYPE_29__** %8, align 8
  br label %220

139:                                              ; preds = %129
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = call i32 @svn_ra_svn__parse_tuple(i32* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %29, i32** %31)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i8*, i8** %29, align 8
  %146 = call i64 @strcmp(i8* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i32*, i32** %31, align 8
  %150 = call %struct.TYPE_29__* @svn_ra_svn__handle_failure_status(i32* %149)
  store %struct.TYPE_29__* %150, %struct.TYPE_29__** %19, align 8
  br label %165

151:                                              ; preds = %139
  %152 = load i8*, i8** %29, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i32*, i32** %31, align 8
  %157 = load i32*, i32** %20, align 8
  %158 = call i32 @parse_lock(i32* %156, i32* %157, i32** %30)
  %159 = call i32 @SVN_ERR(i32 %158)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %19, align 8
  br label %164

160:                                              ; preds = %151
  %161 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %162 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %163 = call %struct.TYPE_29__* @svn_error_create(i32 %161, i32* null, i32 %162)
  store %struct.TYPE_29__* %163, %struct.TYPE_29__** %8, align 8
  br label %220

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %148
  %166 = load %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)** %13, align 8
  %167 = icmp ne %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %165
  %169 = load %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)** %13, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = load i8*, i8** %27, align 8
  %172 = load i32, i32* @TRUE, align 4
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %174 = icmp ne %struct.TYPE_29__* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %178

176:                                              ; preds = %168
  %177 = load i32*, i32** %30, align 8
  br label %178

178:                                              ; preds = %176, %175
  %179 = phi i32* [ null, %175 ], [ %177, %176 ]
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %181 = load i32*, i32** %20, align 8
  %182 = call %struct.TYPE_29__* %169(i8* %170, i8* %171, i32 %172, i32* %179, %struct.TYPE_29__* %180, i32* %181)
  store %struct.TYPE_29__* %182, %struct.TYPE_29__** %28, align 8
  br label %185

183:                                              ; preds = %165
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %184, %struct.TYPE_29__** %28, align 8
  br label %185

185:                                              ; preds = %183, %178
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %187 = call i32 @svn_error_clear(%struct.TYPE_29__* %186)
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %189 = icmp ne %struct.TYPE_29__* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  store %struct.TYPE_29__* %191, %struct.TYPE_29__** %8, align 8
  br label %220

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192
  %194 = load i32*, i32** %18, align 8
  %195 = call i32* @apr_hash_next(i32* %194)
  store i32* %195, i32** %18, align 8
  br label %112

196:                                              ; preds = %128, %112
  %197 = load i32*, i32** %18, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %212, label %199

199:                                              ; preds = %196
  %200 = load i32*, i32** %17, align 8
  %201 = load i32*, i32** %15, align 8
  %202 = call i32 @svn_ra_svn__read_item(i32* %200, i32* %201, %struct.TYPE_27__** %32)
  %203 = call i32 @SVN_ERR(i32 %202)
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  %205 = call i64 @is_done_response(%struct.TYPE_27__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %199
  %208 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %209 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %210 = call %struct.TYPE_29__* @svn_error_create(i32 %208, i32* null, i32 %209)
  store %struct.TYPE_29__* %210, %struct.TYPE_29__** %8, align 8
  br label %220

211:                                              ; preds = %199
  br label %212

212:                                              ; preds = %211, %196
  %213 = load i32*, i32** %17, align 8
  %214 = load i32*, i32** %15, align 8
  %215 = call i32 @svn_ra_svn__read_cmd_response(i32* %213, i32* %214, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load i32*, i32** %20, align 8
  %218 = call i32 @svn_pool_destroy(i32* %217)
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %219, %struct.TYPE_29__** %8, align 8
  br label %220

220:                                              ; preds = %212, %207, %190, %160, %135, %106, %92
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  ret %struct.TYPE_29__* %221
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @reparent_path_hash(%struct.TYPE_28__*, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32*, i32*, i8*, ...) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local %struct.TYPE_29__* @handle_auth_request(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ra_svn_lock_compat(%struct.TYPE_28__*, i32*, i8*, i32, %struct.TYPE_29__* (i8*, i8*, i32, i32*, %struct.TYPE_29__*, i32*)*, i8*, i32*) #1

declare dso_local i32 @svn_ra_svn__read_item(i32*, i32*, %struct.TYPE_27__**) #1

declare dso_local i64 @is_done_response(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_29__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i32**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_29__* @svn_ra_svn__handle_failure_status(i32*) #1

declare dso_local i32 @parse_lock(i32*, i32*, i32**) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
