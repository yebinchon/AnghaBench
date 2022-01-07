; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_timephrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_timephrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdstate = type { i32, i32, i32, i32, %struct.TYPE_2__*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i8, i32 }

@tUNUMBER = common dso_local global i8 0, align 1
@tAMPM = common dso_local global i8 0, align 1
@tPM = common dso_local global i32 0, align 4
@DSToff = common dso_local global i8* null, align 8
@HOUR = common dso_local global i32 0, align 4
@MINUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdstate*)* @timephrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timephrase(%struct.gdstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdstate*, align 8
  store %struct.gdstate* %0, %struct.gdstate** %3, align 8
  %4 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %5 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @tUNUMBER, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %1
  %15 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %16 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 4
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 58
  br i1 %22, label %23, label %87

23:                                               ; preds = %14
  %24 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %25 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @tUNUMBER, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %23
  %35 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %36 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 4
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 58
  br i1 %42, label %43, label %87

43:                                               ; preds = %34
  %44 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %45 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 4
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @tUNUMBER, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %43
  %55 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %56 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %60 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %66 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %68 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %74 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %76 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %82 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %84 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 5
  store %struct.TYPE_2__* %86, %struct.TYPE_2__** %84, align 8
  br label %191

87:                                               ; preds = %43, %34, %23, %14, %1
  %88 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %89 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %88, i32 0, i32 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8, i8* %92, align 4
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* @tUNUMBER, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %145

98:                                               ; preds = %87
  %99 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %100 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %99, i32 0, i32 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 4
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 58
  br i1 %106, label %107, label %145

107:                                              ; preds = %98
  %108 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %109 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %108, i32 0, i32 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i8, i8* %112, align 4
  %114 = sext i8 %113 to i32
  %115 = load i8, i8* @tUNUMBER, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %107
  %119 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %120 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %124 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %123, i32 0, i32 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %130 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %132 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %131, i32 0, i32 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %138 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %140 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %139, i32 0, i32 2
  store i32 0, i32* %140, align 8
  %141 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %142 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %141, i32 0, i32 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 3
  store %struct.TYPE_2__* %144, %struct.TYPE_2__** %142, align 8
  br label %190

145:                                              ; preds = %107, %98, %87
  %146 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %147 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %146, i32 0, i32 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i8, i8* %150, align 4
  %152 = sext i8 %151 to i32
  %153 = load i8, i8* @tUNUMBER, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %188

156:                                              ; preds = %145
  %157 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %158 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %157, i32 0, i32 4
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 4
  %163 = sext i8 %162 to i32
  %164 = load i8, i8* @tAMPM, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %188

167:                                              ; preds = %156
  %168 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %169 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %173 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %172, i32 0, i32 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %179 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %181 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %180, i32 0, i32 2
  store i32 0, i32* %181, align 8
  %182 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %183 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %182, i32 0, i32 1
  store i32 0, i32* %183, align 4
  %184 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %185 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %184, i32 0, i32 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 1
  store %struct.TYPE_2__* %187, %struct.TYPE_2__** %185, align 8
  br label %189

188:                                              ; preds = %156, %145
  store i32 0, i32* %2, align 4
  br label %337

189:                                              ; preds = %167
  br label %190

190:                                              ; preds = %189, %118
  br label %191

191:                                              ; preds = %190, %54
  %192 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %193 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %192, i32 0, i32 4
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i8, i8* %196, align 4
  %198 = sext i8 %197 to i32
  %199 = load i8, i8* @tAMPM, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %229

202:                                              ; preds = %191
  %203 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %204 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 12
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %209 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %202
  %211 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %212 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %211, i32 0, i32 4
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @tPM, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %210
  %220 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %221 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 12
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %219, %210
  %225 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %226 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %225, i32 0, i32 4
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i64 1
  store %struct.TYPE_2__* %228, %struct.TYPE_2__** %226, align 8
  br label %229

229:                                              ; preds = %224, %191
  %230 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %231 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %230, i32 0, i32 4
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i8, i8* %234, align 4
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 43
  br i1 %237, label %238, label %283

238:                                              ; preds = %229
  %239 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %240 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %239, i32 0, i32 4
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i64 1
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i8, i8* %243, align 4
  %245 = sext i8 %244 to i32
  %246 = load i8, i8* @tUNUMBER, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %249, label %283

249:                                              ; preds = %238
  %250 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %251 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 8
  %254 = load i8*, i8** @DSToff, align 8
  %255 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %256 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %255, i32 0, i32 5
  store i8* %254, i8** %256, align 8
  %257 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %258 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %257, i32 0, i32 4
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 1
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sdiv i32 %262, 100
  %264 = load i32, i32* @HOUR, align 4
  %265 = mul nsw i32 %263, %264
  %266 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %267 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %266, i32 0, i32 4
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i64 1
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = srem i32 %271, 100
  %273 = load i32, i32* @MINUTE, align 4
  %274 = mul nsw i32 %272, %273
  %275 = add nsw i32 %265, %274
  %276 = sub nsw i32 0, %275
  %277 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %278 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 4
  %279 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %280 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %279, i32 0, i32 4
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i64 2
  store %struct.TYPE_2__* %282, %struct.TYPE_2__** %280, align 8
  br label %283

283:                                              ; preds = %249, %238, %229
  %284 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %285 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %284, i32 0, i32 4
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load i8, i8* %288, align 4
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 45
  br i1 %291, label %292, label %336

292:                                              ; preds = %283
  %293 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %294 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %293, i32 0, i32 4
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i64 1
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i8, i8* %297, align 4
  %299 = sext i8 %298 to i32
  %300 = load i8, i8* @tUNUMBER, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %299, %301
  br i1 %302, label %303, label %336

303:                                              ; preds = %292
  %304 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %305 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 8
  %308 = load i8*, i8** @DSToff, align 8
  %309 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %310 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %309, i32 0, i32 5
  store i8* %308, i8** %310, align 8
  %311 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %312 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %311, i32 0, i32 4
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i64 1
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = sdiv i32 %316, 100
  %318 = load i32, i32* @HOUR, align 4
  %319 = mul nsw i32 %317, %318
  %320 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %321 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %320, i32 0, i32 4
  %322 = load %struct.TYPE_2__*, %struct.TYPE_2__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i64 1
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = srem i32 %325, 100
  %327 = load i32, i32* @MINUTE, align 4
  %328 = mul nsw i32 %326, %327
  %329 = add nsw i32 %319, %328
  %330 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %331 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %330, i32 0, i32 3
  store i32 %329, i32* %331, align 4
  %332 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %333 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %332, i32 0, i32 4
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i64 2
  store %struct.TYPE_2__* %335, %struct.TYPE_2__** %333, align 8
  br label %336

336:                                              ; preds = %303, %292, %283
  store i32 1, i32* %2, align 4
  br label %337

337:                                              ; preds = %336, %188
  %338 = load i32, i32* %2, align 4
  ret i32 %338
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
