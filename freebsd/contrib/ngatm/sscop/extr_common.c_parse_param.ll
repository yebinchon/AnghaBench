; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/sscop/extr_common.c_parse_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/sscop/extr_common.c_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscop_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SSCOP_ROBUST = common dso_local global i32 0, align 4
@SSCOP_SET_ROBUST = common dso_local global i32 0, align 4
@SSCOP_POLLREX = common dso_local global i32 0, align 4
@SSCOP_SET_POLLREX = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"bad number to -W '%s'\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"window too large: 0x%x\00", align 1
@SSCOP_SET_MR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"need '=' in argument to -%c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"argument to -%c %s empty\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"bad number in -%c %s=%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@SSCOP_SET_TCC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@SSCOP_SET_TPOLL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"ka\00", align 1
@SSCOP_SET_TKA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@SSCOP_SET_TNR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@SSCOP_SET_TIDLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"bad timer name '%s'\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@SSCOP_SET_MAXJ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@SSCOP_SET_MAXK = common dso_local global i32 0, align 4
@SSCOP_SET_MAXCC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@SSCOP_SET_MAXPD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@SSCOP_SET_MAXSTAT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"bad parameter '%s'\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"bad flag\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_param(%struct.sscop_param* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sscop_param*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.sscop_param* %0, %struct.sscop_param** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 98
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32, i32* @SSCOP_ROBUST, align 4
  %16 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %17 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @SSCOP_SET_ROBUST, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %239

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 120
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* @SSCOP_POLLREX, align 4
  %29 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %30 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @SSCOP_SET_POLLREX, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %239

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 87
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @strtoul(i8* %41, i8** %10, i32 0)
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp sge i32 %51, 16777215
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %59 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @SSCOP_SET_MR, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %239

64:                                               ; preds = %37
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 61)
  store i8* %66, i8** %11, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %11, align 8
  store i8 0, i8* %72, align 1
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @strtoul(i8* %83, i8** %10, i32 0)
  store i32 %84, i32* %9, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %90, i8* %91, i8* %92)
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 116
  br i1 %96, label %97, label %165

97:                                               ; preds = %94
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %104 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @SSCOP_SET_TCC, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %164

109:                                              ; preds = %97
  %110 = load i8*, i8** %8, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %116 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @SSCOP_SET_TPOLL, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %163

121:                                              ; preds = %109
  %122 = load i8*, i8** %8, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %128 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @SSCOP_SET_TKA, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  br label %162

133:                                              ; preds = %121
  %134 = load i8*, i8** %8, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %140 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @SSCOP_SET_TNR, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %161

145:                                              ; preds = %133
  %146 = load i8*, i8** %8, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %152 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @SSCOP_SET_TIDLE, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %160

157:                                              ; preds = %145
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %157, %149
  br label %161

161:                                              ; preds = %160, %137
  br label %162

162:                                              ; preds = %161, %125
  br label %163

163:                                              ; preds = %162, %113
  br label %164

164:                                              ; preds = %163, %101
  br label %239

165:                                              ; preds = %94
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %166, 97
  br i1 %167, label %168, label %236

168:                                              ; preds = %165
  %169 = load i8*, i8** %8, align 8
  %170 = call i64 @strcmp(i8* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %175 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @SSCOP_SET_MAXJ, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %176
  store i32 %179, i32* %177, align 4
  br label %235

180:                                              ; preds = %168
  %181 = load i8*, i8** %8, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %187 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @SSCOP_SET_MAXK, align 4
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %188
  store i32 %191, i32* %189, align 4
  br label %234

192:                                              ; preds = %180
  %193 = load i8*, i8** %8, align 8
  %194 = call i64 @strcmp(i8* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %199 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @SSCOP_SET_MAXCC, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %200
  store i32 %203, i32* %201, align 4
  br label %233

204:                                              ; preds = %192
  %205 = load i8*, i8** %8, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %211 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %210, i32 0, i32 9
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @SSCOP_SET_MAXPD, align 4
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %212
  store i32 %215, i32* %213, align 4
  br label %232

216:                                              ; preds = %204
  %217 = load i8*, i8** %8, align 8
  %218 = call i64 @strcmp(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.sscop_param*, %struct.sscop_param** %5, align 8
  %223 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %222, i32 0, i32 10
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @SSCOP_SET_MAXSTAT, align 4
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %224
  store i32 %227, i32* %225, align 4
  br label %231

228:                                              ; preds = %216
  %229 = load i8*, i8** %8, align 8
  %230 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %229)
  br label %231

231:                                              ; preds = %228, %220
  br label %232

232:                                              ; preds = %231, %208
  br label %233

233:                                              ; preds = %232, %196
  br label %234

234:                                              ; preds = %233, %184
  br label %235

235:                                              ; preds = %234, %172
  br label %239

236:                                              ; preds = %165
  %237 = call i32 @verb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %238 = call i32 (...) @abort() #3
  unreachable

239:                                              ; preds = %235, %164, %56, %27, %14
  ret void
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @verb(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
