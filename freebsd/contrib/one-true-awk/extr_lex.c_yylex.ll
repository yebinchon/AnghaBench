; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_yylex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@yylex.buf = internal global i8* null, align 8
@yylex.bufsize = internal global i32 5, align 4
@.str = private unnamed_addr constant [22 x i8] c"out of space in yylex\00", align 1
@sc = common dso_local global i32 0, align 4
@reg = common dso_local global i64 0, align 8
@CON = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@symtab = common dso_local global i32 0, align 4
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NUMBER = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@NL = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@BOR = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@NOTMATCH = common dso_local global i32 0, align 4
@MATCHOP = common dso_local global i32 0, align 4
@NOT = common dso_local global i32 0, align 4
@MATCH = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@ASSIGN = common dso_local global i32 0, align 4
@ASGNOP = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4
@INCR = common dso_local global i32 0, align 4
@ADDEQ = common dso_local global i32 0, align 4
@DECR = common dso_local global i32 0, align 4
@SUBEQ = common dso_local global i32 0, align 4
@MULTEQ = common dso_local global i32 0, align 4
@POWEQ = common dso_local global i8* null, align 8
@POWER = common dso_local global i32 0, align 4
@MODEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"NF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(NF)\00", align 1
@INDIRECT = common dso_local global i32 0, align 4
@infunc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STR = common dso_local global i32 0, align 4
@IVAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"unexpected end of input after $\00", align 1
@bracecnt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"extra }\00", align 1
@brackcnt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"extra ]\00", align 1
@parencnt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"extra )\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @yylex.buf, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32, i32* @yylex.bufsize, align 4
  %7 = call i64 @malloc(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** @yylex.buf, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 @FATAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %5, %0
  %13 = load i32, i32* @sc, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  store i32 0, i32* @sc, align 4
  %16 = call i32 @RET(i32 125)
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i64, i64* @reg, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  store i64 0, i64* @reg, align 8
  %21 = call i32 (...) @regexpr()
  store i32 %21, i32* %1, align 4
  br label %403

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %402, %22
  %24 = call i32 @gettok(i8** @yylex.buf, i32* @yylex.bufsize)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %403

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @isalpha(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = icmp eq i32 %33, 95
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %28
  %36 = load i8*, i8** @yylex.buf, align 8
  %37 = call i32 @word(i8* %36)
  store i32 %37, i32* %1, align 4
  br label %403

38:                                               ; preds = %32
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @isdigit(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i8*, i8** @yylex.buf, align 8
  %44 = load i8*, i8** @yylex.buf, align 8
  %45 = call i8* @tostring(i8* %44)
  %46 = load i8*, i8** @yylex.buf, align 8
  %47 = call double @atof(i8* %46)
  %48 = load i32, i32* @CON, align 4
  %49 = load i32, i32* @NUM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @symtab, align 4
  %52 = call i8* @setsymtab(i8* %43, i8* %45, double %47, i32 %50, i32 %51)
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %53 = load i32, i32* @NUMBER, align 4
  %54 = call i32 @RET(i32 %53)
  br label %55

55:                                               ; preds = %42, %38
  %56 = load i32, i32* %2, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %57 = load i32, i32* %2, align 4
  switch i32 %57, label %399 [
    i32 10, label %58
    i32 13, label %63
    i32 32, label %63
    i32 9, label %63
    i32 35, label %64
    i32 59, label %77
    i32 92, label %79
    i32 38, label %101
    i32 124, label %112
    i32 33, label %123
    i32 126, label %146
    i32 60, label %150
    i32 61, label %164
    i32 62, label %178
    i32 43, label %202
    i32 45, label %224
    i32 42, label %246
    i32 47, label %278
    i32 37, label %280
    i32 94, label %292
    i32 36, label %306
    i32 125, label %361
    i32 93, label %369
    i32 41, label %377
    i32 123, label %385
    i32 91, label %389
    i32 40, label %393
    i32 34, label %397
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* @lineno, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @lineno, align 4
  %61 = load i32, i32* @NL, align 4
  %62 = call i32 @RET(i32 %61)
  br label %63

63:                                               ; preds = %55, %55, %55, %58
  br label %402

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %73, %64
  %66 = call i32 (...) @input()
  store i32 %66, i32* %2, align 4
  %67 = icmp ne i32 %66, 10
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  br label %65

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @unput(i32 %75)
  br label %402

77:                                               ; preds = %55
  %78 = call i32 @RET(i32 59)
  br label %79

79:                                               ; preds = %55, %77
  %80 = call signext i8 (...) @peek()
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = call i32 (...) @input()
  %85 = load i32, i32* @lineno, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @lineno, align 4
  br label %100

87:                                               ; preds = %79
  %88 = call signext i8 (...) @peek()
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 13
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = call i32 (...) @input()
  %93 = call i32 (...) @input()
  %94 = load i32, i32* @lineno, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @lineno, align 4
  br label %99

96:                                               ; preds = %87
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @RET(i32 %97)
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %83
  br label %402

101:                                              ; preds = %55
  %102 = call signext i8 (...) @peek()
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 38
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = call i32 (...) @input()
  %107 = load i32, i32* @AND, align 4
  %108 = call i32 @RET(i32 %107)
  br label %111

109:                                              ; preds = %101
  %110 = call i32 @RET(i32 38)
  br label %111

111:                                              ; preds = %109, %105
  br label %112

112:                                              ; preds = %55, %111
  %113 = call signext i8 (...) @peek()
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 124
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = call i32 (...) @input()
  %118 = load i32, i32* @BOR, align 4
  %119 = call i32 @RET(i32 %118)
  br label %122

120:                                              ; preds = %112
  %121 = call i32 @RET(i32 124)
  br label %122

122:                                              ; preds = %120, %116
  br label %123

123:                                              ; preds = %55, %122
  %124 = call signext i8 (...) @peek()
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 61
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = call i32 (...) @input()
  %129 = load i32, i32* @NE, align 4
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %130 = load i32, i32* @NE, align 4
  %131 = call i32 @RET(i32 %130)
  br label %145

132:                                              ; preds = %123
  %133 = call signext i8 (...) @peek()
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 126
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = call i32 (...) @input()
  %138 = load i32, i32* @NOTMATCH, align 4
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %139 = load i32, i32* @MATCHOP, align 4
  %140 = call i32 @RET(i32 %139)
  br label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @NOT, align 4
  %143 = call i32 @RET(i32 %142)
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %127
  br label %146

146:                                              ; preds = %55, %145
  %147 = load i32, i32* @MATCH, align 4
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %148 = load i32, i32* @MATCHOP, align 4
  %149 = call i32 @RET(i32 %148)
  br label %150

150:                                              ; preds = %55, %146
  %151 = call signext i8 (...) @peek()
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 61
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = call i32 (...) @input()
  %156 = load i32, i32* @LE, align 4
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %157 = load i32, i32* @LE, align 4
  %158 = call i32 @RET(i32 %157)
  br label %163

159:                                              ; preds = %150
  %160 = load i32, i32* @LT, align 4
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %161 = load i32, i32* @LT, align 4
  %162 = call i32 @RET(i32 %161)
  br label %163

163:                                              ; preds = %159, %154
  br label %164

164:                                              ; preds = %55, %163
  %165 = call signext i8 (...) @peek()
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 61
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = call i32 (...) @input()
  %170 = load i32, i32* @EQ, align 4
  store i32 %170, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %171 = load i32, i32* @EQ, align 4
  %172 = call i32 @RET(i32 %171)
  br label %177

173:                                              ; preds = %164
  %174 = load i32, i32* @ASSIGN, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %175 = load i32, i32* @ASGNOP, align 4
  %176 = call i32 @RET(i32 %175)
  br label %177

177:                                              ; preds = %173, %168
  br label %178

178:                                              ; preds = %55, %177
  %179 = call signext i8 (...) @peek()
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 61
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = call i32 (...) @input()
  %184 = load i32, i32* @GE, align 4
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %185 = load i32, i32* @GE, align 4
  %186 = call i32 @RET(i32 %185)
  br label %201

187:                                              ; preds = %178
  %188 = call signext i8 (...) @peek()
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 62
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = call i32 (...) @input()
  %193 = load i32, i32* @APPEND, align 4
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %194 = load i32, i32* @APPEND, align 4
  %195 = call i32 @RET(i32 %194)
  br label %200

196:                                              ; preds = %187
  %197 = load i32, i32* @GT, align 4
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %198 = load i32, i32* @GT, align 4
  %199 = call i32 @RET(i32 %198)
  br label %200

200:                                              ; preds = %196, %191
  br label %201

201:                                              ; preds = %200, %182
  br label %202

202:                                              ; preds = %55, %201
  %203 = call signext i8 (...) @peek()
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 43
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = call i32 (...) @input()
  %208 = load i32, i32* @INCR, align 4
  store i32 %208, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %209 = load i32, i32* @INCR, align 4
  %210 = call i32 @RET(i32 %209)
  br label %223

211:                                              ; preds = %202
  %212 = call signext i8 (...) @peek()
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 61
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = call i32 (...) @input()
  %217 = load i32, i32* @ADDEQ, align 4
  store i32 %217, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %218 = load i32, i32* @ASGNOP, align 4
  %219 = call i32 @RET(i32 %218)
  br label %222

220:                                              ; preds = %211
  %221 = call i32 @RET(i32 43)
  br label %222

222:                                              ; preds = %220, %215
  br label %223

223:                                              ; preds = %222, %206
  br label %224

224:                                              ; preds = %55, %223
  %225 = call signext i8 (...) @peek()
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 45
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = call i32 (...) @input()
  %230 = load i32, i32* @DECR, align 4
  store i32 %230, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %231 = load i32, i32* @DECR, align 4
  %232 = call i32 @RET(i32 %231)
  br label %245

233:                                              ; preds = %224
  %234 = call signext i8 (...) @peek()
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 61
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = call i32 (...) @input()
  %239 = load i32, i32* @SUBEQ, align 4
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %240 = load i32, i32* @ASGNOP, align 4
  %241 = call i32 @RET(i32 %240)
  br label %244

242:                                              ; preds = %233
  %243 = call i32 @RET(i32 45)
  br label %244

244:                                              ; preds = %242, %237
  br label %245

245:                                              ; preds = %244, %228
  br label %246

246:                                              ; preds = %55, %245
  %247 = call signext i8 (...) @peek()
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 61
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = call i32 (...) @input()
  %252 = load i32, i32* @MULTEQ, align 4
  store i32 %252, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %253 = load i32, i32* @ASGNOP, align 4
  %254 = call i32 @RET(i32 %253)
  br label %277

255:                                              ; preds = %246
  %256 = call signext i8 (...) @peek()
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 42
  br i1 %258, label %259, label %274

259:                                              ; preds = %255
  %260 = call i32 (...) @input()
  %261 = call signext i8 (...) @peek()
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 61
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = call i32 (...) @input()
  %266 = load i8*, i8** @POWEQ, align 8
  %267 = ptrtoint i8* %266 to i32
  store i32 %267, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %268 = load i32, i32* @ASGNOP, align 4
  %269 = call i32 @RET(i32 %268)
  br label %273

270:                                              ; preds = %259
  %271 = load i32, i32* @POWER, align 4
  %272 = call i32 @RET(i32 %271)
  br label %273

273:                                              ; preds = %270, %264
  br label %276

274:                                              ; preds = %255
  %275 = call i32 @RET(i32 42)
  br label %276

276:                                              ; preds = %274, %273
  br label %277

277:                                              ; preds = %276, %250
  br label %278

278:                                              ; preds = %55, %277
  %279 = call i32 @RET(i32 47)
  br label %280

280:                                              ; preds = %55, %278
  %281 = call signext i8 (...) @peek()
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 61
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = call i32 (...) @input()
  %286 = load i32, i32* @MODEQ, align 4
  store i32 %286, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %287 = load i32, i32* @ASGNOP, align 4
  %288 = call i32 @RET(i32 %287)
  br label %291

289:                                              ; preds = %280
  %290 = call i32 @RET(i32 37)
  br label %291

291:                                              ; preds = %289, %284
  br label %292

292:                                              ; preds = %55, %291
  %293 = call signext i8 (...) @peek()
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 61
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = call i32 (...) @input()
  %298 = load i8*, i8** @POWEQ, align 8
  %299 = ptrtoint i8* %298 to i32
  store i32 %299, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %300 = load i32, i32* @ASGNOP, align 4
  %301 = call i32 @RET(i32 %300)
  br label %305

302:                                              ; preds = %292
  %303 = load i32, i32* @POWER, align 4
  %304 = call i32 @RET(i32 %303)
  br label %305

305:                                              ; preds = %302, %296
  br label %306

306:                                              ; preds = %55, %305
  %307 = call i32 @gettok(i8** @yylex.buf, i32* @yylex.bufsize)
  store i32 %307, i32* %2, align 4
  %308 = load i32, i32* %2, align 4
  %309 = call i64 @isalpha(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %348

311:                                              ; preds = %306
  %312 = load i8*, i8** @yylex.buf, align 8
  %313 = call i32 @strcmp(i8* %312, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = call i32 @unputstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %317 = load i32, i32* @INDIRECT, align 4
  %318 = call i32 @RET(i32 %317)
  br label %319

319:                                              ; preds = %315, %311
  %320 = call signext i8 (...) @peek()
  %321 = sext i8 %320 to i32
  store i32 %321, i32* %2, align 4
  %322 = load i32, i32* %2, align 4
  %323 = icmp eq i32 %322, 40
  br i1 %323, label %334, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* %2, align 4
  %326 = icmp eq i32 %325, 91
  br i1 %326, label %334, label %327

327:                                              ; preds = %324
  %328 = load i32, i32* @infunc, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %327
  %331 = load i8*, i8** @yylex.buf, align 8
  %332 = call i32 @isarg(i8* %331)
  %333 = icmp sge i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %330, %324, %319
  %335 = load i8*, i8** @yylex.buf, align 8
  %336 = call i32 @unputstr(i8* %335)
  %337 = load i32, i32* @INDIRECT, align 4
  %338 = call i32 @RET(i32 %337)
  br label %339

339:                                              ; preds = %334, %330, %327
  %340 = load i8*, i8** @yylex.buf, align 8
  %341 = load i32, i32* @STR, align 4
  %342 = load i32, i32* @NUM, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @symtab, align 4
  %345 = call i8* @setsymtab(i8* %340, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), double 0.000000e+00, i32 %343, i32 %344)
  store i8* %345, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %346 = load i32, i32* @IVAR, align 4
  %347 = call i32 @RET(i32 %346)
  br label %360

348:                                              ; preds = %306
  %349 = load i32, i32* %2, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = call i32 @SYNTAX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %353 = call i32 @RET(i32 59)
  br label %359

354:                                              ; preds = %348
  %355 = load i8*, i8** @yylex.buf, align 8
  %356 = call i32 @unputstr(i8* %355)
  %357 = load i32, i32* @INDIRECT, align 4
  %358 = call i32 @RET(i32 %357)
  br label %359

359:                                              ; preds = %354, %351
  br label %360

360:                                              ; preds = %359, %339
  br label %361

361:                                              ; preds = %55, %360
  %362 = load i32, i32* @bracecnt, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* @bracecnt, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = call i32 @SYNTAX(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %367

367:                                              ; preds = %365, %361
  store i32 1, i32* @sc, align 4
  %368 = call i32 @RET(i32 59)
  br label %369

369:                                              ; preds = %55, %367
  %370 = load i32, i32* @brackcnt, align 4
  %371 = add nsw i32 %370, -1
  store i32 %371, i32* @brackcnt, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %369
  %374 = call i32 @SYNTAX(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %375

375:                                              ; preds = %373, %369
  %376 = call i32 @RET(i32 93)
  br label %377

377:                                              ; preds = %55, %375
  %378 = load i32, i32* @parencnt, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* @parencnt, align 4
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = call i32 @SYNTAX(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %383

383:                                              ; preds = %381, %377
  %384 = call i32 @RET(i32 41)
  br label %385

385:                                              ; preds = %55, %383
  %386 = load i32, i32* @bracecnt, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* @bracecnt, align 4
  %388 = call i32 @RET(i32 123)
  br label %389

389:                                              ; preds = %55, %385
  %390 = load i32, i32* @brackcnt, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* @brackcnt, align 4
  %392 = call i32 @RET(i32 91)
  br label %393

393:                                              ; preds = %55, %389
  %394 = load i32, i32* @parencnt, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* @parencnt, align 4
  %396 = call i32 @RET(i32 40)
  br label %397

397:                                              ; preds = %55, %393
  %398 = call i32 (...) @string()
  store i32 %398, i32* %1, align 4
  br label %403

399:                                              ; preds = %55
  %400 = load i32, i32* %2, align 4
  %401 = call i32 @RET(i32 %400)
  br label %402

402:                                              ; preds = %399, %100, %74, %63
  br label %23

403:                                              ; preds = %397, %35, %27, %20
  %404 = load i32, i32* %1, align 4
  ret i32 %404
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*) #1

declare dso_local i32 @RET(i32) #1

declare dso_local i32 @regexpr(...) #1

declare dso_local i32 @gettok(i8**, i32*) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @word(i8*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i8* @setsymtab(i8*, i8*, double, i32, i32) #1

declare dso_local i8* @tostring(i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @input(...) #1

declare dso_local i32 @unput(i32) #1

declare dso_local signext i8 @peek(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @unputstr(i8*) #1

declare dso_local i32 @isarg(i8*) #1

declare dso_local i32 @SYNTAX(i8*) #1

declare dso_local i32 @string(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
