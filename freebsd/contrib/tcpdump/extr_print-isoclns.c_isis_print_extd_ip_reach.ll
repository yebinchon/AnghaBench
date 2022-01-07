; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_extd_ip_reach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_extd_ip_reach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"%sIPv4 prefix: bad bit length %u\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%sIPv6 prefix: bad bit length %u\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%sIPv4 prefix: %15s/%u\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%sIPv6 prefix: %s/%u\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c", Distribution: %s, Metric: %u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c", sub-TLVs present\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c", %s%s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" (%u)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64)* @isis_print_extd_ip_reach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isis_print_extd_ip_reach(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ND_TTEST2(i32 %21, i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %254

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @EXTRACT_32BITS(i32* %26)
  store i32 %27, i32* %12, align 4
  store i32 4, i32* %17, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %29, i32** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @AF_INET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ND_TTEST2(i32 %35, i32 1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %254

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  %42 = load i32, i32* %40, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, 63
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sgt i32 %45, 32
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  %53 = call i32 @ND_PRINT(i32* %52)
  store i32 0, i32* %5, align 4
  br label %254

54:                                               ; preds = %39
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %17, align 4
  br label %88

57:                                               ; preds = %25
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @AF_INET6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ND_TTEST2(i32 %63, i32 2)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %254

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %7, align 8
  %73 = load i32, i32* %71, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp sgt i32 %74, 128
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load i32*, i32** %6, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i32*
  %82 = call i32 @ND_PRINT(i32* %81)
  store i32 0, i32* %5, align 4
  br label %254

83:                                               ; preds = %67
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %17, align 4
  br label %87

86:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %254

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 7
  %91 = sdiv i32 %90, 8
  store i32 %91, i32* %15, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @ND_TTEST2(i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %254

98:                                               ; preds = %88
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %100 = call i32 @memset(i32* %99, i32 0, i32 16)
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @memcpy(i32* %101, i32* %102, i32 %103)
  %105 = load i32, i32* %15, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %7, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %17, align 4
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @AF_INET, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %98
  %116 = load i32*, i32** %6, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %120 = call i32 @ipaddr_string(i32* %118, i32* %119)
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i32*
  %124 = call i32 @ND_PRINT(i32* %123)
  br label %140

125:                                              ; preds = %98
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* @AF_INET6, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load i32*, i32** %6, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %134 = call i32 @ip6addr_string(i32* %132, i32* %133)
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i32*
  %138 = call i32 @ND_PRINT(i32* %137)
  br label %139

139:                                              ; preds = %129, %125
  br label %140

140:                                              ; preds = %139, %115
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i64 @ISIS_MASK_TLV_EXTD_IP_UPDOWN(i32 %142)
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i32*
  %150 = call i32 @ND_PRINT(i32* %149)
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* @AF_INET, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %140
  %155 = load i32, i32* %13, align 4
  %156 = call i64 @ISIS_MASK_TLV_EXTD_IP_SUBTLV(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @ND_PRINT(i32* bitcast ([19 x i8]* @.str.7 to i32*))
  br label %180

161:                                              ; preds = %154, %140
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* @AF_INET6, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %161
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %13, align 4
  %168 = call i64 @ISIS_MASK_TLV_EXTD_IP6_IE(i32 %167)
  %169 = icmp ne i64 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)
  %172 = load i32, i32* %13, align 4
  %173 = call i64 @ISIS_MASK_TLV_EXTD_IP6_SUBTLV(i32 %172)
  %174 = icmp ne i64 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %177 = bitcast i8* %176 to i32*
  %178 = call i32 @ND_PRINT(i32* %177)
  br label %179

179:                                              ; preds = %165, %161
  br label %180

180:                                              ; preds = %179, %158
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* @AF_INET, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %13, align 4
  %186 = call i64 @ISIS_MASK_TLV_EXTD_IP_SUBTLV(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %184, %180
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* @AF_INET6, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %252

192:                                              ; preds = %188
  %193 = load i32, i32* %13, align 4
  %194 = call i64 @ISIS_MASK_TLV_EXTD_IP6_SUBTLV(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %252

196:                                              ; preds = %192, %184
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ND_TTEST2(i32 %198, i32 1)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  store i32 0, i32* %5, align 4
  br label %254

202:                                              ; preds = %196
  %203 = load i32*, i32** %7, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %7, align 8
  %205 = load i32, i32* %203, align 4
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 %206, 1
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %17, align 4
  %210 = load i32*, i32** %6, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i32*
  %214 = call i32 @ND_PRINT(i32* %213)
  br label %215

215:                                              ; preds = %242, %202
  %216 = load i32, i32* %16, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %251

218:                                              ; preds = %215
  %219 = load i32*, i32** %7, align 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @ND_TTEST2(i32 %220, i32 2)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  br label %254

224:                                              ; preds = %218
  %225 = load i32*, i32** %7, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %7, align 8
  %227 = load i32, i32* %225, align 4
  store i32 %227, i32* %18, align 4
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %7, align 8
  %230 = load i32, i32* %228, align 4
  store i32 %230, i32* %19, align 4
  %231 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %232 = load i8*, i8** %8, align 8
  %233 = call i32 @snprintf(i8* %231, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %232)
  %234 = load i32*, i32** %6, align 8
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %19, align 4
  %238 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %239 = call i32 @isis_print_ip_reach_subtlv(i32* %234, i32* %235, i32 %236, i32 %237, i8* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %224
  store i32 0, i32* %5, align 4
  br label %254

242:                                              ; preds = %224
  %243 = load i32, i32* %19, align 4
  %244 = load i32*, i32** %7, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32* %246, i32** %7, align 8
  %247 = load i32, i32* %19, align 4
  %248 = add nsw i32 %247, 2
  %249 = load i32, i32* %16, align 4
  %250 = sub nsw i32 %249, %248
  store i32 %250, i32* %16, align 4
  br label %215

251:                                              ; preds = %215
  br label %252

252:                                              ; preds = %251, %192, %188
  %253 = load i32, i32* %17, align 4
  store i32 %253, i32* %5, align 4
  br label %254

254:                                              ; preds = %252, %241, %223, %201, %97, %86, %76, %66, %47, %38, %24
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

declare dso_local i64 @ISIS_MASK_TLV_EXTD_IP_UPDOWN(i32) #1

declare dso_local i64 @ISIS_MASK_TLV_EXTD_IP_SUBTLV(i32) #1

declare dso_local i64 @ISIS_MASK_TLV_EXTD_IP6_IE(i32) #1

declare dso_local i64 @ISIS_MASK_TLV_EXTD_IP6_SUBTLV(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @isis_print_ip_reach_subtlv(i32*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
