; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_read_conf_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_read_conf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@CKR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Can't open configuration file.  No file specified\0A\00", align 1
@CKR_GENERAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"can't open configuration file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"line: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"no id\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"id: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"no label\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"no certfiicate store\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"adding: %s: %s in file %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"no filename\0A\00", align 1
@soft_token = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"failed to open file: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"app-fatal\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"argument to app-fatal\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"unknown app-fatal: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"unknown type: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @read_conf_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_conf_file(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %20 = load i32, i32* @CKR_OK, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @CKR_OK, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @CKR_GENERAL_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %202

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @CKR_GENERAL_ERROR, align 4
  store i32 %36, i32* %4, align 4
  br label %202

37:                                               ; preds = %27
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @rk_cloexec_file(i32* %38)
  br label %40

40:                                               ; preds = %197, %167, %128, %103, %97, %89, %80, %65, %37
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %42 = load i32*, i32** %12, align 8
  %43 = call i32* @fgets(i8* %41, i32 1024, i32* %42)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %198

45:                                               ; preds = %40
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %47 = call i64 @strcspn(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %47
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %50 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8* %51, i8** %11, align 8
  br label %52

52:                                               ; preds = %57, %45
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @isspace(i8 zeroext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %11, align 8
  br label %52

60:                                               ; preds = %52
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 35
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %40

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %72, %66
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isspace(i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %11, align 8
  br label %67

75:                                               ; preds = %67
  store i8* null, i8** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i8* @strtok_r(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %10)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %40

81:                                               ; preds = %75
  %82 = load i8*, i8** %9, align 8
  %83 = call i64 @strcasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %81
  %86 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %10)
  store i8* %86, i8** %16, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %40

91:                                               ; preds = %85
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %92)
  %94 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %10)
  store i8* %94, i8** %17, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %40

99:                                               ; preds = %91
  %100 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %10)
  store i8* %100, i8** %15, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %40

105:                                              ; preds = %99
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %106, i8* %107, i8* %108)
  %110 = load i8*, i8** %15, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 @add_certificate(i8* %110, i8* %111, i8* %112, i8* %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %117, %105
  br label %197

120:                                              ; preds = %81
  %121 = load i8*, i8** %9, align 8
  %122 = call i64 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %159

124:                                              ; preds = %120
  %125 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %10)
  store i8* %125, i8** %18, align 8
  %126 = load i8*, i8** %18, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %40

130:                                              ; preds = %124
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %135 = call i32 @fclose(i32* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i8*, i8** %18, align 8
  %138 = call i64 @strcasecmp(i8* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32*, i32** @stdout, align 8
  store i32* %141, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  br label %152

142:                                              ; preds = %136
  %143 = load i8*, i8** %18, align 8
  %144 = call i8* @fopen(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %145 = bitcast i8* %144 to i32*
  store i32* %145, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %150 = call i32 @rk_cloexec_file(i32* %149)
  br label %151

151:                                              ; preds = %148, %142
  br label %152

152:                                              ; preds = %151, %140
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i8*, i8** %18, align 8
  %157 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %155, %152
  br label %196

159:                                              ; preds = %120
  %160 = load i8*, i8** %9, align 8
  %161 = call i64 @strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %159
  %164 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %10)
  store i8* %164, i8** %19, align 8
  %165 = load i8*, i8** %19, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  br label %40

169:                                              ; preds = %163
  %170 = load i8*, i8** %19, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i8*, i8** %19, align 8
  %175 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %169
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 0), align 8
  br label %191

178:                                              ; preds = %173
  %179 = load i8*, i8** %19, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i8*, i8** %19, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182, %178
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 0), align 8
  br label %190

187:                                              ; preds = %182
  %188 = load i8*, i8** %19, align 8
  %189 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %187, %186
  br label %191

191:                                              ; preds = %190, %177
  br label %195

192:                                              ; preds = %159
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 (i8*, ...) @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %192, %191
  br label %196

196:                                              ; preds = %195, %158
  br label %197

197:                                              ; preds = %196, %119
  br label %40

198:                                              ; preds = %40
  %199 = load i32*, i32** %12, align 8
  %200 = call i32 @fclose(i32* %199)
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %198, %33, %24
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @st_logf(i8*, ...) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @rk_cloexec_file(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @add_certificate(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
