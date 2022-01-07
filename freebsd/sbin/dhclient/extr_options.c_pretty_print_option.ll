; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_pretty_print_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_pretty_print_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.in_addr = type { i32 }

@pretty_print_option.optbuf = internal global [32768 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [33 x i8] c"pretty_print_option: bad code %d\00", align 1
@dhcp_options = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: Excess information in format string: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: garbage in format string: %s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: expecting at least %d bytes; got %d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<error>\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: %d extra bytes\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s: %d extra bytes at end of array\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Unexpected format code %c\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"dhcp option too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pretty_print_option(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.in_addr, align 4
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @pretty_print_option.optbuf, i64 0, i64 0), i8** %16, align 8
  store i32 32768, i32* %20, align 4
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %21, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ugt i32 %26, 255
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8 44, i8* %23, align 1
  br label %36

35:                                               ; preds = %31
  store i8 32, i8* %23, align 1
  br label %36

36:                                               ; preds = %35, %34
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %183, %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %186

49:                                               ; preds = %37
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %67)
  br label %186

69:                                               ; preds = %49
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %83
  store i8 %81, i8* %84, align 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  switch i32 %95, label %165 [
    i32 65, label %96
    i32 88, label %102
    i32 116, label %147
    i32 73, label %155
    i32 108, label %155
    i32 76, label %155
    i32 115, label %158
    i32 83, label %158
    i32 98, label %161
    i32 66, label %161
    i32 102, label %161
    i32 101, label %164
  ]

96:                                               ; preds = %69
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  store i32 0, i32* %13, align 4
  br label %182

102:                                              ; preds = %69
  store i32 0, i32* %19, align 4
  br label %103

103:                                              ; preds = %125, %102
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @isascii(i8 zeroext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @isprint(i8 zeroext %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115, %107
  br label %128

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %103

128:                                              ; preds = %123, %103
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %134
  store i8 116, i8* %135, align 1
  store i32 -2, i32* %13, align 4
  br label %142

136:                                              ; preds = %128
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %138
  store i8 120, i8* %139, align 1
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  store i8 58, i8* %23, align 1
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %136, %132
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %145
  store i8 0, i8* %146, align 1
  br label %182

147:                                              ; preds = %69
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %149
  store i8 116, i8* %150, align 1
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %153
  store i8 0, i8* %154, align 1
  store i32 -2, i32* %13, align 4
  br label %182

155:                                              ; preds = %69, %69, %69
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 4
  store i32 %157, i32* %12, align 4
  br label %182

158:                                              ; preds = %69, %69
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 2
  store i32 %160, i32* %12, align 4
  br label %182

161:                                              ; preds = %69, %69, %69
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %182

164:                                              ; preds = %69
  br label %182

165:                                              ; preds = %69
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %167 = load i32, i32* %7, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %173 = load i32, i32* %7, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %171, i8* %180)
  br label %182

182:                                              ; preds = %165, %164, %161, %158, %155, %147, %142, %96
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %17, align 4
  br label %37

186:                                              ; preds = %52, %37
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %192 = load i32, i32* %7, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %196, i32 %197, i32 %198)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %608

200:                                              ; preds = %186
  %201 = load i32, i32* %13, align 4
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %209 = load i32, i32* %7, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %12, align 4
  %216 = sub nsw i32 %214, %215
  %217 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %207, %203, %200
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %12, align 4
  %224 = sdiv i32 %222, %223
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %221, %218
  %226 = load i32, i32* %13, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %225
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %12, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* %9, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %247

234:                                              ; preds = %228
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %236 = load i32, i32* %7, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* %12, align 4
  %244 = mul nsw i32 %242, %243
  %245 = sub nsw i32 %241, %244
  %246 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %240, i32 %245)
  br label %247

247:                                              ; preds = %234, %228, %225
  %248 = load i32, i32* %13, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  store i32 1, i32* %13, align 4
  br label %251

251:                                              ; preds = %250, %247
  store i32 0, i32* %17, align 4
  br label %252

252:                                              ; preds = %602, %251
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %13, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %605

256:                                              ; preds = %252
  store i32 0, i32* %18, align 4
  br label %257

257:                                              ; preds = %583, %256
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %14, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %586

261:                                              ; preds = %257
  %262 = load i32, i32* %18, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  switch i32 %266, label %547 [
    i32 116, label %267
    i32 73, label %373
    i32 108, label %394
    i32 76, label %414
    i32 115, label %434
    i32 83, label %454
    i32 98, label %474
    i32 66, label %492
    i32 120, label %510
    i32 102, label %528
  ]

267:                                              ; preds = %261
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = load i8*, i8** %16, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %16, align 8
  store i8 34, i8* %271, align 1
  %273 = load i32, i32* %20, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %20, align 4
  br label %275

275:                                              ; preds = %270, %267
  br label %276

276:                                              ; preds = %360, %275
  %277 = load i8*, i8** %21, align 8
  %278 = load i8*, i8** %8, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = icmp ult i8* %277, %281
  br i1 %282, label %283, label %363

283:                                              ; preds = %276
  %284 = load i8*, i8** %21, align 8
  %285 = load i8, i8* %284, align 1
  %286 = call i32 @isascii(i8 zeroext %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load i8*, i8** %21, align 8
  %290 = load i8, i8* %289, align 1
  %291 = call i32 @isprint(i8 zeroext %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %317, label %293

293:                                              ; preds = %288, %283
  %294 = load i8*, i8** %21, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  %296 = load i8*, i8** %8, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  %300 = icmp ne i8* %295, %299
  br i1 %300, label %306, label %301

301:                                              ; preds = %293
  %302 = load i8*, i8** %21, align 8
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %301, %293
  %307 = load i8*, i8** %16, align 8
  %308 = load i32, i32* %20, align 4
  %309 = load i8*, i8** %21, align 8
  %310 = load i8, i8* %309, align 1
  %311 = call i32 @snprintf(i8* %307, i32 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8 signext %310)
  %312 = load i8*, i8** %16, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 4
  store i8* %313, i8** %16, align 8
  %314 = load i32, i32* %20, align 4
  %315 = sub nsw i32 %314, 4
  store i32 %315, i32* %20, align 4
  br label %316

316:                                              ; preds = %306, %301
  br label %359

317:                                              ; preds = %288
  %318 = load i8*, i8** %21, align 8
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp eq i32 %320, 34
  br i1 %321, label %342, label %322

322:                                              ; preds = %317
  %323 = load i8*, i8** %21, align 8
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp eq i32 %325, 39
  br i1 %326, label %342, label %327

327:                                              ; preds = %322
  %328 = load i8*, i8** %21, align 8
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp eq i32 %330, 36
  br i1 %331, label %342, label %332

332:                                              ; preds = %327
  %333 = load i8*, i8** %21, align 8
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp eq i32 %335, 96
  br i1 %336, label %342, label %337

337:                                              ; preds = %332
  %338 = load i8*, i8** %21, align 8
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp eq i32 %340, 92
  br i1 %341, label %342, label %351

342:                                              ; preds = %337, %332, %327, %322, %317
  %343 = load i8*, i8** %16, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %16, align 8
  store i8 92, i8* %343, align 1
  %345 = load i8*, i8** %21, align 8
  %346 = load i8, i8* %345, align 1
  %347 = load i8*, i8** %16, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %16, align 8
  store i8 %346, i8* %347, align 1
  %349 = load i32, i32* %20, align 4
  %350 = sub nsw i32 %349, 2
  store i32 %350, i32* %20, align 4
  br label %358

351:                                              ; preds = %337
  %352 = load i8*, i8** %21, align 8
  %353 = load i8, i8* %352, align 1
  %354 = load i8*, i8** %16, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %16, align 8
  store i8 %353, i8* %354, align 1
  %356 = load i32, i32* %20, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %20, align 4
  br label %358

358:                                              ; preds = %351, %342
  br label %359

359:                                              ; preds = %358, %316
  br label %360

360:                                              ; preds = %359
  %361 = load i8*, i8** %21, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %21, align 8
  br label %276

363:                                              ; preds = %276
  %364 = load i32, i32* %11, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %363
  %367 = load i8*, i8** %16, align 8
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %368, i8** %16, align 8
  store i8 34, i8* %367, align 1
  %369 = load i32, i32* %20, align 4
  %370 = add nsw i32 %369, -1
  store i32 %370, i32* %20, align 4
  br label %371

371:                                              ; preds = %366, %363
  %372 = load i8*, i8** %16, align 8
  store i8 0, i8* %372, align 1
  br label %554

373:                                              ; preds = %261
  %374 = load i8*, i8** %21, align 8
  %375 = call i64 @getULong(i8* %374)
  %376 = call i32 @htonl(i64 %375)
  %377 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 %376, i32* %377, align 4
  %378 = load i8*, i8** %16, align 8
  %379 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i8* @inet_ntoa(i32 %380)
  %382 = load i32, i32* %20, align 4
  %383 = call i32 @strlcpy(i8* %378, i8* %381, i32 %382)
  store i32 %383, i32* %24, align 4
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %20, align 4
  %386 = icmp sge i32 %384, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %373
  br label %606

388:                                              ; preds = %373
  %389 = load i32, i32* %24, align 4
  %390 = load i32, i32* %20, align 4
  %391 = sub nsw i32 %390, %389
  store i32 %391, i32* %20, align 4
  %392 = load i8*, i8** %21, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 4
  store i8* %393, i8** %21, align 8
  br label %554

394:                                              ; preds = %261
  %395 = load i8*, i8** %16, align 8
  %396 = load i32, i32* %20, align 4
  %397 = load i8*, i8** %21, align 8
  %398 = call i64 @getLong(i8* %397)
  %399 = trunc i64 %398 to i8
  %400 = call i32 @snprintf(i8* %395, i32 %396, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8 signext %399)
  store i32 %400, i32* %24, align 4
  %401 = load i32, i32* %24, align 4
  %402 = load i32, i32* %20, align 4
  %403 = icmp sge i32 %401, %402
  br i1 %403, label %407, label %404

404:                                              ; preds = %394
  %405 = load i32, i32* %24, align 4
  %406 = icmp eq i32 %405, -1
  br i1 %406, label %407, label %408

407:                                              ; preds = %404, %394
  br label %606

408:                                              ; preds = %404
  %409 = load i32, i32* %24, align 4
  %410 = load i32, i32* %20, align 4
  %411 = sub nsw i32 %410, %409
  store i32 %411, i32* %20, align 4
  %412 = load i8*, i8** %21, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 4
  store i8* %413, i8** %21, align 8
  br label %554

414:                                              ; preds = %261
  %415 = load i8*, i8** %16, align 8
  %416 = load i32, i32* %20, align 4
  %417 = load i8*, i8** %21, align 8
  %418 = call i64 @getULong(i8* %417)
  %419 = trunc i64 %418 to i8
  %420 = call i32 @snprintf(i8* %415, i32 %416, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8 signext %419)
  store i32 %420, i32* %24, align 4
  %421 = load i32, i32* %24, align 4
  %422 = load i32, i32* %20, align 4
  %423 = icmp sge i32 %421, %422
  br i1 %423, label %427, label %424

424:                                              ; preds = %414
  %425 = load i32, i32* %24, align 4
  %426 = icmp eq i32 %425, -1
  br i1 %426, label %427, label %428

427:                                              ; preds = %424, %414
  br label %606

428:                                              ; preds = %424
  %429 = load i32, i32* %24, align 4
  %430 = load i32, i32* %20, align 4
  %431 = sub nsw i32 %430, %429
  store i32 %431, i32* %20, align 4
  %432 = load i8*, i8** %21, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 4
  store i8* %433, i8** %21, align 8
  br label %554

434:                                              ; preds = %261
  %435 = load i8*, i8** %16, align 8
  %436 = load i32, i32* %20, align 4
  %437 = load i8*, i8** %21, align 8
  %438 = call i32 @getShort(i8* %437)
  %439 = trunc i32 %438 to i8
  %440 = call i32 @snprintf(i8* %435, i32 %436, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8 signext %439)
  store i32 %440, i32* %24, align 4
  %441 = load i32, i32* %24, align 4
  %442 = load i32, i32* %20, align 4
  %443 = icmp sge i32 %441, %442
  br i1 %443, label %447, label %444

444:                                              ; preds = %434
  %445 = load i32, i32* %24, align 4
  %446 = icmp eq i32 %445, -1
  br i1 %446, label %447, label %448

447:                                              ; preds = %444, %434
  br label %606

448:                                              ; preds = %444
  %449 = load i32, i32* %24, align 4
  %450 = load i32, i32* %20, align 4
  %451 = sub nsw i32 %450, %449
  store i32 %451, i32* %20, align 4
  %452 = load i8*, i8** %21, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 2
  store i8* %453, i8** %21, align 8
  br label %554

454:                                              ; preds = %261
  %455 = load i8*, i8** %16, align 8
  %456 = load i32, i32* %20, align 4
  %457 = load i8*, i8** %21, align 8
  %458 = call i32 @getUShort(i8* %457)
  %459 = trunc i32 %458 to i8
  %460 = call i32 @snprintf(i8* %455, i32 %456, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8 signext %459)
  store i32 %460, i32* %24, align 4
  %461 = load i32, i32* %24, align 4
  %462 = load i32, i32* %20, align 4
  %463 = icmp sge i32 %461, %462
  br i1 %463, label %467, label %464

464:                                              ; preds = %454
  %465 = load i32, i32* %24, align 4
  %466 = icmp eq i32 %465, -1
  br i1 %466, label %467, label %468

467:                                              ; preds = %464, %454
  br label %606

468:                                              ; preds = %464
  %469 = load i32, i32* %24, align 4
  %470 = load i32, i32* %20, align 4
  %471 = sub nsw i32 %470, %469
  store i32 %471, i32* %20, align 4
  %472 = load i8*, i8** %21, align 8
  %473 = getelementptr inbounds i8, i8* %472, i64 2
  store i8* %473, i8** %21, align 8
  br label %554

474:                                              ; preds = %261
  %475 = load i8*, i8** %16, align 8
  %476 = load i32, i32* %20, align 4
  %477 = load i8*, i8** %21, align 8
  %478 = getelementptr inbounds i8, i8* %477, i32 1
  store i8* %478, i8** %21, align 8
  %479 = load i8, i8* %477, align 1
  %480 = call i32 @snprintf(i8* %475, i32 %476, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8 signext %479)
  store i32 %480, i32* %24, align 4
  %481 = load i32, i32* %24, align 4
  %482 = load i32, i32* %20, align 4
  %483 = icmp sge i32 %481, %482
  br i1 %483, label %487, label %484

484:                                              ; preds = %474
  %485 = load i32, i32* %24, align 4
  %486 = icmp eq i32 %485, -1
  br i1 %486, label %487, label %488

487:                                              ; preds = %484, %474
  br label %606

488:                                              ; preds = %484
  %489 = load i32, i32* %24, align 4
  %490 = load i32, i32* %20, align 4
  %491 = sub nsw i32 %490, %489
  store i32 %491, i32* %20, align 4
  br label %554

492:                                              ; preds = %261
  %493 = load i8*, i8** %16, align 8
  %494 = load i32, i32* %20, align 4
  %495 = load i8*, i8** %21, align 8
  %496 = getelementptr inbounds i8, i8* %495, i32 1
  store i8* %496, i8** %21, align 8
  %497 = load i8, i8* %495, align 1
  %498 = call i32 @snprintf(i8* %493, i32 %494, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8 signext %497)
  store i32 %498, i32* %24, align 4
  %499 = load i32, i32* %24, align 4
  %500 = load i32, i32* %20, align 4
  %501 = icmp sge i32 %499, %500
  br i1 %501, label %505, label %502

502:                                              ; preds = %492
  %503 = load i32, i32* %24, align 4
  %504 = icmp eq i32 %503, -1
  br i1 %504, label %505, label %506

505:                                              ; preds = %502, %492
  br label %606

506:                                              ; preds = %502
  %507 = load i32, i32* %24, align 4
  %508 = load i32, i32* %20, align 4
  %509 = sub nsw i32 %508, %507
  store i32 %509, i32* %20, align 4
  br label %554

510:                                              ; preds = %261
  %511 = load i8*, i8** %16, align 8
  %512 = load i32, i32* %20, align 4
  %513 = load i8*, i8** %21, align 8
  %514 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %514, i8** %21, align 8
  %515 = load i8, i8* %513, align 1
  %516 = call i32 @snprintf(i8* %511, i32 %512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8 signext %515)
  store i32 %516, i32* %24, align 4
  %517 = load i32, i32* %24, align 4
  %518 = load i32, i32* %20, align 4
  %519 = icmp sge i32 %517, %518
  br i1 %519, label %523, label %520

520:                                              ; preds = %510
  %521 = load i32, i32* %24, align 4
  %522 = icmp eq i32 %521, -1
  br i1 %522, label %523, label %524

523:                                              ; preds = %520, %510
  br label %606

524:                                              ; preds = %520
  %525 = load i32, i32* %24, align 4
  %526 = load i32, i32* %20, align 4
  %527 = sub nsw i32 %526, %525
  store i32 %527, i32* %20, align 4
  br label %554

528:                                              ; preds = %261
  %529 = load i8*, i8** %16, align 8
  %530 = load i8*, i8** %21, align 8
  %531 = getelementptr inbounds i8, i8* %530, i32 1
  store i8* %531, i8** %21, align 8
  %532 = load i8, i8* %530, align 1
  %533 = zext i8 %532 to i32
  %534 = icmp ne i32 %533, 0
  %535 = zext i1 %534 to i64
  %536 = select i1 %534, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)
  %537 = load i32, i32* %20, align 4
  %538 = call i32 @strlcpy(i8* %529, i8* %536, i32 %537)
  store i32 %538, i32* %24, align 4
  %539 = load i32, i32* %24, align 4
  %540 = load i32, i32* %20, align 4
  %541 = icmp sge i32 %539, %540
  br i1 %541, label %542, label %543

542:                                              ; preds = %528
  br label %606

543:                                              ; preds = %528
  %544 = load i32, i32* %24, align 4
  %545 = load i32, i32* %20, align 4
  %546 = sub nsw i32 %545, %544
  store i32 %546, i32* %20, align 4
  br label %554

547:                                              ; preds = %261
  %548 = load i32, i32* %18, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %549
  %551 = load i8, i8* %550, align 1
  %552 = sext i8 %551 to i32
  %553 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %552)
  br label %554

554:                                              ; preds = %547, %543, %524, %506, %488, %468, %448, %428, %408, %388, %371
  %555 = load i8*, i8** %16, align 8
  %556 = call i64 @strlen(i8* %555)
  %557 = load i8*, i8** %16, align 8
  %558 = getelementptr inbounds i8, i8* %557, i64 %556
  store i8* %558, i8** %16, align 8
  %559 = load i8*, i8** %16, align 8
  %560 = call i64 @strlen(i8* %559)
  %561 = load i32, i32* %20, align 4
  %562 = sext i32 %561 to i64
  %563 = sub nsw i64 %562, %560
  %564 = trunc i64 %563 to i32
  store i32 %564, i32* %20, align 4
  %565 = load i32, i32* %20, align 4
  %566 = icmp slt i32 %565, 1
  br i1 %566, label %567, label %568

567:                                              ; preds = %554
  br label %606

568:                                              ; preds = %554
  %569 = load i32, i32* %18, align 4
  %570 = add nsw i32 %569, 1
  %571 = load i32, i32* %14, align 4
  %572 = icmp slt i32 %570, %571
  br i1 %572, label %573, label %582

573:                                              ; preds = %568
  %574 = load i8, i8* %23, align 1
  %575 = sext i8 %574 to i32
  %576 = icmp ne i32 %575, 58
  br i1 %576, label %577, label %582

577:                                              ; preds = %573
  %578 = load i8*, i8** %16, align 8
  %579 = getelementptr inbounds i8, i8* %578, i32 1
  store i8* %579, i8** %16, align 8
  store i8 32, i8* %578, align 1
  %580 = load i32, i32* %20, align 4
  %581 = add nsw i32 %580, -1
  store i32 %581, i32* %20, align 4
  br label %582

582:                                              ; preds = %577, %573, %568
  br label %583

583:                                              ; preds = %582
  %584 = load i32, i32* %18, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %18, align 4
  br label %257

586:                                              ; preds = %257
  %587 = load i32, i32* %17, align 4
  %588 = add nsw i32 %587, 1
  %589 = load i32, i32* %13, align 4
  %590 = icmp slt i32 %588, %589
  br i1 %590, label %591, label %597

591:                                              ; preds = %586
  %592 = load i8, i8* %23, align 1
  %593 = load i8*, i8** %16, align 8
  %594 = getelementptr inbounds i8, i8* %593, i32 1
  store i8* %594, i8** %16, align 8
  store i8 %592, i8* %593, align 1
  %595 = load i32, i32* %20, align 4
  %596 = add nsw i32 %595, -1
  store i32 %596, i32* %20, align 4
  br label %597

597:                                              ; preds = %591, %586
  %598 = load i32, i32* %20, align 4
  %599 = icmp slt i32 %598, 1
  br i1 %599, label %600, label %601

600:                                              ; preds = %597
  br label %606

601:                                              ; preds = %597
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %17, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %17, align 4
  br label %252

605:                                              ; preds = %252
  store i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @pretty_print_option.optbuf, i64 0, i64 0), i8** %6, align 8
  br label %608

606:                                              ; preds = %600, %567, %542, %523, %505, %487, %467, %447, %427, %407, %387
  %607 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %608

608:                                              ; preds = %606, %605, %190
  %609 = load i8*, i8** %6, align 8
  ret i8* %609
}

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @isascii(i8 zeroext) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @getULong(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i64 @getLong(i8*) #1

declare dso_local i32 @getShort(i8*) #1

declare dso_local i32 @getUShort(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
