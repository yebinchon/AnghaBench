; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_crc16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@__const.lha_crc16.u = private unnamed_addr constant %union.anon { i32 16909060 }, align 4
@crc16tbl = common dso_local global i32** null, align 8
@CRC16W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @lha_crc16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_crc16(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.anon, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = bitcast %union.anon* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%union.anon* @__const.lha_crc16.u to i8*), i64 4, i1 false)
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %4, align 4
  br label %243

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 %19, 1
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = load i32**, i32*** @crc16tbl, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %28, %32
  %34 = and i32 %33, 255
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %27, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %24, %37
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %22, %17
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %9, align 8
  br label %44

44:                                               ; preds = %212, %41
  %45 = load i64, i64* %7, align 8
  %46 = icmp uge i64 %45, 8
  br i1 %46, label %47, label %215

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47
  %49 = bitcast %union.anon* %10 to [4 x i8]*
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %49, i64 0, i64 0
  %51 = load i8, i8* %50, align 4
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = trunc i32 %56 to i16
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %59 = zext i16 %58 to i32
  %60 = load i32, i32* %5, align 4
  %61 = xor i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %9, align 8
  br label %70

64:                                               ; preds = %48
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32, i32* %5, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %54
  %71 = load i32**, i32*** @crc16tbl, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 255
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32**, i32*** @crc16tbl, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = ashr i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %78, %86
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88
  %90 = bitcast %union.anon* %10 to [4 x i8]*
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %90, i64 0, i64 0
  %92 = load i8, i8* %91, align 4
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = trunc i32 %97 to i16
  %99 = call i16 @llvm.bswap.i16(i16 %98)
  %100 = zext i16 %99 to i32
  %101 = load i32, i32* %5, align 4
  %102 = xor i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %9, align 8
  br label %111

105:                                              ; preds = %89
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %9, align 8
  %108 = load i32, i32* %106, align 4
  %109 = load i32, i32* %5, align 4
  %110 = xor i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %95
  %112 = load i32**, i32*** @crc16tbl, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, 255
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32**, i32*** @crc16tbl, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = ashr i32 %123, 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %119, %127
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %111
  br label %130

130:                                              ; preds = %129
  %131 = bitcast %union.anon* %10 to [4 x i8]*
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %131, i64 0, i64 0
  %133 = load i8, i8* %132, align 4
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = trunc i32 %138 to i16
  %140 = call i16 @llvm.bswap.i16(i16 %139)
  %141 = zext i16 %140 to i32
  %142 = load i32, i32* %5, align 4
  %143 = xor i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %9, align 8
  br label %152

146:                                              ; preds = %130
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %9, align 8
  %149 = load i32, i32* %147, align 4
  %150 = load i32, i32* %5, align 4
  %151 = xor i32 %150, %149
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %146, %136
  %153 = load i32**, i32*** @crc16tbl, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %156, 255
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32**, i32*** @crc16tbl, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = ashr i32 %164, 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = xor i32 %160, %168
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %152
  br label %171

171:                                              ; preds = %170
  %172 = bitcast %union.anon* %10 to [4 x i8]*
  %173 = getelementptr inbounds [4 x i8], [4 x i8]* %172, i64 0, i64 0
  %174 = load i8, i8* %173, align 4
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %187

177:                                              ; preds = %171
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %178, align 4
  %180 = trunc i32 %179 to i16
  %181 = call i16 @llvm.bswap.i16(i16 %180)
  %182 = zext i16 %181 to i32
  %183 = load i32, i32* %5, align 4
  %184 = xor i32 %183, %182
  store i32 %184, i32* %5, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %9, align 8
  br label %193

187:                                              ; preds = %171
  %188 = load i32*, i32** %9, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %9, align 8
  %190 = load i32, i32* %188, align 4
  %191 = load i32, i32* %5, align 4
  %192 = xor i32 %191, %190
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %187, %177
  %194 = load i32**, i32*** @crc16tbl, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = and i32 %197, 255
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32**, i32*** @crc16tbl, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = ashr i32 %205, 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = xor i32 %201, %209
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %193
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %7, align 8
  %214 = sub i64 %213, 8
  store i64 %214, i64* %7, align 8
  br label %44

215:                                              ; preds = %44
  %216 = load i32*, i32** %9, align 8
  %217 = bitcast i32* %216 to i8*
  store i8* %217, i8** %8, align 8
  br label %218

218:                                              ; preds = %238, %215
  %219 = load i64, i64* %7, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %241

221:                                              ; preds = %218
  %222 = load i32, i32* %5, align 4
  %223 = ashr i32 %222, 8
  %224 = load i32**, i32*** @crc16tbl, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = load i8*, i8** %8, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %8, align 8
  %230 = load i8, i8* %228, align 1
  %231 = zext i8 %230 to i32
  %232 = xor i32 %227, %231
  %233 = and i32 %232, 255
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %226, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = xor i32 %223, %236
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %221
  %239 = load i64, i64* %7, align 8
  %240 = add i64 %239, -1
  store i64 %240, i64* %7, align 8
  br label %218

241:                                              ; preds = %218
  %242 = load i32, i32* %5, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %241, %15
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
