; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Bflag = common dso_local global i64 0, align 8
@CTL_MAXNAME = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c" at line %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"oid too long: '%s'%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"=:\00", align 1
@Tflag = common dso_local global i64 0, align 8
@Wflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Can't set variables when using -T or -W\00", align 1
@iflag = common dso_local global i64 0, align 8
@qflag = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"unknown oid '%s'%s\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"couldn't find format of oid '%s'%s\00", align 1
@dflag = common dso_local global i64 0, align 8
@CTLTYPE = common dso_local global i32 0, align 4
@CTLTYPE_NODE = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"oid '%s' isn't a leaf node%s\00", align 1
@CTLFLAG_WR = common dso_local global i32 0, align 4
@CTLFLAG_TUN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"oid '%s' is a read only tunable%s\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Tunable values are set in /boot/loader.conf\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"oid '%s' is read only%s\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"empty numeric value\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"oid '%s' is type %d, cannot set that%s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"invalid %s '%s'%s\00", align 1
@ctl_typename = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"%s: value is not available%s\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%s: specification is incomplete%s\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"%s: type is unknown to this program%s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@nflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %10, align 8
  %22 = load i64, i64* @Bflag, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* @CTL_MAXNAME, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load i32, i32* @BUFSIZ, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %30 = load i32, i32* @BUFSIZ, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  %33 = load i32, i32* @BUFSIZ, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %19, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = trunc i64 %34 to i32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %44

42:                                               ; preds = %2
  %43 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %43, align 16
  br label %44

44:                                               ; preds = %42, %38
  store i8* %29, i8** %15, align 8
  %45 = load i32, i32* @BUFSIZ, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @BUFSIZ, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %35)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

53:                                               ; preds = %44
  %54 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %54, i8** %16, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %105

57:                                               ; preds = %53
  %58 = load i64, i64* @Tflag, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* @Wflag, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %57
  %64 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %73, %66
  %68 = load i8*, i8** %15, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = call i64 @isspace(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** %15, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %15, align 8
  br label %67

76:                                               ; preds = %67
  %77 = load i8*, i8** %15, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  switch i32 %79, label %101 [
    i32 34, label %80
    i32 39, label %80
  ]

80:                                               ; preds = %76, %76
  %81 = load i8*, i8** %15, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = call i64 @strlen(i8* %82)
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8*, i8** %15, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %80
  %93 = load i8*, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = call i64 @strlen(i8* %94)
  %96 = sub i64 %95, 1
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 0, i8* %97, align 1
  br label %98

98:                                               ; preds = %92, %80
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %15, align 8
  br label %101

101:                                              ; preds = %98, %76
  %102 = load i8*, i8** %15, align 8
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = call i64 @strlen(i8* %103)
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %101, %53
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = getelementptr inbounds i8, i8* %109, i64 -1
  store i8* %110, i8** %15, align 8
  br label %111

111:                                              ; preds = %123, %105
  %112 = load i8*, i8** %15, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = icmp uge i8* %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i8*, i8** %15, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = call i64 @isspace(i32 %118)
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %115, %111
  %122 = phi i1 [ false, %111 ], [ %120, %115 ]
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  %124 = load i8*, i8** %15, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %15, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 -1
  store i8* %126, i8** %15, align 8
  br label %111

127:                                              ; preds = %121
  %128 = load i8*, i8** %16, align 8
  %129 = call i32 @name2oid(i8* %128, i32* %26)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %127
  %133 = load i64, i64* @iflag, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

136:                                              ; preds = %132
  %137 = load i64, i64* @qflag, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

140:                                              ; preds = %136
  %141 = load i32, i32* @errno, align 4
  %142 = load i32, i32* @ENOENT, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i8*, i8** %16, align 8
  %146 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %145, i8* %35)
  br label %150

147:                                              ; preds = %140
  %148 = load i8*, i8** %16, align 8
  %149 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %148, i8* %35)
  br label %150

150:                                              ; preds = %147, %144
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

151:                                              ; preds = %127
  %152 = load i32, i32* %6, align 4
  %153 = call i64 @oidfmt(i32* %26, i32 %152, i8* %32, i32* %20)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load i8*, i8** %16, align 8
  %157 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %156, i8* %35)
  %158 = load i64, i64* @iflag, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

161:                                              ; preds = %155
  %162 = call i32 @exit(i32 1) #4
  unreachable

163:                                              ; preds = %151
  %164 = load i8*, i8** %10, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i64, i64* @dflag, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %204

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* @CTLTYPE, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @CTLTYPE_NODE, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %169
  %176 = load i64, i64* @dflag, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @show_var(i32* %26, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* @bflag, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = call i32 @putchar(i8 signext 10)
  br label %188

188:                                              ; preds = %186, %183, %178
  br label %189

189:                                              ; preds = %188, %175
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @sysctl_all(i32* %26, i32 %190)
  br label %203

192:                                              ; preds = %169
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @show_var(i32* %26, i32 %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %192
  %198 = load i32, i32* @bflag, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = call i32 @putchar(i8 signext 10)
  br label %202

202:                                              ; preds = %200, %197, %192
  br label %203

203:                                              ; preds = %202, %189
  br label %337

204:                                              ; preds = %166
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* @CTLTYPE, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* @CTLTYPE_NODE, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i8*, i8** %16, align 8
  %212 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %211, i8* %35)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

213:                                              ; preds = %204
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* @CTLFLAG_WR, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %231, label %218

218:                                              ; preds = %213
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* @CTLFLAG_TUN, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load i8*, i8** %16, align 8
  %225 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %224, i8* %35)
  %226 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  br label %230

227:                                              ; preds = %218
  %228 = load i8*, i8** %16, align 8
  %229 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %228, i8* %35)
  br label %230

230:                                              ; preds = %227, %223
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

231:                                              ; preds = %213
  %232 = load i32, i32* %20, align 4
  %233 = load i32, i32* @CTLTYPE, align 4
  %234 = and i32 %232, %233
  switch i32 %234, label %243 [
    i32 143, label %235
    i32 132, label %235
    i32 142, label %235
    i32 131, label %235
    i32 138, label %235
    i32 141, label %235
    i32 140, label %235
    i32 139, label %235
    i32 133, label %235
    i32 136, label %235
    i32 135, label %235
    i32 134, label %235
    i32 137, label %242
  ]

235:                                              ; preds = %231, %231, %231, %231, %231, %231, %231, %231, %231, %231, %231, %231
  %236 = load i8*, i8** %10, align 8
  %237 = call i64 @strlen(i8* %236)
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

241:                                              ; preds = %235
  br label %242

242:                                              ; preds = %231, %241
  br label %249

243:                                              ; preds = %231
  %244 = load i8*, i8** %16, align 8
  %245 = load i32, i32* %20, align 4
  %246 = load i32, i32* @CTLTYPE, align 4
  %247 = and i32 %245, %246
  %248 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %244, i32 %247, i8* %35)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

249:                                              ; preds = %242
  store i8* null, i8** %11, align 8
  %250 = load i32, i32* %20, align 4
  %251 = load i32, i32* @CTLTYPE, align 4
  %252 = and i32 %250, %251
  switch i32 %252, label %255 [
    i32 137, label %253
  ]

253:                                              ; preds = %249
  %254 = load i8*, i8** %10, align 8
  store i8* %254, i8** %9, align 8
  br label %285

255:                                              ; preds = %249
  store i64 0, i64* %12, align 8
  br label %256

256:                                              ; preds = %282, %264, %255
  %257 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i8* %257, i8** %15, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %283

259:                                              ; preds = %256
  %260 = load i8*, i8** %15, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  br label %256

265:                                              ; preds = %259
  %266 = load i8*, i8** %15, align 8
  %267 = load i32, i32* %20, align 4
  %268 = call i32 @parse_numeric(i8* %266, i8* %32, i32 %267, i8** %11, i64* %12)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %265
  %271 = load i32*, i32** @ctl_typename, align 8
  %272 = load i32, i32* %20, align 4
  %273 = load i32, i32* @CTLTYPE, align 4
  %274 = and i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %271, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i8*, i8** %15, align 8
  %279 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %277, i8* %278, i8* %35)
  %280 = load i8*, i8** %11, align 8
  %281 = call i32 @free(i8* %280)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

282:                                              ; preds = %265
  br label %256

283:                                              ; preds = %256
  %284 = load i8*, i8** %11, align 8
  store i8* %284, i8** %9, align 8
  br label %285

285:                                              ; preds = %283, %253
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @show_var(i32* %26, i32 %286)
  store i32 %287, i32* %7, align 4
  %288 = load i32, i32* %6, align 4
  %289 = load i8*, i8** %9, align 8
  %290 = load i64, i64* %12, align 8
  %291 = call i32 @sysctl(i32* %26, i32 %288, i32 0, i32 0, i8* %289, i64 %290)
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %293, label %317

293:                                              ; preds = %285
  %294 = load i8*, i8** %11, align 8
  %295 = call i32 @free(i8* %294)
  %296 = load i32, i32* %7, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %293
  %299 = load i32, i32* @bflag, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %303, label %301

301:                                              ; preds = %298
  %302 = call i32 @putchar(i8 signext 10)
  br label %303

303:                                              ; preds = %301, %298, %293
  %304 = load i32, i32* @errno, align 4
  switch i32 %304, label %314 [
    i32 128, label %305
    i32 129, label %308
    i32 130, label %311
  ]

305:                                              ; preds = %303
  %306 = load i8*, i8** %4, align 8
  %307 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %306, i8* %35)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

308:                                              ; preds = %303
  %309 = load i8*, i8** %4, align 8
  %310 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* %309, i8* %35)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

311:                                              ; preds = %303
  %312 = load i8*, i8** %4, align 8
  %313 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i8* %312, i8* %35)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

314:                                              ; preds = %303
  %315 = load i8*, i8** %4, align 8
  %316 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %315, i8* %35)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

317:                                              ; preds = %285
  %318 = load i8*, i8** %11, align 8
  %319 = call i32 @free(i8* %318)
  %320 = load i32, i32* @bflag, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %317
  %323 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %317
  %325 = load i32, i32* @nflag, align 4
  store i32 %325, i32* %7, align 4
  store i32 1, i32* @nflag, align 4
  %326 = load i32, i32* %6, align 4
  %327 = call i32 @show_var(i32* %26, i32 %326)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %335, label %330

330:                                              ; preds = %324
  %331 = load i32, i32* @bflag, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %330
  %334 = call i32 @putchar(i8 signext 10)
  br label %335

335:                                              ; preds = %333, %330, %324
  %336 = load i32, i32* %7, align 4
  store i32 %336, i32* @nflag, align 4
  br label %337

337:                                              ; preds = %335, %203
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %338

338:                                              ; preds = %337, %314, %311, %308, %305, %270, %243, %239, %230, %210, %160, %150, %139, %135, %50
  %339 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %339)
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @isspace(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @name2oid(i8*, i32*) #2

declare dso_local i32 @warn(i8*, i8*, i8*) #2

declare dso_local i64 @oidfmt(i32*, i32, i8*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @show_var(i32*, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @sysctl_all(i32*, i32) #2

declare dso_local i32 @parse_numeric(i8*, i8*, i32, i8**, i64*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @sysctl(i32*, i32, i32, i32, i8*, i64) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
