; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_key = type { i32, i32*, i32, i32*, i64, i64, i64 }
%struct.g_bde_softc = type { i64 }

@G_BDE_LOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"g_bde_keyloc_encrypt()\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GBDE_F_SECT0 = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"No -L option and no space in sector 0 for lockfile\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"programming error encoding lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_key*, %struct.g_bde_softc*, i32, i32, i8*)* @cmd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_write(%struct.g_bde_key* %0, %struct.g_bde_softc* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.g_bde_key*, align 8
  %7 = alloca %struct.g_bde_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.g_bde_key* %0, %struct.g_bde_key** %6, align 8
  store %struct.g_bde_softc* %1, %struct.g_bde_softc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %19 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %20 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @malloc(i32 %21)
  store i32* %22, i32** %15, align 8
  br label %23

23:                                               ; preds = %41, %5
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %25 = call i32 @random_bits(i32* %24, i32 8)
  %26 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %27 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @G_BDE_LOCKSIZE, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %38 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %23

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %45 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %52 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = xor i32 %54, -1
  %56 = and i32 %50, %55
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %63 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.g_bde_softc*, %struct.g_bde_softc** %7, align 8
  %69 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %76 = call i32 @g_bde_keyloc_encrypt(i64 %70, i32 %72, i32 %74, i32* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %43
  %80 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %43
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* @O_WRONLY, align 4
  %87 = load i32, i32* @O_CREAT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @O_TRUNC, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @open(i8* %85, i32 %90, i32 384)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %84
  %98 = load i32, i32* %12, align 4
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %100 = call i32 @write(i32 %98, i32* %99, i32 64)
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @close(i32 %101)
  br label %165

103:                                              ; preds = %81
  %104 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %105 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @GBDE_F_SECT0, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %162

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @SEEK_SET, align 4
  %113 = call i32 @lseek(i32 %111, i32 0, i32 %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %110
  %119 = load i32, i32* %8, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %122 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @read(i32 %119, i32* %120, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %127 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %118
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %9, align 4
  %135 = mul nsw i32 %134, 16
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %139 = call i32 @memcpy(i32* %137, i32* %138, i32 64)
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @SEEK_SET, align 4
  %142 = call i32 @lseek(i32 %140, i32 0, i32 %141)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %132
  %146 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %132
  %148 = load i32, i32* %8, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %151 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @write(i32 %148, i32* %149, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %156 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %154, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %147
  %160 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %147
  br label %164

162:                                              ; preds = %103
  %163 = call i32 @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %161
  br label %165

165:                                              ; preds = %164, %97
  %166 = load i32*, i32** %15, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i32*, i32** %15, align 8
  %172 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %173 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @random_bits(i32* %171, i32 %174)
  %176 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %177 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @random_bits(i32* %178, i32 8)
  %180 = load i32*, i32** %15, align 8
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %184 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = srem i32 %182, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %180, i64 %187
  store i32* %188, i32** %16, align 8
  %189 = load %struct.g_bde_softc*, %struct.g_bde_softc** %7, align 8
  %190 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %193 = load i32*, i32** %16, align 8
  %194 = call i32 @g_bde_encode_lock(i64 %191, %struct.g_bde_key* %192, i32* %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %170
  %198 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %170
  %200 = load i32*, i32** %16, align 8
  %201 = load i32, i32* @G_BDE_LOCKSIZE, align 4
  %202 = load %struct.g_bde_softc*, %struct.g_bde_softc** %7, align 8
  %203 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 16
  %206 = call i32 @encrypt_sector(i32* %200, i32 %201, i32 256, i64 %205)
  %207 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %208 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %215 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sub nsw i32 %216, 1
  %218 = xor i32 %217, -1
  %219 = and i32 %213, %218
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* @SEEK_SET, align 4
  %223 = call i32 @lseek(i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %199
  %228 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %199
  %230 = load i32, i32* %8, align 4
  %231 = load i32*, i32** %15, align 8
  %232 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %233 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @write(i32 %230, i32* %231, i32 %234)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %238 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %236, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %229
  %242 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %229
  %244 = load i32*, i32** %15, align 8
  %245 = call i32 @free(i32* %244)
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @random_bits(i32*, i32) #1

declare dso_local i32 @g_bde_keyloc_encrypt(i64, i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @g_bde_encode_lock(i64, %struct.g_bde_key*, i32*) #1

declare dso_local i32 @encrypt_sector(i32*, i32, i32, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
