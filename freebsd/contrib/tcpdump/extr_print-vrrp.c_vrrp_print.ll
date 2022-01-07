; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-vrrp.c_vrrp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-vrrp.c_vrrp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.cksum_vec = type { i32*, i32 }
%struct.ip = type { i32 }

@VRRP_AUTH_NONE = common dso_local global i32 0, align 4
@type2str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown type (%u)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"VRRPv%u, %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", (ttl %u)\00", align 1
@VRRP_TYPE_ADVERTISEMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c", vrid %u, prio %u\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c", authtype %s\00", align 1
@auth2str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c", intvl %us, length %u\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c", intvl %ucs, length %u\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c", (bad vrrp cksum %x)\00", align 1
@IPPROTO_VRRP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c", addrs\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@VRRP_AUTH_SIMPLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c" auth \22\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"[|vrrp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vrrp_print(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca [1 x %struct.cksum_vec], align 16
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* @VRRP_AUTH_NONE, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ND_TCHECK(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 240
  %30 = ashr i32 %29, 4
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @type2str, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i8* @tok2str(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i8* %37, i8** %14, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_7__*
  %42 = call i32 @ND_PRINT(%struct.TYPE_7__* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 255
  br i1 %44, label %45, label %51

45:                                               ; preds = %5
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_7__*
  %50 = call i32 @ND_PRINT(%struct.TYPE_7__* %49)
  br label %51

51:                                               ; preds = %45, %5
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @VRRP_TYPE_ADVERTISEMENT, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %54, %51
  br label %254

62:                                               ; preds = %57
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ND_TCHECK(i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_7__*
  %76 = call i32 @ND_PRINT(%struct.TYPE_7__* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ND_TCHECK(i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %101

83:                                               ; preds = %62
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %13, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = load i32, i32* @auth2str, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i8* @tok2str(i32 %88, i8* null, i32 %89)
  %91 = bitcast i8* %90 to %struct.TYPE_7__*
  %92 = call i32 @ND_PRINT(%struct.TYPE_7__* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.TYPE_7__*
  %100 = call i32 @ND_PRINT(%struct.TYPE_7__* %99)
  br label %117

101:                                              ; preds = %62
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 15
  %106 = shl i32 %105, 8
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %106, %109
  store i32 %110, i32* %15, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_7__*
  %116 = call i32 @ND_PRINT(%struct.TYPE_7__* %115)
  br label %117

117:                                              ; preds = %101, %83
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %250

122:                                              ; preds = %117
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %154

128:                                              ; preds = %122
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @ND_TTEST2(i32 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %128
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %19, i64 0, i64 0
  %138 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %137, i32 0, i32 0
  store i32* %136, i32** %138, align 16
  %139 = load i32, i32* %8, align 4
  %140 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %19, i64 0, i64 0
  %141 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %19, i64 0, i64 0
  %143 = call i64 @in_cksum(%struct.cksum_vec* %142, i32 1)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %135
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 6
  %149 = call i32 @EXTRACT_16BITS(i32* %148)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_7__*
  %152 = call i32 @ND_PRINT(%struct.TYPE_7__* %151)
  br label %153

153:                                              ; preds = %145, %135
  br label %154

154:                                              ; preds = %153, %128, %122
  %155 = load i32, i32* %11, align 4
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %184

157:                                              ; preds = %154
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i64 @ND_TTEST2(i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %157
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = bitcast i32* %166 to %struct.ip*
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @IPPROTO_VRRP, align 4
  %172 = call i32 @nextproto4_cksum(%struct.TYPE_7__* %165, %struct.ip* %167, i32* %168, i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %164
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 6
  %179 = call i32 @EXTRACT_16BITS(i32* %178)
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to %struct.TYPE_7__*
  %182 = call i32 @ND_PRINT(%struct.TYPE_7__* %181)
  br label %183

183:                                              ; preds = %175, %164
  br label %184

184:                                              ; preds = %183, %157, %154
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %186 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.8 to %struct.TYPE_7__*))
  %187 = load i32, i32* %16, align 4
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to %struct.TYPE_7__*
  %194 = call i32 @ND_PRINT(%struct.TYPE_7__* %193)
  br label %195

195:                                              ; preds = %189, %184
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %197 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.10 to %struct.TYPE_7__*))
  store i8 32, i8* %18, align 1
  %198 = load i32*, i32** %7, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  store i32* %199, i32** %7, align 8
  store i32 0, i32* %17, align 4
  br label %200

200:                                              ; preds = %219, %195
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %16, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %222

204:                                              ; preds = %200
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ND_TCHECK(i32 %207)
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = load i8, i8* %18, align 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 @ipaddr_string(%struct.TYPE_7__* %211, i32* %212)
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to %struct.TYPE_7__*
  %216 = call i32 @ND_PRINT(%struct.TYPE_7__* %215)
  store i8 44, i8* %18, align 1
  %217 = load i32*, i32** %7, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  store i32* %218, i32** %7, align 8
  br label %219

219:                                              ; preds = %204
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %17, align 4
  br label %200

222:                                              ; preds = %200
  %223 = load i32, i32* %11, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %249

225:                                              ; preds = %222
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @VRRP_AUTH_SIMPLE, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %249

229:                                              ; preds = %225
  %230 = load i32*, i32** %7, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 7
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @ND_TCHECK(i32 %232)
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %235 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.12 to %struct.TYPE_7__*))
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = load i32*, i32** %7, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @fn_printn(%struct.TYPE_7__* %236, i32* %237, i32 8, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %229
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.13 to %struct.TYPE_7__*))
  br label %251

246:                                              ; preds = %229
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %248 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.13 to %struct.TYPE_7__*))
  br label %249

249:                                              ; preds = %246, %225, %222
  br label %250

250:                                              ; preds = %249, %117
  br label %254

251:                                              ; preds = %243
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %253 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.14 to %struct.TYPE_7__*))
  br label %254

254:                                              ; preds = %251, %250, %61
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i8* @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i64 @ND_TTEST2(i32, i32) #1

declare dso_local i64 @in_cksum(%struct.cksum_vec*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @nextproto4_cksum(%struct.TYPE_7__*, %struct.ip*, i32*, i32, i32, i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @fn_printn(%struct.TYPE_7__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
