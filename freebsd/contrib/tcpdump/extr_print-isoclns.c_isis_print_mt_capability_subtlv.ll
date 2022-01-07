; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_mt_capability_subtlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_mt_capability_subtlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"\0A\09      %s subTLV #%u, length: %u\00", align 1
@isis_mt_capability_subtlv_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ISIS_SUBTLV_SPB_INSTANCE_MIN_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\0A\09        CIST Root-ID: %08x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c", Path Cost: %08x\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c", Prio: %d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0A\09        RES: %d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c", V: %d\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c", SPSource-ID: %d\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c", No of Trees: %x\00", align 1
@ISIS_SUBTLV_SPB_INSTANCE_VLAN_TUPLE_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"\0A\09         U:%d, M:%d, A:%d, RES:%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c", ECT: %08x\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c", BVID: %d, SPVID: %d\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0A\09        BMAC: %08x\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c", RES: %d, VID: %d\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"\0A\09        T: %d, R: %d, RES: %d, ISID: %d\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @isis_print_mt_capability_subtlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isis_print_mt_capability_subtlv(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %251, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %259

14:                                               ; preds = %11
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ND_TCHECK2(i32 %16, i32 2)
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @isis_mt_capability_subtlv_values, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @tok2str(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @ND_PRINT(i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %14
  br label %260

39:                                               ; preds = %14
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ND_TCHECK2(i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %250 [
    i32 128, label %45
    i32 129, label %181
  ]

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ISIS_SUBTLV_SPB_INSTANCE_MIN_LEN, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %260

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @EXTRACT_32BITS(i32* %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @ND_PRINT(i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @EXTRACT_32BITS(i32* %60)
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @ND_PRINT(i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @EXTRACT_32BITS(i32* %68)
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32 @ND_PRINT(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @EXTRACT_16BITS(i32* %76)
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  %80 = call i32 @ND_PRINT(i32* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32* %82, i32** %6, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @EXTRACT_16BITS(i32* %84)
  %86 = ashr i32 %85, 5
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i32*
  %89 = call i32 @ND_PRINT(i32* %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @EXTRACT_16BITS(i32* %91)
  %93 = ashr i32 %92, 4
  %94 = and i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 @ND_PRINT(i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @EXTRACT_32BITS(i32* %99)
  %101 = and i32 %100, 1048575
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @ND_PRINT(i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32* %106, i32** %6, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i32*
  %112 = call i32 @ND_PRINT(i32* %111)
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %6, align 8
  %115 = load i32, i32* %113, align 4
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @ISIS_SUBTLV_SPB_INSTANCE_MIN_LEN, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @ISIS_SUBTLV_SPB_INSTANCE_MIN_LEN, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %130, %50
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %180

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @ISIS_SUBTLV_SPB_INSTANCE_VLAN_TUPLE_LEN, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %260

130:                                              ; preds = %125
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 7
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 6
  %138 = and i32 %137, 1
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 5
  %142 = and i32 %141, 1
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 31
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i32*
  %148 = call i32 @ND_PRINT(i32* %147)
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %6, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @EXTRACT_32BITS(i32* %152)
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i32*
  %156 = call i32 @ND_PRINT(i32* %155)
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  store i32* %158, i32** %6, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @EXTRACT_24BITS(i32* %160)
  %162 = ashr i32 %161, 12
  %163 = and i32 %162, 4095
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @EXTRACT_24BITS(i32* %164)
  %166 = and i32 %165, 4095
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i32*
  %169 = call i32 @ND_PRINT(i32* %168)
  %170 = load i32*, i32** %6, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  store i32* %171, i32** %6, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @ISIS_SUBTLV_SPB_INSTANCE_VLAN_TUPLE_LEN, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @ISIS_SUBTLV_SPB_INSTANCE_VLAN_TUPLE_LEN, align 4
  %177 = sub nsw i32 %175, %176
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %10, align 4
  br label %122

180:                                              ; preds = %122
  br label %251

181:                                              ; preds = %39
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 8
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %260

185:                                              ; preds = %181
  %186 = load i32*, i32** %5, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @EXTRACT_32BITS(i32* %187)
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i32*
  %191 = call i32 @ND_PRINT(i32* %190)
  %192 = load i32*, i32** %6, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 4
  store i32* %193, i32** %6, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @EXTRACT_16BITS(i32* %195)
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i32*
  %199 = call i32 @ND_PRINT(i32* %198)
  %200 = load i32*, i32** %6, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32* %201, i32** %6, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = load i32*, i32** %6, align 8
  %204 = call i32 @EXTRACT_16BITS(i32* %203)
  %205 = ashr i32 %204, 12
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @EXTRACT_16BITS(i32* %206)
  %208 = and i32 %207, 4095
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i32*
  %211 = call i32 @ND_PRINT(i32* %210)
  %212 = load i32*, i32** %6, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  store i32* %213, i32** %6, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sub nsw i32 %214, 8
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %9, align 4
  %217 = sub nsw i32 %216, 8
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %221, %185
  %219 = load i32, i32* %9, align 4
  %220 = icmp sge i32 %219, 4
  br i1 %220, label %221, label %249

221:                                              ; preds = %218
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ND_TCHECK2(i32 %223, i32 4)
  %225 = load i32*, i32** %5, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = call i32 @EXTRACT_32BITS(i32* %226)
  %228 = ashr i32 %227, 31
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @EXTRACT_32BITS(i32* %229)
  %231 = ashr i32 %230, 30
  %232 = and i32 %231, 1
  %233 = load i32*, i32** %6, align 8
  %234 = call i32 @EXTRACT_32BITS(i32* %233)
  %235 = ashr i32 %234, 24
  %236 = and i32 %235, 63
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @EXTRACT_32BITS(i32* %237)
  %239 = and i32 %238, 16777215
  %240 = sext i32 %239 to i64
  %241 = inttoptr i64 %240 to i32*
  %242 = call i32 @ND_PRINT(i32* %241)
  %243 = load i32*, i32** %6, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 4
  store i32* %244, i32** %6, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sub nsw i32 %245, 4
  store i32 %246, i32* %7, align 4
  %247 = load i32, i32* %9, align 4
  %248 = sub nsw i32 %247, 4
  store i32 %248, i32* %9, align 4
  br label %218

249:                                              ; preds = %218
  br label %251

250:                                              ; preds = %39
  br label %251

251:                                              ; preds = %250, %249, %180
  %252 = load i32, i32* %9, align 4
  %253 = load i32*, i32** %6, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32* %255, i32** %6, align 8
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %7, align 4
  %258 = sub nsw i32 %257, %256
  store i32 %258, i32* %7, align 4
  br label %11

259:                                              ; preds = %11
  store i32 0, i32* %4, align 4
  br label %268

260:                                              ; preds = %184, %129, %49, %38
  %261 = load i32*, i32** %5, align 8
  %262 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.17 to i32*))
  %263 = load i32*, i32** %5, align 8
  %264 = load i32, i32* @tstr, align 4
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i32*
  %267 = call i32 @ND_PRINT(i32* %266)
  store i32 1, i32* %4, align 4
  br label %268

268:                                              ; preds = %260, %259
  %269 = load i32, i32* %4, align 4
  ret i32 %269
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
