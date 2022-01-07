; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_serf__handle_digest_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_serf__handle_digest_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__*, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i8*, i32*, i8*, i32, i32, i8*, i8*, i8*, i32*, i8*, i8* }

@SERF_ERROR_AUTHN_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@SERF_ERROR_AUTHN_MISSING_ATTRIBUTE = common dso_local global i64 0, align 8
@HOST = common dso_local global i32 0, align 4
@PROXY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Proxy-Authorization\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf__handle_digest_auth(i32 %0, %struct.TYPE_15__* %1, i32* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca %struct.TYPE_16__*, align 8
  %27 = alloca %struct.TYPE_18__*, align 8
  %28 = alloca %struct.TYPE_19__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %25, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %26, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %7
  %46 = load i64, i64* @SERF_ERROR_AUTHN_FAILED, align 8
  store i64 %46, i64* %8, align 8
  br label %263

47:                                               ; preds = %7
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 401
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %52 = call %struct.TYPE_18__* @serf__get_authn_info_for_server(%struct.TYPE_17__* %51)
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %27, align 8
  br label %56

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %27, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %28, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i8* @apr_pstrdup(i32* %60, i8* %61)
  store i8* %62, i8** %16, align 8
  br label %63

63:                                               ; preds = %148, %56
  %64 = load i8*, i8** %16, align 8
  %65 = call i8* @apr_strtok(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %17)
  store i8* %65, i8** %24, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %149

67:                                               ; preds = %63
  %68 = load i8*, i8** %24, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 61)
  store i8* %69, i8** %33, align 8
  %70 = load i8*, i8** %33, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %148

73:                                               ; preds = %67
  %74 = load i8*, i8** %33, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %33, align 8
  store i8 0, i8* %74, align 1
  br label %76

76:                                               ; preds = %88, %73
  %77 = load i8*, i8** %24, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %24, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 32
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %24, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %24, align 8
  br label %76

91:                                               ; preds = %86
  %92 = load i8*, i8** %33, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 34
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load i8*, i8** %33, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = sub i64 %98, 1
  store i64 %99, i64* %34, align 8
  %100 = load i8*, i8** %33, align 8
  %101 = load i64, i64* %34, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 34
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load i8*, i8** %33, align 8
  %108 = load i64, i64* %34, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %33, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %33, align 8
  br label %112

112:                                              ; preds = %106, %96
  br label %113

113:                                              ; preds = %112, %91
  %114 = load i8*, i8** %24, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i8*, i8** %33, align 8
  store i8* %118, i8** %19, align 8
  br label %147

119:                                              ; preds = %113
  %120 = load i8*, i8** %24, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i8*, i8** %33, align 8
  store i8* %124, i8** %20, align 8
  br label %146

125:                                              ; preds = %119
  %126 = load i8*, i8** %24, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i8*, i8** %33, align 8
  store i8* %130, i8** %21, align 8
  br label %145

131:                                              ; preds = %125
  %132 = load i8*, i8** %24, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i8*, i8** %33, align 8
  store i8* %136, i8** %22, align 8
  br label %144

137:                                              ; preds = %131
  %138 = load i8*, i8** %24, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i8*, i8** %33, align 8
  store i8* %142, i8** %23, align 8
  br label %143

143:                                              ; preds = %141, %137
  br label %144

144:                                              ; preds = %143, %135
  br label %145

145:                                              ; preds = %144, %129
  br label %146

146:                                              ; preds = %145, %123
  br label %147

147:                                              ; preds = %146, %117
  br label %148

148:                                              ; preds = %147, %72
  store i8* null, i8** %16, align 8
  br label %63

149:                                              ; preds = %63
  %150 = load i8*, i8** %19, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* @SERF_ERROR_AUTHN_MISSING_ATTRIBUTE, align 8
  store i64 %153, i64* %8, align 8
  br label %263

154:                                              ; preds = %149
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %155, 401
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* @HOST, align 4
  br label %161

159:                                              ; preds = %154
  %160 = load i32, i32* @PROXY, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %164 = load i8*, i8** %19, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = call i8* @serf__construct_realm(i32 %162, %struct.TYPE_17__* %163, i8* %164, i32* %165)
  store i8* %166, i8** %18, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = call i32 @apr_pool_create(i32** %30, i32* %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** %18, align 8
  %179 = load i32*, i32** %30, align 8
  %180 = call i64 @serf__provide_credentials(%struct.TYPE_16__* %169, i8** %31, i8** %32, %struct.TYPE_15__* %170, i8* %171, i32 %172, i32 %177, i8* %178, i32* %179)
  store i64 %180, i64* %29, align 8
  %181 = load i64, i64* %29, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %161
  %184 = load i32*, i32** %30, align 8
  %185 = call i32 @apr_pool_destroy(i32* %184)
  %186 = load i64, i64* %29, align 8
  store i64 %186, i64* %8, align 8
  br label %263

187:                                              ; preds = %161
  %188 = load i32, i32* %9, align 4
  %189 = icmp eq i32 %188, 401
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  store i32* %196, i32** %198, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i8*, i8** %22, align 8
  %203 = call i8* @apr_pstrdup(i32* %201, i8* %202)
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 10
  store i8* %203, i8** %205, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i8*, i8** %20, align 8
  %210 = call i8* @apr_pstrdup(i32* %208, i8* %209)
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 9
  store i8* %210, i8** %212, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 8
  store i32* null, i32** %214, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i8*, i8** %23, align 8
  %219 = call i8* @apr_pstrdup(i32* %217, i8* %218)
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 7
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i8*, i8** %21, align 8
  %226 = call i8* @apr_pstrdup(i32* %224, i8* %225)
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 6
  store i8* %226, i8** %228, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i8*, i8** %19, align 8
  %233 = call i8* @apr_pstrdup(i32* %231, i8* %232)
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i8*, i8** %31, align 8
  %240 = call i8* @apr_pstrdup(i32* %238, i8* %239)
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 5
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 3
  %249 = load i8*, i8** %31, align 8
  %250 = load i8*, i8** %32, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 2
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = call i64 @build_digest_ha1(i32* %248, i8* %249, i8* %250, i8* %253, i32* %256)
  store i64 %257, i64* %29, align 8
  %258 = load i32*, i32** %30, align 8
  %259 = call i32 @apr_pool_destroy(i32* %258)
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %261 = call i32 @serf_connection_set_max_outstanding_requests(%struct.TYPE_17__* %260, i32 0)
  %262 = load i64, i64* %29, align 8
  store i64 %262, i64* %8, align 8
  br label %263

263:                                              ; preds = %187, %183, %152, %45
  %264 = load i64, i64* %8, align 8
  ret i64 %264
}

declare dso_local %struct.TYPE_18__* @serf__get_authn_info_for_server(%struct.TYPE_17__*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @apr_strtok(i8*, i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @serf__construct_realm(i32, %struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i32 @apr_pool_create(i32**, i32*) #1

declare dso_local i64 @serf__provide_credentials(%struct.TYPE_16__*, i8**, i8**, %struct.TYPE_15__*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @apr_pool_destroy(i32*) #1

declare dso_local i64 @build_digest_ha1(i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @serf_connection_set_max_outstanding_requests(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
