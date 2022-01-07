; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_hx509_name_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_hx509_name_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.rk_strpool = type { i32 }

@choice_Name_rdnSequence = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RDN not of supported type\00", align 1
@choice_DirectoryString_utf8String = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"unsupported type\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"missing }\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"variable %.*s missing\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_name_expand(i32 %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.rk_strpool*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %229

21:                                               ; preds = %3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @choice_Name_rdnSequence, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %28, i32 0, i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %229

32:                                               ; preds = %21
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %225, %32
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %228

41:                                               ; preds = %33
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %221, %41
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %43, %52
  br i1 %53, label %54, label %224

54:                                               ; preds = %42
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %11, align 8
  store %struct.rk_strpool* null, %struct.rk_strpool** %14, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @choice_DirectoryString_utf8String, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %54
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @EINVAL, align 4
  %75 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %73, i32 0, i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %4, align 4
  br label %229

77:                                               ; preds = %54
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strstr(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %109

85:                                               ; preds = %77
  %86 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %87 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %95, i8* %99)
  store %struct.rk_strpool* %100, %struct.rk_strpool** %14, align 8
  %101 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %102 = icmp eq %struct.rk_strpool* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %85
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %104, i32 0, i32 %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %4, align 4
  br label %229

108:                                              ; preds = %85
  br label %109

109:                                              ; preds = %108, %77
  br label %110

110:                                              ; preds = %194, %109
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %195

113:                                              ; preds = %110
  %114 = load i8*, i8** %12, align 8
  %115 = call i8* @strchr(i8* %114, i8 signext 125)
  store i8* %115, i8** %13, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @EINVAL, align 4
  %121 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %119, i32 0, i32 %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %123 = call i32 @rk_strpoolfree(%struct.rk_strpool* %122)
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* %4, align 4
  br label %229

125:                                              ; preds = %113
  %126 = load i8*, i8** %12, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  store i8* %127, i8** %12, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = call i8* @hx509_env_lfind(i32 %128, i32* %129, i8* %130, i32 %136)
  store i8* %137, i8** %15, align 8
  %138 = load i8*, i8** %15, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %125
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @EINVAL, align 4
  %143 = load i8*, i8** %13, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %141, i32 0, i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %148, i8* %149)
  %151 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %152 = call i32 @rk_strpoolfree(%struct.rk_strpool* %151)
  %153 = load i32, i32* @EINVAL, align 4
  store i32 %153, i32* %4, align 4
  br label %229

154:                                              ; preds = %125
  %155 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %156 = load i8*, i8** %15, align 8
  %157 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %156)
  store %struct.rk_strpool* %157, %struct.rk_strpool** %14, align 8
  %158 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %159 = icmp eq %struct.rk_strpool* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %161, i32 0, i32 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @ENOMEM, align 4
  store i32 %164, i32* %4, align 4
  br label %229

165:                                              ; preds = %154
  %166 = load i8*, i8** %13, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %13, align 8
  %168 = load i8*, i8** %13, align 8
  %169 = call i8* @strstr(i8* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %169, i8** %12, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  %180 = load i8*, i8** %13, align 8
  %181 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %179, i8* %180)
  store %struct.rk_strpool* %181, %struct.rk_strpool** %14, align 8
  br label %186

182:                                              ; preds = %165
  %183 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %184)
  store %struct.rk_strpool* %185, %struct.rk_strpool** %14, align 8
  br label %186

186:                                              ; preds = %182, %172
  %187 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %188 = icmp eq %struct.rk_strpool* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %190, i32 0, i32 %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %193 = load i32, i32* @ENOMEM, align 4
  store i32 %193, i32* %4, align 4
  br label %229

194:                                              ; preds = %186
  br label %110

195:                                              ; preds = %110
  %196 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %197 = icmp ne %struct.rk_strpool* %196, null
  br i1 %197, label %198, label %220

198:                                              ; preds = %195
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @free(i8* %202)
  %204 = load %struct.rk_strpool*, %struct.rk_strpool** %14, align 8
  %205 = call i8* @rk_strpoolcollect(%struct.rk_strpool* %204)
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  store i8* %205, i8** %208, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = icmp eq i8* %212, null
  br i1 %213, label %214, label %219

214:                                              ; preds = %198
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %215, i32 0, i32 %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %218 = load i32, i32* @ENOMEM, align 4
  store i32 %218, i32* %4, align 4
  br label %229

219:                                              ; preds = %198
  br label %220

220:                                              ; preds = %219, %195
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %10, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %10, align 8
  br label %42

224:                                              ; preds = %42
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %9, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %9, align 8
  br label %33

228:                                              ; preds = %33
  store i32 0, i32* %4, align 4
  br label %229

229:                                              ; preds = %228, %214, %189, %160, %140, %118, %103, %72, %27, %20
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @rk_strpoolfree(%struct.rk_strpool*) #1

declare dso_local i8* @hx509_env_lfind(i32, i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @rk_strpoolcollect(%struct.rk_strpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
