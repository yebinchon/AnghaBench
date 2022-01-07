; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-cdp.c_cdp_print_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-cdp.c_cdp_print_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cdp_print_addr.prot_ipv6 = internal constant [8 x i32] [i32 170, i32 170, i32 3, i32 0, i32 0, i32 0, i32 134, i32 221], align 16
@PT_NLPID = common dso_local global i32 0, align 4
@NLPID_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IPv4 (%u) %s\00", align 1
@PT_IEEE_802_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"IPv6 (%u) %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"pt=0x%02x, pl=%d, pb=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c", al=%d, a=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @cdp_print_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdp_print_addr(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK2(i32 %18, i32 4)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ugt i32* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %247

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @EXTRACT_32BITS(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %245, %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = icmp sge i32 %35, 0
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i1 [ false, %30 ], [ %36, %34 ]
  br i1 %38, label %39, label %246

39:                                               ; preds = %37
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ND_TCHECK2(i32 %41, i32 2)
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ugt i32* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %247

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ND_TCHECK2(i32 %61, i32 2)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32*, i32** %12, align 8
  %69 = icmp ugt i32* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %48
  br label %247

71:                                               ; preds = %48
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @EXTRACT_16BITS(i32* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @PT_NLPID, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %113

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NLPID_IP, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ND_TCHECK2(i32 %95, i32 4)
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32*, i32** %12, align 8
  %100 = icmp ugt i32* %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %247

102:                                              ; preds = %91
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @ipaddr_string(i32* %105, i32* %106)
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i32*
  %110 = call i32 @ND_PRINT(i32* %109)
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  store i32* %112, i32** %6, align 8
  br label %237

113:                                              ; preds = %88, %83, %80, %71
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @PT_IEEE_802_2, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %154

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %154

120:                                              ; preds = %117
  %121 = load i32*, i32** %6, align 8
  %122 = call i64 @memcmp(i32* %121, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @cdp_print_addr.prot_ipv6, i64 0, i64 0), i32 8)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %154

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 16
  br i1 %126, label %127, label %154

127:                                              ; preds = %124
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  store i32* %129, i32** %6, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @ND_TCHECK2(i32 %131, i32 %132)
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32*, i32** %12, align 8
  %139 = icmp ugt i32* %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  br label %247

141:                                              ; preds = %127
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @ip6addr_string(i32* %144, i32* %145)
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i32*
  %149 = call i32 @ND_PRINT(i32* %148)
  %150 = load i32, i32* %10, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %6, align 8
  br label %236

154:                                              ; preds = %124, %120, %117, %113
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @ND_TCHECK2(i32 %156, i32 %157)
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32*, i32** %12, align 8
  %164 = icmp ugt i32* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %247

166:                                              ; preds = %154
  %167 = load i32*, i32** %5, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 -2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i32*
  %174 = call i32 @ND_PRINT(i32* %173)
  br label %175

175:                                              ; preds = %179, %166
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %9, align 4
  %178 = icmp sgt i32 %176, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load i32*, i32** %5, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %6, align 8
  %183 = load i32, i32* %181, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i32*
  %186 = call i32 @ND_PRINT(i32* %185)
  br label %175

187:                                              ; preds = %175
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ND_TCHECK2(i32 %189, i32 2)
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32*, i32** %12, align 8
  %194 = icmp ugt i32* %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %247

196:                                              ; preds = %187
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 %198, 8
  %200 = load i32*, i32** %6, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %199, %202
  store i32 %203, i32* %10, align 4
  %204 = load i32*, i32** %5, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i32*
  %208 = call i32 @ND_PRINT(i32* %207)
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  store i32* %210, i32** %6, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @ND_TCHECK2(i32 %212, i32 %213)
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32*, i32** %12, align 8
  %220 = icmp ugt i32* %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %196
  br label %247

222:                                              ; preds = %196
  br label %223

223:                                              ; preds = %227, %222
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %10, align 4
  %226 = icmp sgt i32 %224, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %223
  %228 = load i32*, i32** %5, align 8
  %229 = load i32*, i32** %6, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %6, align 8
  %231 = load i32, i32* %229, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i32*
  %234 = call i32 @ND_PRINT(i32* %233)
  br label %223

235:                                              ; preds = %223
  br label %236

236:                                              ; preds = %235, %141
  br label %237

237:                                              ; preds = %236, %102
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32*, i32** %5, align 8
  %244 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %245

245:                                              ; preds = %242, %237
  br label %30

246:                                              ; preds = %37
  store i32 0, i32* %4, align 4
  br label %248

247:                                              ; preds = %221, %195, %165, %140, %101, %70, %47, %24
  store i32 -1, i32* %4, align 4
  br label %248

248:                                              ; preds = %247, %246
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
