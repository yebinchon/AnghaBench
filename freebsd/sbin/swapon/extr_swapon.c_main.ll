; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"swapon\00", align 1
@SWAPON = common dso_local global i64 0, align 8
@which_prog = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"swapoff\00", align 1
@SWAPOFF = common dso_local global i64 0, align 8
@orig_prog = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"AadEghklLmqsUF:\00", align 1
@SWAPCTL = common dso_local global i64 0, align 8
@Eflag = common dso_local global i32 0, align 4
@qflag = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@FSTAB_SW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"noauto\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"late\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"trimonce\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: %sing %s as swap device\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"remov\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"add\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.fstab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8* %20, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i8*, i8** %8, align 8
  %28 = call i32* @strstr(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @SWAPON, align 8
  store i64 %31, i64* @which_prog, align 8
  br label %39

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = call i32* @strstr(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @SWAPOFF, align 8
  store i64 %37, i64* @which_prog, align 8
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i64, i64* @which_prog, align 8
  store i64 %40, i64* @orig_prog, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %16, align 8
  br label %41

41:                                               ; preds = %117, %39
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @getopt(i32 %42, i8** %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %44, i32* %10, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %118

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %115 [
    i32 65, label %48
    i32 97, label %57
    i32 100, label %69
    i32 69, label %78
    i32 103, label %86
    i32 104, label %87
    i32 107, label %88
    i32 108, label %89
    i32 76, label %90
    i32 109, label %91
    i32 113, label %92
    i32 115, label %102
    i32 85, label %103
    i32 70, label %112
    i32 63, label %114
  ]

48:                                               ; preds = %46
  %49 = load i64, i64* @which_prog, align 8
  %50 = load i64, i64* @SWAPCTL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  store i32 1, i32* %11, align 4
  %53 = load i64, i64* @SWAPON, align 8
  store i64 %53, i64* @which_prog, align 8
  br label %56

54:                                               ; preds = %48
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %52
  br label %117

57:                                               ; preds = %46
  %58 = load i64, i64* @which_prog, align 8
  %59 = load i64, i64* @SWAPON, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* @which_prog, align 8
  %63 = load i64, i64* @SWAPOFF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57
  store i32 1, i32* %11, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i64, i64* @SWAPON, align 8
  store i64 %67, i64* @which_prog, align 8
  br label %68

68:                                               ; preds = %66, %65
  br label %117

69:                                               ; preds = %46
  %70 = load i64, i64* @which_prog, align 8
  %71 = load i64, i64* @SWAPCTL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* @SWAPOFF, align 8
  store i64 %74, i64* @which_prog, align 8
  br label %77

75:                                               ; preds = %69
  %76 = call i32 (...) @usage()
  br label %77

77:                                               ; preds = %75, %73
  br label %117

78:                                               ; preds = %46
  %79 = load i64, i64* @which_prog, align 8
  %80 = load i64, i64* @SWAPON, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 2, i32* @Eflag, align 4
  br label %85

83:                                               ; preds = %78
  %84 = call i32 (...) @usage()
  br label %85

85:                                               ; preds = %83, %82
  br label %117

86:                                               ; preds = %46
  store i32 71, i32* %15, align 4
  br label %117

87:                                               ; preds = %46
  store i32 72, i32* %15, align 4
  br label %117

88:                                               ; preds = %46
  store i32 75, i32* %15, align 4
  br label %117

89:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  br label %117

90:                                               ; preds = %46
  store i32 1, i32* %14, align 4
  br label %117

91:                                               ; preds = %46
  store i32 77, i32* %15, align 4
  br label %117

92:                                               ; preds = %46
  %93 = load i64, i64* @which_prog, align 8
  %94 = load i64, i64* @SWAPON, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* @which_prog, align 8
  %98 = load i64, i64* @SWAPOFF, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92
  store i64 1, i64* @qflag, align 8
  br label %101

101:                                              ; preds = %100, %96
  br label %117

102:                                              ; preds = %46
  store i32 1, i32* %12, align 4
  br label %117

103:                                              ; preds = %46
  %104 = load i64, i64* @which_prog, align 8
  %105 = load i64, i64* @SWAPCTL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  store i32 1, i32* %11, align 4
  %108 = load i64, i64* @SWAPOFF, align 8
  store i64 %108, i64* @which_prog, align 8
  br label %111

109:                                              ; preds = %103
  %110 = call i32 (...) @usage()
  br label %111

111:                                              ; preds = %109, %107
  br label %117

112:                                              ; preds = %46
  %113 = load i8*, i8** @optarg, align 8
  store i8* %113, i8** %16, align 8
  br label %117

114:                                              ; preds = %46
  br label %115

115:                                              ; preds = %46, %114
  %116 = call i32 (...) @usage()
  br label %117

117:                                              ; preds = %115, %112, %111, %102, %101, %91, %90, %89, %88, %87, %86, %85, %77, %68, %56
  br label %41

118:                                              ; preds = %41
  %119 = load i32, i32* @optind, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  store i8** %122, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %7, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @setfstab(i8* %126)
  br label %128

128:                                              ; preds = %125, %118
  %129 = load i64, i64* @which_prog, align 8
  %130 = load i64, i64* @SWAPON, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* @which_prog, align 8
  %134 = load i64, i64* @SWAPOFF, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %258

136:                                              ; preds = %132, %128
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %221

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %219, %206, %185, %171, %157, %150, %139
  %141 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %141, %struct.fstab** %6, align 8
  %142 = icmp ne %struct.fstab* %141, null
  br i1 %142, label %143, label %220

143:                                              ; preds = %140
  %144 = load %struct.fstab*, %struct.fstab** %6, align 8
  %145 = getelementptr inbounds %struct.fstab, %struct.fstab* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @FSTAB_SW, align 4
  %148 = call i64 @strcmp(i32 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %140

151:                                              ; preds = %143
  %152 = load %struct.fstab*, %struct.fstab** %6, align 8
  %153 = getelementptr inbounds %struct.fstab, %struct.fstab* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32* @strstr(i8* %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %140

158:                                              ; preds = %151
  %159 = load i64, i64* @which_prog, align 8
  %160 = load i64, i64* @SWAPOFF, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load %struct.fstab*, %struct.fstab** %6, align 8
  %164 = getelementptr inbounds %struct.fstab, %struct.fstab* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32* @strstr(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i32, i32* %14, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %140

172:                                              ; preds = %168, %162, %158
  %173 = load i64, i64* @which_prog, align 8
  %174 = load i64, i64* @SWAPOFF, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load %struct.fstab*, %struct.fstab** %6, align 8
  %178 = getelementptr inbounds %struct.fstab, %struct.fstab* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32* @strstr(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %140

186:                                              ; preds = %182, %176, %172
  %187 = load %struct.fstab*, %struct.fstab** %6, align 8
  %188 = getelementptr inbounds %struct.fstab, %struct.fstab* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32* @strstr(i8* %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %191 = icmp ne i32* %190, null
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* @Eflag, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* @Eflag, align 4
  %195 = load %struct.fstab*, %struct.fstab** %6, align 8
  %196 = getelementptr inbounds %struct.fstab, %struct.fstab* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.fstab*, %struct.fstab** %6, align 8
  %199 = getelementptr inbounds %struct.fstab, %struct.fstab* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* @swap_on_off(i8* %197, i32 1, i8* %200)
  store i8* %201, i8** %7, align 8
  %202 = load i32, i32* @Eflag, align 4
  %203 = and i32 %202, -2
  store i32 %203, i32* @Eflag, align 4
  %204 = load i8*, i8** %7, align 8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %186
  store i32 1, i32* %9, align 4
  br label %140

207:                                              ; preds = %186
  %208 = load i64, i64* @qflag, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = call i8* (...) @getprogname()
  %212 = load i64, i64* @which_prog, align 8
  %213 = load i64, i64* @SWAPOFF, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %211, i8* %216, i8* %217)
  br label %219

219:                                              ; preds = %210, %207
  br label %140

220:                                              ; preds = %140
  br label %228

221:                                              ; preds = %136
  %222 = load i8**, i8*** %5, align 8
  %223 = load i8*, i8** %222, align 8
  %224 = icmp eq i8* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = call i32 (...) @usage()
  br label %227

227:                                              ; preds = %225, %221
  br label %228

228:                                              ; preds = %227, %220
  br label %229

229:                                              ; preds = %254, %228
  %230 = load i8**, i8*** %5, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %257

233:                                              ; preds = %229
  %234 = load i8**, i8*** %5, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = call i8* @swap_on_off(i8* %235, i32 0, i8* null)
  store i8* %236, i8** %7, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = icmp eq i8* %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %233
  store i32 1, i32* %9, align 4
  br label %254

240:                                              ; preds = %233
  %241 = load i64, i64* @orig_prog, align 8
  %242 = load i64, i64* @SWAPCTL, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = call i8* (...) @getprogname()
  %246 = load i64, i64* @which_prog, align 8
  %247 = load i64, i64* @SWAPOFF, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %251 = load i8*, i8** %7, align 8
  %252 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %245, i8* %250, i8* %251)
  br label %253

253:                                              ; preds = %244, %240
  br label %254

254:                                              ; preds = %253, %239
  %255 = load i8**, i8*** %5, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i32 1
  store i8** %256, i8*** %5, align 8
  br label %229

257:                                              ; preds = %229
  br label %272

258:                                              ; preds = %132
  %259 = load i32, i32* %13, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %261, %258
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %15, align 4
  %268 = call i32 @swaplist(i32 %265, i32 %266, i32 %267)
  br label %271

269:                                              ; preds = %261
  %270 = call i32 (...) @usage()
  br label %271

271:                                              ; preds = %269, %264
  br label %272

272:                                              ; preds = %271, %257
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @exit(i32 %273) #3
  unreachable
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @setfstab(i8*) #1

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i8* @swap_on_off(i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @swaplist(i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
