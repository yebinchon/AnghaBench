; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_trace_upslot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_trace_upslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_entry = type { i64, i32, %struct.rt_spare*, i32, i32 }
%struct.rt_spare = type { i64, i64, i64, i64, i64, i64, i64 }

@TRACEACTIONS = common dso_local global i32 0, align 4
@ftrace = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Del #%d %-35s \00", align 1
@RIP_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Chg #%d %-35s \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0A       %19s%-16s \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Add #%d %-35s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_upslot(%struct.rt_entry* %0, %struct.rt_spare* %1, %struct.rt_spare* %2) #0 {
  %4 = alloca %struct.rt_entry*, align 8
  %5 = alloca %struct.rt_spare*, align 8
  %6 = alloca %struct.rt_spare*, align 8
  store %struct.rt_entry* %0, %struct.rt_entry** %4, align 8
  store %struct.rt_spare* %1, %struct.rt_spare** %5, align 8
  store %struct.rt_spare* %2, %struct.rt_spare** %6, align 8
  %7 = load i32, i32* @TRACEACTIONS, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32*, i32** @ftrace, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %3
  br label %281

13:                                               ; preds = %9
  %14 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %15 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %18 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %13
  %22 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %23 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %26 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %21
  %30 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %31 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %34 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %39 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %42 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %47 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %50 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %281

54:                                               ; preds = %45, %37, %29, %21, %13
  %55 = call i32 (...) @lastlog()
  %56 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %57 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %54
  %61 = load i32*, i32** @ftrace, align 8
  %62 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %63 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %64 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %63, i32 0, i32 2
  %65 = load %struct.rt_spare*, %struct.rt_spare** %64, align 8
  %66 = ptrtoint %struct.rt_spare* %62 to i64
  %67 = ptrtoint %struct.rt_spare* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 56
  %70 = trunc i64 %69 to i32
  %71 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %72 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %75 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %78 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @rtname(i32 %73, i32 %76, i64 %79)
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %70, i8* %80)
  %82 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %83 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %84 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %85 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %84, i32 0, i32 2
  %86 = load %struct.rt_spare*, %struct.rt_spare** %85, align 8
  %87 = icmp ne %struct.rt_spare* %83, %86
  br i1 %87, label %97, label %88

88:                                               ; preds = %60
  %89 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %90 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %93 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @AGE_RT(i32 %91, i64 %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %88, %60
  %98 = phi i1 [ true, %60 ], [ %96, %88 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @print_rts(%struct.rt_spare* %82, i32 0, i32 0, i32 0, i32 0, i32 %99)
  br label %278

101:                                              ; preds = %54
  %102 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %103 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RIP_DEFAULT, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %236

107:                                              ; preds = %101
  %108 = load i32*, i32** @ftrace, align 8
  %109 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %110 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %111 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %110, i32 0, i32 2
  %112 = load %struct.rt_spare*, %struct.rt_spare** %111, align 8
  %113 = ptrtoint %struct.rt_spare* %109 to i64
  %114 = ptrtoint %struct.rt_spare* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 56
  %117 = trunc i64 %116 to i32
  %118 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %119 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %122 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %125 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @rtname(i32 %120, i32 %123, i64 %126)
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %117, i8* %127)
  %129 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %130 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %131 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %134 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  %137 = zext i1 %136 to i32
  %138 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %139 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %142 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  %145 = zext i1 %144 to i32
  %146 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %147 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %148 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %147, i32 0, i32 2
  %149 = load %struct.rt_spare*, %struct.rt_spare** %148, align 8
  %150 = icmp ne %struct.rt_spare* %146, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %107
  %152 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %153 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %156 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @AGE_RT(i32 %154, i64 %157)
  %159 = icmp ne i64 %158, 0
  br label %160

160:                                              ; preds = %151, %107
  %161 = phi i1 [ true, %107 ], [ %159, %151 ]
  %162 = zext i1 %161 to i32
  %163 = call i32 @print_rts(%struct.rt_spare* %129, i32 0, i32 0, i32 %137, i32 %145, i32 %162)
  %164 = load i32*, i32** @ftrace, align 8
  %165 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %166 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %169 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %160
  %173 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %174 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i8* @naddr_ntoa(i64 %175)
  br label %178

177:                                              ; preds = %160
  br label %178

178:                                              ; preds = %177, %172
  %179 = phi i8* [ %176, %172 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %177 ]
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %179)
  %181 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %182 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %183 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %186 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %184, %187
  %189 = zext i1 %188 to i32
  %190 = sub nsw i32 0, %189
  %191 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %192 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %195 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  %198 = zext i1 %197 to i32
  %199 = sub nsw i32 0, %198
  %200 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %201 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %204 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %202, %205
  %207 = zext i1 %206 to i32
  %208 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %209 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %212 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %210, %213
  br i1 %214, label %215, label %232

215:                                              ; preds = %178
  %216 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %217 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %218 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %217, i32 0, i32 2
  %219 = load %struct.rt_spare*, %struct.rt_spare** %218, align 8
  %220 = icmp ne %struct.rt_spare* %216, %219
  br i1 %220, label %230, label %221

221:                                              ; preds = %215
  %222 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %223 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %226 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @AGE_RT(i32 %224, i64 %227)
  %229 = icmp ne i64 %228, 0
  br label %230

230:                                              ; preds = %221, %215
  %231 = phi i1 [ true, %215 ], [ %229, %221 ]
  br label %232

232:                                              ; preds = %230, %178
  %233 = phi i1 [ false, %178 ], [ %231, %230 ]
  %234 = zext i1 %233 to i32
  %235 = call i32 @print_rts(%struct.rt_spare* %181, i32 %190, i32 %199, i32 0, i32 %207, i32 %234)
  br label %277

236:                                              ; preds = %101
  %237 = load i32*, i32** @ftrace, align 8
  %238 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %239 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %240 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %239, i32 0, i32 2
  %241 = load %struct.rt_spare*, %struct.rt_spare** %240, align 8
  %242 = ptrtoint %struct.rt_spare* %238 to i64
  %243 = ptrtoint %struct.rt_spare* %241 to i64
  %244 = sub i64 %242, %243
  %245 = sdiv exact i64 %244, 56
  %246 = trunc i64 %245 to i32
  %247 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %248 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %251 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %254 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i8* @rtname(i32 %249, i32 %252, i64 %255)
  %257 = call i32 (i32*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %246, i8* %256)
  %258 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %259 = load %struct.rt_spare*, %struct.rt_spare** %5, align 8
  %260 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %261 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %260, i32 0, i32 2
  %262 = load %struct.rt_spare*, %struct.rt_spare** %261, align 8
  %263 = icmp ne %struct.rt_spare* %259, %262
  br i1 %263, label %273, label %264

264:                                              ; preds = %236
  %265 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %266 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.rt_spare*, %struct.rt_spare** %6, align 8
  %269 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = call i64 @AGE_RT(i32 %267, i64 %270)
  %272 = icmp ne i64 %271, 0
  br label %273

273:                                              ; preds = %264, %236
  %274 = phi i1 [ true, %236 ], [ %272, %264 ]
  %275 = zext i1 %274 to i32
  %276 = call i32 @print_rts(%struct.rt_spare* %258, i32 0, i32 0, i32 0, i32 0, i32 %275)
  br label %277

277:                                              ; preds = %273, %232
  br label %278

278:                                              ; preds = %277, %97
  %279 = load i32*, i32** @ftrace, align 8
  %280 = call i32 @fputc(i8 signext 10, i32* %279)
  br label %281

281:                                              ; preds = %278, %53, %12
  ret void
}

declare dso_local i32 @lastlog(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @rtname(i32, i32, i64) #1

declare dso_local i32 @print_rts(%struct.rt_spare*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @AGE_RT(i32, i64) #1

declare dso_local i8* @naddr_ntoa(i64) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
