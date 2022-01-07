; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_handle_pap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_handle_pap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"[|pap]\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[|pap 0x%02x]\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PAP, %s (0x%02x)\00", align 1
@papcode_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c", id %u\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c", length %u > packet size\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c", length %u < PAP header length\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c", Peer \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c", Name \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c", Msg \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @handle_pap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pap(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  br label %266

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TCHECK(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @ND_PRINT(i32* %31)
  br label %266

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ND_TCHECK(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @papcode_values, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @tok2str(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @ND_PRINT(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ND_TCHECK(i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ND_TCHECK2(i32 %62, i32 2)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @EXTRACT_16BITS(i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32* %67, i32** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %34
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @ND_PRINT(i32* %75)
  br label %266

77:                                               ; preds = %34
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = icmp slt i64 %80, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i32*
  %93 = call i32 @ND_PRINT(i32* %92)
  br label %266

94:                                               ; preds = %77
  %95 = load i32, i32* %7, align 4
  switch i32 %95, label %262 [
    i32 128, label %96
    i32 130, label %205
    i32 129, label %205
  ]

96:                                               ; preds = %94
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 6
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %263

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = sub nsw i64 %102, %108
  %110 = icmp slt i64 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %266

112:                                              ; preds = %100
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ND_TCHECK(i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %9, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = load i32*, i32** %5, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = ptrtoint i32* %122 to i64
  %125 = ptrtoint i32* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  %128 = sub nsw i64 %121, %127
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %112
  br label %266

133:                                              ; preds = %112
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.7 to i32*))
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %149, %133
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %136
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ND_TCHECK(i32 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %5, align 8
  %147 = load i32, i32* %145, align 4
  %148 = call i32 @safeputchar(i32* %144, i32 %147)
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %136

152:                                              ; preds = %136
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = load i32*, i32** %5, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = ptrtoint i32* %155 to i64
  %158 = ptrtoint i32* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 4
  %161 = sub nsw i64 %154, %160
  %162 = icmp slt i64 %161, 1
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  br label %266

164:                                              ; preds = %152
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ND_TCHECK(i32 %166)
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %10, align 4
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = load i32*, i32** %5, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = ptrtoint i32* %174 to i64
  %177 = ptrtoint i32* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 4
  %180 = sub nsw i64 %173, %179
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %180, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %164
  br label %266

185:                                              ; preds = %164
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.8 to i32*))
  store i32 0, i32* %13, align 4
  br label %188

188:                                              ; preds = %201, %185
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @ND_TCHECK(i32 %194)
  %196 = load i32*, i32** %4, align 8
  %197 = load i32*, i32** %5, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %5, align 8
  %199 = load i32, i32* %197, align 4
  %200 = call i32 @safeputchar(i32* %196, i32 %199)
  br label %201

201:                                              ; preds = %192
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %188

204:                                              ; preds = %188
  br label %262

205:                                              ; preds = %94, %94
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %206, 5
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %263

209:                                              ; preds = %205
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = load i32*, i32** %5, align 8
  %213 = load i32*, i32** %12, align 8
  %214 = ptrtoint i32* %212 to i64
  %215 = ptrtoint i32* %213 to i64
  %216 = sub i64 %214, %215
  %217 = sdiv exact i64 %216, 4
  %218 = sub nsw i64 %211, %217
  %219 = icmp slt i64 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %209
  br label %266

221:                                              ; preds = %209
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ND_TCHECK(i32 %223)
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %11, align 4
  %227 = load i32*, i32** %5, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %5, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = load i32*, i32** %5, align 8
  %232 = load i32*, i32** %12, align 8
  %233 = ptrtoint i32* %231 to i64
  %234 = ptrtoint i32* %232 to i64
  %235 = sub i64 %233, %234
  %236 = sdiv exact i64 %235, 4
  %237 = sub nsw i64 %230, %236
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %237, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %221
  br label %266

242:                                              ; preds = %221
  %243 = load i32*, i32** %4, align 8
  %244 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.9 to i32*))
  store i32 0, i32* %13, align 4
  br label %245

245:                                              ; preds = %258, %242
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %245
  %250 = load i32*, i32** %5, align 8
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @ND_TCHECK(i32 %251)
  %253 = load i32*, i32** %4, align 8
  %254 = load i32*, i32** %5, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %5, align 8
  %256 = load i32, i32* %254, align 4
  %257 = call i32 @safeputchar(i32* %253, i32 %256)
  br label %258

258:                                              ; preds = %249
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %13, align 4
  br label %245

261:                                              ; preds = %245
  br label %262

262:                                              ; preds = %94, %261, %204
  br label %266

263:                                              ; preds = %208, %99
  %264 = load i32*, i32** %4, align 8
  %265 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  br label %266

266:                                              ; preds = %263, %262, %241, %220, %184, %163, %132, %111, %88, %71, %23, %17
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @safeputchar(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
