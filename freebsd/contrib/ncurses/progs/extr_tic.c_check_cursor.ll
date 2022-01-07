; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_cursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@hard_copy = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"hard_copy\00", align 1
@generic_type = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"generic_type\00", align 1
@column_address = common dso_local global i8* null, align 8
@cursor_address = common dso_local global i8* null, align 8
@cursor_home = common dso_local global i8* null, align 8
@cursor_mem_address = common dso_local global i8* null, align 8
@cursor_to_ll = common dso_local global i8* null, align 8
@row_address = common dso_local global i8* null, align 8
@cursor_down = common dso_local global i8* null, align 8
@cursor_up = common dso_local global i8* null, align 8
@cursor_left = common dso_local global i8* null, align 8
@cursor_right = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"terminal lacks cursor addressing\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"terminal lacks cursor column-addressing\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"terminal lacks cursor row-addressing\00", align 1
@parm_insert_line = common dso_local global i8* null, align 8
@insert_line = common dso_local global i8* null, align 8
@parm_delete_line = common dso_local global i8* null, align 8
@delete_line = common dso_local global i8* null, align 8
@parm_down_cursor = common dso_local global i8* null, align 8
@parm_up_cursor = common dso_local global i8* null, align 8
@parm_left_cursor = common dso_local global i8* null, align 8
@parm_right_cursor = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @check_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cursor(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load i64, i64* @hard_copy, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = call i32 @check_noaddress(%struct.TYPE_4__* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %116

12:                                               ; preds = %1
  %13 = load i64, i64* @generic_type, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = call i32 @check_noaddress(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %115

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strchr(i32 %21, i8 signext 43)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %114

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %25 = load i8*, i8** @column_address, align 8
  %26 = call i64 @PRESENT(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i8*, i8** @cursor_address, align 8
  %33 = call i64 @PRESENT(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 10, i32* %6, align 4
  store i32 10, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i8*, i8** @cursor_home, align 8
  %38 = call i64 @PRESENT(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i8*, i8** @cursor_mem_address, align 8
  %47 = call i64 @PRESENT(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 10, i32* %6, align 4
  store i32 10, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i8*, i8** @cursor_to_ll, align 8
  %52 = call i64 @PRESENT(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i8*, i8** @row_address, align 8
  %61 = call i64 @PRESENT(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i8*, i8** @cursor_down, align 8
  %68 = call i64 @PRESENT(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i8*, i8** @cursor_up, align 8
  %75 = call i64 @PRESENT(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i8*, i8** @cursor_left, align 8
  %82 = call i64 @PRESENT(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i8*, i8** @cursor_right, align 8
  %89 = call i64 @PRESENT(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 @_nc_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %113

102:                                              ; preds = %97, %94
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @_nc_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @_nc_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %113, %18
  br label %115

115:                                              ; preds = %114, %15
  br label %116

116:                                              ; preds = %115, %9
  %117 = load i8*, i8** @parm_insert_line, align 8
  %118 = load i8*, i8** @insert_line, align 8
  %119 = call i32 @ANDMISSING(i8* %117, i8* %118)
  %120 = load i8*, i8** @parm_delete_line, align 8
  %121 = load i8*, i8** @delete_line, align 8
  %122 = call i32 @ANDMISSING(i8* %120, i8* %121)
  %123 = load i8*, i8** @parm_insert_line, align 8
  %124 = load i8*, i8** @parm_delete_line, align 8
  %125 = call i32 @ANDMISSING(i8* %123, i8* %124)
  %126 = load i8*, i8** @parm_down_cursor, align 8
  %127 = load i8*, i8** @cursor_down, align 8
  %128 = call i32 @ANDMISSING(i8* %126, i8* %127)
  %129 = load i8*, i8** @parm_up_cursor, align 8
  %130 = load i8*, i8** @cursor_up, align 8
  %131 = call i32 @ANDMISSING(i8* %129, i8* %130)
  %132 = load i8*, i8** @parm_left_cursor, align 8
  %133 = load i8*, i8** @cursor_left, align 8
  %134 = call i32 @ANDMISSING(i8* %132, i8* %133)
  %135 = load i8*, i8** @parm_right_cursor, align 8
  %136 = load i8*, i8** @cursor_right, align 8
  %137 = call i32 @ANDMISSING(i8* %135, i8* %136)
  store i32 0, i32* %3, align 4
  %138 = load i8*, i8** @parm_down_cursor, align 8
  %139 = call i64 @PRESENT(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %116
  %142 = load i8*, i8** @parm_down_cursor, align 8
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %3, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %145
  store i8* %142, i8** %146, align 8
  br label %147

147:                                              ; preds = %141, %116
  %148 = load i8*, i8** @parm_up_cursor, align 8
  %149 = call i64 @PRESENT(i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i8*, i8** @parm_up_cursor, align 8
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %155
  store i8* %152, i8** %156, align 8
  br label %157

157:                                              ; preds = %151, %147
  %158 = load i8*, i8** @parm_left_cursor, align 8
  %159 = call i64 @PRESENT(i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i8*, i8** @parm_left_cursor, align 8
  %163 = load i32, i32* %3, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %3, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %165
  store i8* %162, i8** %166, align 8
  br label %167

167:                                              ; preds = %161, %157
  %168 = load i8*, i8** @parm_right_cursor, align 8
  %169 = call i64 @PRESENT(i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i8*, i8** @parm_right_cursor, align 8
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %175
  store i8* %172, i8** %176, align 8
  br label %177

177:                                              ; preds = %171, %167
  %178 = load i32, i32* %3, align 4
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %182 = call i32 @check_ansi_cursor(i8** %181)
  br label %196

183:                                              ; preds = %177
  %184 = load i32, i32* %3, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %183
  %187 = load i8*, i8** @parm_down_cursor, align 8
  %188 = call i32 @EXPECTED(i8* %187)
  %189 = load i8*, i8** @parm_up_cursor, align 8
  %190 = call i32 @EXPECTED(i8* %189)
  %191 = load i8*, i8** @parm_left_cursor, align 8
  %192 = call i32 @EXPECTED(i8* %191)
  %193 = load i8*, i8** @parm_right_cursor, align 8
  %194 = call i32 @EXPECTED(i8* %193)
  br label %195

195:                                              ; preds = %186, %183
  br label %196

196:                                              ; preds = %195, %180
  store i32 0, i32* %3, align 4
  %197 = load i8*, i8** @cursor_down, align 8
  %198 = call i64 @PRESENT(i8* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i8*, i8** @cursor_down, align 8
  %202 = load i32, i32* %3, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %3, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %204
  store i8* %201, i8** %205, align 8
  br label %206

206:                                              ; preds = %200, %196
  %207 = load i8*, i8** @cursor_up, align 8
  %208 = call i64 @PRESENT(i8* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load i8*, i8** @cursor_up, align 8
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %214
  store i8* %211, i8** %215, align 8
  br label %216

216:                                              ; preds = %210, %206
  %217 = load i8*, i8** @cursor_left, align 8
  %218 = call i64 @PRESENT(i8* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i8*, i8** @cursor_left, align 8
  %222 = load i32, i32* %3, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %3, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %224
  store i8* %221, i8** %225, align 8
  br label %226

226:                                              ; preds = %220, %216
  %227 = load i8*, i8** @cursor_right, align 8
  %228 = call i64 @PRESENT(i8* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load i8*, i8** @cursor_right, align 8
  %232 = load i32, i32* %3, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %3, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %234
  store i8* %231, i8** %235, align 8
  br label %236

236:                                              ; preds = %230, %226
  %237 = load i32, i32* %3, align 4
  %238 = icmp eq i32 %237, 4
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %241 = call i32 @check_ansi_cursor(i8** %240)
  br label %303

242:                                              ; preds = %236
  %243 = load i32, i32* %3, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %302

245:                                              ; preds = %242
  store i32 0, i32* %3, align 4
  %246 = load i8*, i8** @cursor_down, align 8
  %247 = call i64 @PRESENT(i8* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i8*, i8** @cursor_down, align 8
  %251 = call i64 @strcmp(i8* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i32, i32* %3, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %253, %249, %245
  %257 = load i8*, i8** @cursor_left, align 8
  %258 = call i64 @PRESENT(i8* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %256
  %261 = load i8*, i8** @cursor_left, align 8
  %262 = call i64 @strcmp(i8* %261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = load i32, i32* %3, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %264, %260, %256
  %268 = load i8*, i8** @cursor_up, align 8
  %269 = call i64 @PRESENT(i8* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %267
  %272 = load i8*, i8** @cursor_up, align 8
  %273 = call i32 @strlen(i8* %272)
  %274 = icmp sgt i32 %273, 1
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = load i32, i32* %3, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %275, %271, %267
  %279 = load i8*, i8** @cursor_right, align 8
  %280 = call i64 @PRESENT(i8* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %278
  %283 = load i8*, i8** @cursor_right, align 8
  %284 = call i32 @strlen(i8* %283)
  %285 = icmp sgt i32 %284, 1
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load i32, i32* %3, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %286, %282, %278
  %290 = load i32, i32* %3, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %289
  %293 = load i8*, i8** @cursor_down, align 8
  %294 = call i32 @EXPECTED(i8* %293)
  %295 = load i8*, i8** @cursor_up, align 8
  %296 = call i32 @EXPECTED(i8* %295)
  %297 = load i8*, i8** @cursor_left, align 8
  %298 = call i32 @EXPECTED(i8* %297)
  %299 = load i8*, i8** @cursor_right, align 8
  %300 = call i32 @EXPECTED(i8* %299)
  br label %301

301:                                              ; preds = %292, %289
  br label %302

302:                                              ; preds = %301, %242
  br label %303

303:                                              ; preds = %302, %239
  ret void
}

declare dso_local i32 @check_noaddress(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i64 @PRESENT(i8*) #1

declare dso_local i32 @_nc_warning(i8*) #1

declare dso_local i32 @ANDMISSING(i8*, i8*) #1

declare dso_local i32 @check_ansi_cursor(i8**) #1

declare dso_local i32 @EXPECTED(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
