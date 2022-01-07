; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_llex.c_llex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_llex.c_llex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@TK_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@TK_EQ = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@TK_DBCOLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@TK_DOTS = common dso_local global i32 0, align 4
@TK_CONCAT = common dso_local global i32 0, align 4
@TK_NUMBER = common dso_local global i32 0, align 4
@TK_EOS = common dso_local global i32 0, align 4
@FIRST_RESERVED = common dso_local global i32 0, align 4
@TK_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_25__*)* @llex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llex(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @luaZ_resetbuffer(i32 %12)
  br label %14

14:                                               ; preds = %246, %2
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %194 [
    i32 10, label %18
    i32 13, label %18
    i32 32, label %21
    i32 12, label %21
    i32 9, label %21
    i32 11, label %21
    i32 45, label %24
    i32 91, label %73
    i32 61, label %94
    i32 60, label %106
    i32 62, label %118
    i32 126, label %130
    i32 58, label %142
    i32 34, label %154
    i32 39, label %154
    i32 46, label %163
    i32 48, label %187
    i32 49, label %187
    i32 50, label %187
    i32 51, label %187
    i32 52, label %187
    i32 53, label %187
    i32 54, label %187
    i32 55, label %187
    i32 56, label %187
    i32 57, label %187
    i32 128, label %192
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %20 = call i32 @inclinenumber(%struct.TYPE_26__* %19)
  br label %246

21:                                               ; preds = %14, %14, %14, %14
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %23 = call i32 @next(%struct.TYPE_26__* %22)
  br label %246

24:                                               ; preds = %14
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %26 = call i32 @next(%struct.TYPE_26__* %25)
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 45, i32* %3, align 4
  br label %247

32:                                               ; preds = %24
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %34 = call i32 @next(%struct.TYPE_26__* %33)
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 91
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %41 = call i32 @skip_sep(%struct.TYPE_26__* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @luaZ_resetbuffer(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @read_long_string(%struct.TYPE_26__* %49, %struct.TYPE_25__* null, i32 %50)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @luaZ_resetbuffer(i32 %54)
  br label %246

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %69, %57
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %60 = call i32 @currIsNewline(%struct.TYPE_26__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 128
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ false, %58 ], [ %66, %62 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %71 = call i32 @next(%struct.TYPE_26__* %70)
  br label %58

72:                                               ; preds = %67
  br label %246

73:                                               ; preds = %14
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %75 = call i32 @skip_sep(%struct.TYPE_26__* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @read_long_string(%struct.TYPE_26__* %79, %struct.TYPE_25__* %80, i32 %81)
  %83 = load i32, i32* @TK_STRING, align 4
  store i32 %83, i32* %3, align 4
  br label %247

84:                                               ; preds = %73
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 91, i32* %3, align 4
  br label %247

88:                                               ; preds = %84
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %90 = load i32, i32* @TK_STRING, align 4
  %91 = call i32 @lexerror(%struct.TYPE_26__* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %14, %93
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %96 = call i32 @next(%struct.TYPE_26__* %95)
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 61
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 61, i32* %3, align 4
  br label %247

102:                                              ; preds = %94
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %104 = call i32 @next(%struct.TYPE_26__* %103)
  %105 = load i32, i32* @TK_EQ, align 4
  store i32 %105, i32* %3, align 4
  br label %247

106:                                              ; preds = %14
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %108 = call i32 @next(%struct.TYPE_26__* %107)
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 61
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 60, i32* %3, align 4
  br label %247

114:                                              ; preds = %106
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %116 = call i32 @next(%struct.TYPE_26__* %115)
  %117 = load i32, i32* @TK_LE, align 4
  store i32 %117, i32* %3, align 4
  br label %247

118:                                              ; preds = %14
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %120 = call i32 @next(%struct.TYPE_26__* %119)
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 61
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 62, i32* %3, align 4
  br label %247

126:                                              ; preds = %118
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = call i32 @next(%struct.TYPE_26__* %127)
  %129 = load i32, i32* @TK_GE, align 4
  store i32 %129, i32* %3, align 4
  br label %247

130:                                              ; preds = %14
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %132 = call i32 @next(%struct.TYPE_26__* %131)
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 61
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 126, i32* %3, align 4
  br label %247

138:                                              ; preds = %130
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %140 = call i32 @next(%struct.TYPE_26__* %139)
  %141 = load i32, i32* @TK_NE, align 4
  store i32 %141, i32* %3, align 4
  br label %247

142:                                              ; preds = %14
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %144 = call i32 @next(%struct.TYPE_26__* %143)
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 58
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 58, i32* %3, align 4
  br label %247

150:                                              ; preds = %142
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %152 = call i32 @next(%struct.TYPE_26__* %151)
  %153 = load i32, i32* @TK_DBCOLON, align 4
  store i32 %153, i32* %3, align 4
  br label %247

154:                                              ; preds = %14, %14
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = trunc i32 %158 to i8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %161 = call i32 @read_string(%struct.TYPE_26__* %155, i8 signext %159, %struct.TYPE_25__* %160)
  %162 = load i32, i32* @TK_STRING, align 4
  store i32 %162, i32* %3, align 4
  br label %247

163:                                              ; preds = %14
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %165 = call i32 @save_and_next(%struct.TYPE_26__* %164)
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %167 = call i32 @check_next(%struct.TYPE_26__* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %171 = call i32 @check_next(%struct.TYPE_26__* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @TK_DOTS, align 4
  store i32 %174, i32* %3, align 4
  br label %247

175:                                              ; preds = %169
  %176 = load i32, i32* @TK_CONCAT, align 4
  store i32 %176, i32* %3, align 4
  br label %247

177:                                              ; preds = %163
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = trunc i32 %180 to i8
  %182 = call i32 @lisdigit(i8 signext %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  store i32 46, i32* %3, align 4
  br label %247

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %186
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %190 = call i32 @read_numeral(%struct.TYPE_26__* %188, %struct.TYPE_25__* %189)
  %191 = load i32, i32* @TK_NUMBER, align 4
  store i32 %191, i32* %3, align 4
  br label %247

192:                                              ; preds = %14
  %193 = load i32, i32* @TK_EOS, align 4
  store i32 %193, i32* %3, align 4
  br label %247

194:                                              ; preds = %14
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = trunc i32 %197 to i8
  %199 = call i32 @lislalpha(i8 signext %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %239

201:                                              ; preds = %194
  br label %202

202:                                              ; preds = %205, %201
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %204 = call i32 @save_and_next(%struct.TYPE_26__* %203)
  br label %205

205:                                              ; preds = %202
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = trunc i32 %208 to i8
  %210 = call i32 @lislalnum(i8 signext %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %202, label %212

212:                                              ; preds = %205
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @luaZ_buffer(i32 %216)
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @luaZ_bufflen(i32 %220)
  %222 = call %struct.TYPE_24__* @luaX_newstring(%struct.TYPE_26__* %213, i32 %217, i32 %221)
  store %struct.TYPE_24__* %222, %struct.TYPE_24__** %8, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  store %struct.TYPE_24__* %223, %struct.TYPE_24__** %225, align 8
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %227 = call i32 @isreserved(%struct.TYPE_24__* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %212
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 1
  %235 = load i32, i32* @FIRST_RESERVED, align 4
  %236 = add nsw i32 %234, %235
  store i32 %236, i32* %3, align 4
  br label %247

237:                                              ; preds = %212
  %238 = load i32, i32* @TK_NAME, align 4
  store i32 %238, i32* %3, align 4
  br label %247

239:                                              ; preds = %194
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %9, align 4
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %244 = call i32 @next(%struct.TYPE_26__* %243)
  %245 = load i32, i32* %9, align 4
  store i32 %245, i32* %3, align 4
  br label %247

246:                                              ; preds = %72, %48, %21, %18
  br label %14

247:                                              ; preds = %239, %237, %229, %192, %187, %184, %175, %173, %154, %150, %149, %138, %137, %126, %125, %114, %113, %102, %101, %87, %78, %31
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @luaZ_resetbuffer(i32) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_26__*) #1

declare dso_local i32 @next(%struct.TYPE_26__*) #1

declare dso_local i32 @skip_sep(%struct.TYPE_26__*) #1

declare dso_local i32 @read_long_string(%struct.TYPE_26__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @currIsNewline(%struct.TYPE_26__*) #1

declare dso_local i32 @lexerror(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @read_string(%struct.TYPE_26__*, i8 signext, %struct.TYPE_25__*) #1

declare dso_local i32 @save_and_next(%struct.TYPE_26__*) #1

declare dso_local i32 @check_next(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @lisdigit(i8 signext) #1

declare dso_local i32 @read_numeral(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @lislalpha(i8 signext) #1

declare dso_local i32 @lislalnum(i8 signext) #1

declare dso_local %struct.TYPE_24__* @luaX_newstring(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @luaZ_buffer(i32) #1

declare dso_local i32 @luaZ_bufflen(i32) #1

declare dso_local i32 @isreserved(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
