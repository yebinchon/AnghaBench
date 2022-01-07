; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_utilities.c_optionstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_utilities.c_optionstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_dont_resp = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [21 x i8] c"resp DO_DONT %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"resp DO_DONT %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"want DO   %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"want DO   %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"want DONT %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"want DONT %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"     DO   %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"     DO   %d\0A\00", align 1
@will_wont_resp = external dso_local global [0 x i8], align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"resp WILL_WONT %s: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"resp WILL_WONT %d: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"want WILL %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"want WILL %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"want WONT %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"want WONT %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"     WILL %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"     WILL %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionstatus() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %234, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %237

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8], [0 x i8]* @do_dont_resp, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %93

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT_OK to i32 (i32, ...)*)(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT to i32 (i32, ...)*)(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [0 x i8], [0 x i8]* @do_dont_resp, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22)
  br label %46

24:                                               ; preds = %11
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD_OK to i32 (i32, ...)*)(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %1, align 4
  %30 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD to i32 (i32, ...)*)(i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x i8], [0 x i8]* @do_dont_resp, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35)
  br label %45

37:                                               ; preds = %24
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i8], [0 x i8]* @do_dont_resp, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %37, %28
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @my_want_state_is_do to i32 (i32, ...)*)(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32, i32* %1, align 4
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT_OK to i32 (i32, ...)*)(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT to i32 (i32, ...)*)(i32 %55)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %70

58:                                               ; preds = %50
  %59 = load i32, i32* %1, align 4
  %60 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD_OK to i32 (i32, ...)*)(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %1, align 4
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD to i32 (i32, ...)*)(i32 %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %1, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %54
  br label %92

71:                                               ; preds = %46
  %72 = load i32, i32* %1, align 4
  %73 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT_OK to i32 (i32, ...)*)(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %1, align 4
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT to i32 (i32, ...)*)(i32 %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %91

79:                                               ; preds = %71
  %80 = load i32, i32* %1, align 4
  %81 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD_OK to i32 (i32, ...)*)(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %1, align 4
  %85 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD to i32 (i32, ...)*)(i32 %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %1, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %70
  br label %119

93:                                               ; preds = %5
  %94 = load i32, i32* %1, align 4
  %95 = call i32 (i32, ...) bitcast (i32 (...)* @my_state_is_do to i32 (i32, ...)*)(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load i32, i32* %1, align 4
  %99 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT_OK to i32 (i32, ...)*)(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %1, align 4
  %103 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT to i32 (i32, ...)*)(i32 %102)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %117

105:                                              ; preds = %97
  %106 = load i32, i32* %1, align 4
  %107 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD_OK to i32 (i32, ...)*)(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %1, align 4
  %111 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD to i32 (i32, ...)*)(i32 %110)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %1, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %109
  br label %117

117:                                              ; preds = %116, %101
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118, %92
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [0 x i8], [0 x i8]* @will_wont_resp, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %207

125:                                              ; preds = %119
  %126 = load i32, i32* %1, align 4
  %127 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT_OK to i32 (i32, ...)*)(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32, i32* %1, align 4
  %131 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT to i32 (i32, ...)*)(i32 %130)
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [0 x i8], [0 x i8]* @will_wont_resp, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %131, i32 %136)
  br label %160

138:                                              ; preds = %125
  %139 = load i32, i32* %1, align 4
  %140 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD_OK to i32 (i32, ...)*)(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* %1, align 4
  %144 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD to i32 (i32, ...)*)(i32 %143)
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [0 x i8], [0 x i8]* @will_wont_resp, i64 0, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %144, i32 %149)
  br label %159

151:                                              ; preds = %138
  %152 = load i32, i32* %1, align 4
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [0 x i8], [0 x i8]* @will_wont_resp, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %152, i32 %157)
  br label %159

159:                                              ; preds = %151, %142
  br label %160

160:                                              ; preds = %159, %129
  %161 = load i32, i32* %1, align 4
  %162 = call i32 (i32, ...) bitcast (i32 (...)* @my_want_state_is_will to i32 (i32, ...)*)(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = load i32, i32* %1, align 4
  %166 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT_OK to i32 (i32, ...)*)(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* %1, align 4
  %170 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT to i32 (i32, ...)*)(i32 %169)
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %170)
  br label %184

172:                                              ; preds = %164
  %173 = load i32, i32* %1, align 4
  %174 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD_OK to i32 (i32, ...)*)(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* %1, align 4
  %178 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD to i32 (i32, ...)*)(i32 %177)
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %178)
  br label %183

180:                                              ; preds = %172
  %181 = load i32, i32* %1, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %180, %176
  br label %184

184:                                              ; preds = %183, %168
  br label %206

185:                                              ; preds = %160
  %186 = load i32, i32* %1, align 4
  %187 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT_OK to i32 (i32, ...)*)(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* %1, align 4
  %191 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT to i32 (i32, ...)*)(i32 %190)
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %191)
  br label %205

193:                                              ; preds = %185
  %194 = load i32, i32* %1, align 4
  %195 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD_OK to i32 (i32, ...)*)(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* %1, align 4
  %199 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD to i32 (i32, ...)*)(i32 %198)
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %199)
  br label %204

201:                                              ; preds = %193
  %202 = load i32, i32* %1, align 4
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %201, %197
  br label %205

205:                                              ; preds = %204, %189
  br label %206

206:                                              ; preds = %205, %184
  br label %233

207:                                              ; preds = %119
  %208 = load i32, i32* %1, align 4
  %209 = call i32 (i32, ...) bitcast (i32 (...)* @my_state_is_will to i32 (i32, ...)*)(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %232

211:                                              ; preds = %207
  %212 = load i32, i32* %1, align 4
  %213 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT_OK to i32 (i32, ...)*)(i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load i32, i32* %1, align 4
  %217 = call i32 (i32, ...) bitcast (i32 (...)* @TELOPT to i32 (i32, ...)*)(i32 %216)
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %217)
  br label %231

219:                                              ; preds = %211
  %220 = load i32, i32* %1, align 4
  %221 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD_OK to i32 (i32, ...)*)(i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i32, i32* %1, align 4
  %225 = call i32 (i32, ...) bitcast (i32 (...)* @TELCMD to i32 (i32, ...)*)(i32 %224)
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %225)
  br label %230

227:                                              ; preds = %219
  %228 = load i32, i32* %1, align 4
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %227, %223
  br label %231

231:                                              ; preds = %230, %215
  br label %232

232:                                              ; preds = %231, %207
  br label %233

233:                                              ; preds = %232, %206
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %1, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %1, align 4
  br label %2

237:                                              ; preds = %2
  ret void
}

declare dso_local i32 @TELOPT_OK(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @TELOPT(...) #1

declare dso_local i32 @TELCMD_OK(...) #1

declare dso_local i32 @TELCMD(...) #1

declare dso_local i32 @my_want_state_is_do(...) #1

declare dso_local i32 @my_state_is_do(...) #1

declare dso_local i32 @my_want_state_is_will(...) #1

declare dso_local i32 @my_state_is_will(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
