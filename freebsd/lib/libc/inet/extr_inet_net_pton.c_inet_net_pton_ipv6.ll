; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_net_pton.c_inet_net_pton_ipv6.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_net_pton.c_inet_net_pton_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_net_pton_ipv6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@inet_net_pton_ipv6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64)* @inet_net_pton_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_net_pton_ipv6(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %27 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  store i32* %30, i32** %10, align 8
  %31 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %32 = call i32 @memset(i32* %30, i8 signext 0, i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %49

41:                                               ; preds = %3
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 58
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %254

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i8*, i8** %5, align 8
  store i8* %50, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %22, align 4
  br label %51

51:                                               ; preds = %112, %95, %83, %49
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  store i32 %55, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %151

57:                                               ; preds = %51
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_net_pton_ipv6.xdigits_l, i64 0, i64 0), i8** %13, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_net_pton_ipv6.xdigits_l, i64 0, i64 0), i32 %58)
  store i8* %59, i8** %23, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_net_pton_ipv6.xdigits_u, i64 0, i64 0), i8** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_net_pton_ipv6.xdigits_u, i64 0, i64 0), i32 %62)
  store i8* %63, i8** %23, align 8
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i8*, i8** %23, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = shl i32 %68, 4
  store i32 %69, i32* %17, align 4
  %70 = load i8*, i8** %23, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = or i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  %81 = icmp sgt i32 %80, 4
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %254

83:                                               ; preds = %67
  store i32 1, i32* %16, align 4
  br label %51

84:                                               ; preds = %64
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 58
  br i1 %86, label %87, label %122

87:                                               ; preds = %84
  %88 = load i8*, i8** %5, align 8
  store i8* %88, i8** %14, align 8
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %12, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %254

95:                                               ; preds = %91
  %96 = load i32*, i32** %10, align 8
  store i32* %96, i32** %12, align 8
  br label %51

97:                                               ; preds = %87
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %254

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* @NS_INT16SZ, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32*, i32** %11, align 8
  %110 = icmp ugt i32* %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %258

112:                                              ; preds = %104
  %113 = load i32, i32* %17, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  %118 = load i32, i32* %17, align 4
  %119 = and i32 %118, 255
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %51

122:                                              ; preds = %84
  %123 = load i32, i32* %15, align 4
  %124 = icmp eq i32 %123, 46
  br i1 %124, label %125, label %142

125:                                              ; preds = %122
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* @NS_INADDRSZ, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32*, i32** %11, align 8
  %131 = icmp ule i32* %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %125
  %133 = load i8*, i8** %14, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = call i64 @getv4(i8* %133, i32* %134, i32* %19)
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* @NS_INADDRSZ, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %10, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %22, align 4
  br label %151

142:                                              ; preds = %132, %125, %122
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %143, 47
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i8*, i8** %5, align 8
  %147 = call i64 @getbits(i8* %146, i32* %19)
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %151

150:                                              ; preds = %145, %142
  br label %254

151:                                              ; preds = %149, %137, %51
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %151
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* @NS_INT16SZ, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32*, i32** %11, align 8
  %160 = icmp ugt i32* %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %254

162:                                              ; preds = %154
  %163 = load i32, i32* %17, align 4
  %164 = ashr i32 %163, 8
  %165 = and i32 %164, 255
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  %168 = load i32, i32* %17, align 4
  %169 = and i32 %168, 255
  %170 = load i32*, i32** %10, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %10, align 8
  store i32 %169, i32* %170, align 4
  br label %172

172:                                              ; preds = %162, %151
  %173 = load i32, i32* %19, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 128, i32* %19, align 4
  br label %176

176:                                              ; preds = %175, %172
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 15
  %179 = sdiv i32 %178, 16
  store i32 %179, i32* %21, align 4
  %180 = load i32, i32* %21, align 4
  %181 = icmp slt i32 %180, 2
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 2, i32* %21, align 4
  br label %183

183:                                              ; preds = %182, %176
  %184 = load i32, i32* %22, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 8, i32* %21, align 4
  br label %187

187:                                              ; preds = %186, %183
  %188 = load i32, i32* %21, align 4
  %189 = mul nsw i32 2, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %30, i64 %190
  store i32* %191, i32** %11, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %235

194:                                              ; preds = %187
  %195 = load i32*, i32** %10, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = ptrtoint i32* %195 to i64
  %198 = ptrtoint i32* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 4
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %25, align 4
  %202 = load i32*, i32** %10, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = icmp eq i32* %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %194
  br label %254

206:                                              ; preds = %194
  store i32 1, i32* %26, align 4
  br label %207

207:                                              ; preds = %230, %206
  %208 = load i32, i32* %26, align 4
  %209 = load i32, i32* %25, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %233

211:                                              ; preds = %207
  %212 = load i32*, i32** %12, align 8
  %213 = load i32, i32* %25, align 4
  %214 = load i32, i32* %26, align 4
  %215 = sub nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %26, align 4
  %221 = sub nsw i32 0, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %218, i32* %223, align 4
  %224 = load i32*, i32** %12, align 8
  %225 = load i32, i32* %25, align 4
  %226 = load i32, i32* %26, align 4
  %227 = sub nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  store i32 0, i32* %229, align 4
  br label %230

230:                                              ; preds = %211
  %231 = load i32, i32* %26, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %26, align 4
  br label %207

233:                                              ; preds = %207
  %234 = load i32*, i32** %11, align 8
  store i32* %234, i32** %10, align 8
  br label %235

235:                                              ; preds = %233, %187
  %236 = load i32*, i32** %10, align 8
  %237 = load i32*, i32** %11, align 8
  %238 = icmp ne i32* %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  br label %254

240:                                              ; preds = %235
  %241 = load i32, i32* %19, align 4
  %242 = add nsw i32 %241, 7
  %243 = sdiv i32 %242, 8
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %20, align 8
  %245 = load i64, i64* %20, align 8
  %246 = load i64, i64* %7, align 8
  %247 = icmp ugt i64 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  br label %256

249:                                              ; preds = %240
  %250 = load i32*, i32** %6, align 8
  %251 = load i64, i64* %20, align 8
  %252 = call i32 @memcpy(i32* %250, i32* %30, i64 %251)
  %253 = load i32, i32* %19, align 4
  store i32 %253, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %258

254:                                              ; preds = %239, %205, %161, %150, %102, %94, %82, %47
  %255 = load i32, i32* @ENOENT, align 4
  store i32 %255, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %258

256:                                              ; preds = %248
  %257 = load i32, i32* @EMSGSIZE, align 4
  store i32 %257, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %258

258:                                              ; preds = %256, %254, %249, %111
  %259 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %259)
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i64 @getv4(i8*, i32*, i32*) #2

declare dso_local i64 @getbits(i8*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
