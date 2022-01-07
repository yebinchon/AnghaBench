; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_serf__validate_response_digest_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_serf__validate_response_digest_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8* }

@HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Authentication-Info\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Proxy-Authentication-Info\00", align 1
@APR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"rspauth\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s:%s:%s:%s:%s:%s\00", align 1
@SERF_ERROR_AUTHN_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf__validate_response_digest_auth(i32* %0, i64 %1, i32 %2, %struct.TYPE_12__* %3, %struct.TYPE_10__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_11__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.TYPE_13__*, align 8
  %34 = alloca %struct.TYPE_14__*, align 8
  %35 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %23, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32* @serf_bucket_response_get_headers(i32* %39)
  store i32* %40, i32** %22, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @HOST, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %7
  %45 = load i32*, i32** %15, align 8
  %46 = load i32*, i32** %22, align 8
  %47 = call i32 @serf_bucket_headers_get(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %48 = call i8* @apr_pstrdup(i32* %45, i32 %47)
  store i8* %48, i8** %17, align 8
  br label %54

49:                                               ; preds = %7
  %50 = load i32*, i32** %15, align 8
  %51 = load i32*, i32** %22, align 8
  %52 = call i32 @serf_bucket_headers_get(i32* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i8* @apr_pstrdup(i32* %50, i32 %52)
  store i8* %53, i8** %17, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** %17, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %58, i32* %8, align 4
  br label %200

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %131, %59
  %61 = load i8*, i8** %17, align 8
  %62 = call i8* @apr_strtok(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %18)
  store i8* %62, i8** %16, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %132

64:                                               ; preds = %60
  %65 = load i8*, i8** %16, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 61)
  store i8* %66, i8** %25, align 8
  %67 = load i8*, i8** %25, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %131

70:                                               ; preds = %64
  %71 = load i8*, i8** %25, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %25, align 8
  store i8 0, i8* %71, align 1
  br label %73

73:                                               ; preds = %85, %70
  %74 = load i8*, i8** %16, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %16, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ false, %73 ], [ %82, %78 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %16, align 8
  br label %73

88:                                               ; preds = %83
  %89 = load i8*, i8** %25, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 34
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load i8*, i8** %25, align 8
  %95 = call i64 @strlen(i8* %94)
  %96 = sub i64 %95, 1
  store i64 %96, i64* %26, align 8
  %97 = load i8*, i8** %25, align 8
  %98 = load i64, i64* %26, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 34
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = load i8*, i8** %25, align 8
  %105 = load i64, i64* %26, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %25, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %25, align 8
  br label %109

109:                                              ; preds = %103, %93
  br label %110

110:                                              ; preds = %109, %88
  %111 = load i8*, i8** %16, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i8*, i8** %25, align 8
  store i8* %115, i8** %19, align 8
  br label %130

116:                                              ; preds = %110
  %117 = load i8*, i8** %16, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i8*, i8** %25, align 8
  store i8* %121, i8** %20, align 8
  br label %129

122:                                              ; preds = %116
  %123 = load i8*, i8** %16, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i8*, i8** %25, align 8
  store i8* %127, i8** %21, align 8
  br label %128

128:                                              ; preds = %126, %122
  br label %129

129:                                              ; preds = %128, %120
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %69
  store i8* null, i8** %17, align 8
  br label %60

132:                                              ; preds = %60
  %133 = load i8*, i8** %19, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %198

135:                                              ; preds = %132
  %136 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %137 = zext i32 %136 to i64
  %138 = call i8* @llvm.stacksave()
  store i8* %138, i8** %30, align 8
  %139 = alloca i8, i64 %137, align 16
  store i64 %137, i64* %31, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %32, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* @HOST, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %148 = call %struct.TYPE_13__* @serf__get_authn_info_for_server(%struct.TYPE_12__* %147)
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %33, align 8
  br label %152

149:                                              ; preds = %135
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %33, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  store %struct.TYPE_14__* %155, %struct.TYPE_14__** %34, align 8
  %156 = load i8*, i8** %32, align 8
  %157 = load i8*, i8** %20, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @build_digest_ha2(i8** %27, i8* %156, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %157, i32* %158)
  store i32 %159, i32* %24, align 4
  %160 = load i32, i32* %24, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32, i32* %24, align 4
  store i32 %163, i32* %8, align 4
  store i32 1, i32* %35, align 4
  br label %194

164:                                              ; preds = %152
  %165 = load i32*, i32** %15, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %21, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %27, align 8
  %180 = call i8* @apr_psprintf(i32* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %168, i32 %171, i8* %172, i32 %175, i32 %178, i8* %179)
  store i8* %180, i8** %28, align 8
  %181 = load i8*, i8** %28, align 8
  %182 = load i8*, i8** %28, align 8
  %183 = call i64 @strlen(i8* %182)
  %184 = call i32 @apr_md5(i8* %139, i8* %181, i64 %183)
  %185 = load i32*, i32** %15, align 8
  %186 = call i8* @hex_encode(i8* %139, i32* %185)
  store i8* %186, i8** %29, align 8
  %187 = load i8*, i8** %19, align 8
  %188 = load i8*, i8** %29, align 8
  %189 = call i64 @strcmp(i8* %187, i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %164
  %192 = load i32, i32* @SERF_ERROR_AUTHN_FAILED, align 4
  store i32 %192, i32* %8, align 4
  store i32 1, i32* %35, align 4
  br label %194

193:                                              ; preds = %164
  store i32 0, i32* %35, align 4
  br label %194

194:                                              ; preds = %193, %191, %162
  %195 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %35, align 4
  switch i32 %196, label %202 [
    i32 0, label %197
    i32 1, label %200
  ]

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %197, %132
  %199 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %198, %194, %57
  %201 = load i32, i32* %8, align 4
  ret i32 %201

202:                                              ; preds = %194
  unreachable
}

declare dso_local i32* @serf_bucket_response_get_headers(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @serf_bucket_headers_get(i32*, i8*) #1

declare dso_local i8* @apr_strtok(i8*, i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_13__* @serf__get_authn_info_for_server(%struct.TYPE_12__*) #1

declare dso_local i32 @build_digest_ha2(i8**, i8*, i8*, i8*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @apr_md5(i8*, i8*, i64) #1

declare dso_local i8* @hex_encode(i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
