; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dhcp6.c_dhcp6opt_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dhcp6.c_dhcp6opt_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dhcp6opt = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c" (%s\00", align 1
@dh6opt_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"opt_%u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" ?)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c" hwaddr/time type %u time %u \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" vid \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" hwaddr type %u \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" type %d)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c" pltime:%u vltime:%u\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" %d)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c" proto: delayed\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c" proto: reconfigure\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" proto: %d\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c", alg: HMAC-MD5\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c", alg: %d\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c", RDM: mono\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c", RDM: %d\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c", RD:\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" %04x\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" ??\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c", realm: \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c", key ID: %08x\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c", HMAC-MD5:\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c" reconfig-key\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c" type: HMAC-MD5\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c" type: ??\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" value:\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"...)\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c" for renew)\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c" for inf-req)\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c" for ???(%02x))\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c" %s)\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c" IAID:%u T1:%u T2:%u\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c" IAID:%u\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c" %s/%d\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" by-address\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c" by-clientID\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c" type_%d\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c" subopt:%d\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"[|dhcp6ext]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64*)* @dhcp6opt_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dhcp6opt_print(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.dhcp6opt*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = icmp eq i64* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %1049

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %1040, %23
  %25 = load i64*, i64** %5, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = icmp ult i64* %25, %26
  br i1 %27, label %28, label %1045

28:                                               ; preds = %24
  %29 = load i64*, i64** %6, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 16
  %32 = icmp ult i64* %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %1046

34:                                               ; preds = %28
  %35 = load i64*, i64** %5, align 8
  %36 = bitcast i64* %35 to %struct.dhcp6opt*
  store %struct.dhcp6opt* %36, %struct.dhcp6opt** %7, align 8
  %37 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %38 = bitcast %struct.dhcp6opt* %37 to { i64, i64 }*
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ND_TCHECK(i64 %40, i64 %42)
  %44 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %45 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %44, i32 0, i32 1
  %46 = call i64 @EXTRACT_16BITS(i64* %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 16
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = icmp ult i64* %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %1046

54:                                               ; preds = %34
  %55 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %56 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %55, i32 0, i32 0
  %57 = call i64 @EXTRACT_16BITS(i64* %56)
  store i64 %57, i64* %10, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @dh6opt_str, align 4
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @tok2str(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @ND_PRINT(i32* %63)
  %65 = load i64*, i64** %5, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 16
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @ND_TCHECK2(i64 %67, i64 %68)
  %70 = load i64, i64* %10, align 8
  switch i64 %70, label %1037 [
    i64 169, label %71
    i64 135, label %71
    i64 162, label %185
    i64 143, label %225
    i64 163, label %225
    i64 141, label %257
    i64 164, label %272
    i64 137, label %287
    i64 177, label %299
    i64 140, label %481
    i64 157, label %484
    i64 130, label %484
    i64 138, label %513
    i64 139, label %538
    i64 134, label %541
    i64 166, label %541
    i64 132, label %541
    i64 148, label %541
    i64 149, label %541
    i64 170, label %541
    i64 142, label %541
    i64 155, label %541
    i64 133, label %572
    i64 165, label %572
    i64 131, label %599
    i64 161, label %617
    i64 160, label %617
    i64 158, label %652
    i64 159, label %680
    i64 156, label %722
    i64 167, label %722
    i64 136, label %738
    i64 154, label %777
    i64 168, label %824
    i64 153, label %839
    i64 147, label %880
    i64 178, label %959
    i64 151, label %1018
    i64 150, label %1018
    i64 152, label %1018
  ]

71:                                               ; preds = %54, %54
  %72 = load i64, i64* %11, align 8
  %73 = icmp ult i64 %72, 2
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

77:                                               ; preds = %71
  %78 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %79 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %78, i64 1
  %80 = bitcast %struct.dhcp6opt* %79 to i64*
  store i64* %80, i64** %8, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = call i64 @EXTRACT_16BITS(i64* %81)
  switch i64 %82, label %178 [
    i64 1, label %83
    i64 2, label %119
    i64 3, label %146
  ]

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = icmp uge i64 %84, 8
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = load i32*, i32** %4, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 2
  %90 = call i64 @EXTRACT_16BITS(i64* %89)
  %91 = load i64*, i64** %8, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 4
  %93 = call i32 @EXTRACT_32BITS(i64* %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i32*
  %96 = call i32 @ND_PRINT(i32* %95)
  store i64 8, i64* %9, align 8
  br label %97

97:                                               ; preds = %109, %86
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load i32*, i32** %4, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = call i32 @ND_PRINT(i32* %107)
  br label %109

109:                                              ; preds = %101
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  br label %97

112:                                              ; preds = %97
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %118

115:                                              ; preds = %83
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %118

118:                                              ; preds = %115, %112
  br label %184

119:                                              ; preds = %77
  %120 = load i64, i64* %11, align 8
  %121 = icmp uge i64 %120, 10
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.6 to i32*))
  store i64 2, i64* %9, align 8
  br label %125

125:                                              ; preds = %136, %122
  %126 = load i64, i64* %9, align 8
  %127 = icmp ult i64 %126, 10
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load i32*, i32** %4, align 8
  %130 = load i64*, i64** %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i32*
  %135 = call i32 @ND_PRINT(i32* %134)
  br label %136

136:                                              ; preds = %128
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %125

139:                                              ; preds = %125
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %145

142:                                              ; preds = %119
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %145

145:                                              ; preds = %142, %139
  br label %184

146:                                              ; preds = %77
  %147 = load i64, i64* %11, align 8
  %148 = icmp uge i64 %147, 4
  br i1 %148, label %149, label %174

149:                                              ; preds = %146
  %150 = load i32*, i32** %4, align 8
  %151 = load i64*, i64** %8, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 2
  %153 = call i64 @EXTRACT_16BITS(i64* %152)
  %154 = inttoptr i64 %153 to i32*
  %155 = call i32 @ND_PRINT(i32* %154)
  store i64 4, i64* %9, align 8
  br label %156

156:                                              ; preds = %168, %149
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %11, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load i32*, i32** %4, align 8
  %162 = load i64*, i64** %8, align 8
  %163 = load i64, i64* %9, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i32*
  %167 = call i32 @ND_PRINT(i32* %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i64, i64* %9, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %9, align 8
  br label %156

171:                                              ; preds = %156
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %177

174:                                              ; preds = %146
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %177

177:                                              ; preds = %174, %171
  br label %184

178:                                              ; preds = %77
  %179 = load i32*, i32** %4, align 8
  %180 = load i64*, i64** %8, align 8
  %181 = call i64 @EXTRACT_16BITS(i64* %180)
  %182 = inttoptr i64 %181 to i32*
  %183 = call i32 @ND_PRINT(i32* %182)
  br label %184

184:                                              ; preds = %178, %177, %145, %118
  br label %1040

185:                                              ; preds = %54
  %186 = load i64, i64* %11, align 8
  %187 = icmp ult i64 %186, 24
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

191:                                              ; preds = %185
  %192 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %193 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %192, i64 1
  %194 = bitcast %struct.dhcp6opt* %193 to i64*
  store i64* %194, i64** %8, align 8
  %195 = load i32*, i32** %4, align 8
  %196 = load i32*, i32** %4, align 8
  %197 = load i64*, i64** %8, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = call i32 @ip6addr_string(i32* %196, i64* %198)
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i32*
  %202 = call i32 @ND_PRINT(i32* %201)
  %203 = load i32*, i32** %4, align 8
  %204 = load i64*, i64** %8, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 16
  %206 = call i32 @EXTRACT_32BITS(i64* %205)
  %207 = load i64*, i64** %8, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 20
  %209 = call i32 @EXTRACT_32BITS(i64* %208)
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i32*
  %212 = call i32 @ND_PRINT(i32* %211)
  %213 = load i64, i64* %11, align 8
  %214 = icmp ugt i64 %213, 24
  br i1 %214, label %215, label %222

215:                                              ; preds = %191
  %216 = load i32*, i32** %4, align 8
  %217 = load i64*, i64** %8, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 24
  %219 = load i64*, i64** %8, align 8
  %220 = load i64, i64* %11, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  call void @dhcp6opt_print(i32* %216, i64* %218, i64* %221)
  br label %222

222:                                              ; preds = %215, %191
  %223 = load i32*, i32** %4, align 8
  %224 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

225:                                              ; preds = %54, %54
  %226 = load i64, i64* %11, align 8
  %227 = urem i64 %226, 2
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

232:                                              ; preds = %225
  %233 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %234 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %233, i64 1
  %235 = bitcast %struct.dhcp6opt* %234 to i64*
  store i64* %235, i64** %8, align 8
  store i64 0, i64* %9, align 8
  br label %236

236:                                              ; preds = %251, %232
  %237 = load i64, i64* %9, align 8
  %238 = load i64, i64* %11, align 8
  %239 = icmp ult i64 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load i32*, i32** %4, align 8
  %242 = load i32, i32* @dh6opt_str, align 4
  %243 = load i64*, i64** %8, align 8
  %244 = load i64, i64* %9, align 8
  %245 = getelementptr inbounds i64, i64* %243, i64 %244
  %246 = call i64 @EXTRACT_16BITS(i64* %245)
  %247 = call i32 @tok2str(i32 %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %246)
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to i32*
  %250 = call i32 @ND_PRINT(i32* %249)
  br label %251

251:                                              ; preds = %240
  %252 = load i64, i64* %9, align 8
  %253 = add i64 %252, 2
  store i64 %253, i64* %9, align 8
  br label %236

254:                                              ; preds = %236
  %255 = load i32*, i32** %4, align 8
  %256 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

257:                                              ; preds = %54
  %258 = load i64, i64* %11, align 8
  %259 = icmp ne i64 %258, 1
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

263:                                              ; preds = %257
  %264 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %265 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %264, i64 1
  %266 = bitcast %struct.dhcp6opt* %265 to i64*
  store i64* %266, i64** %8, align 8
  %267 = load i32*, i32** %4, align 8
  %268 = load i64*, i64** %8, align 8
  %269 = load i64, i64* %268, align 8
  %270 = inttoptr i64 %269 to i32*
  %271 = call i32 @ND_PRINT(i32* %270)
  br label %1040

272:                                              ; preds = %54
  %273 = load i64, i64* %11, align 8
  %274 = icmp ne i64 %273, 2
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32*, i32** %4, align 8
  %277 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

278:                                              ; preds = %272
  %279 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %280 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %279, i64 1
  %281 = bitcast %struct.dhcp6opt* %280 to i64*
  store i64* %281, i64** %8, align 8
  %282 = load i32*, i32** %4, align 8
  %283 = load i64*, i64** %8, align 8
  %284 = call i64 @EXTRACT_16BITS(i64* %283)
  %285 = inttoptr i64 %284 to i32*
  %286 = call i32 @ND_PRINT(i32* %285)
  br label %1040

287:                                              ; preds = %54
  %288 = load i32*, i32** %4, align 8
  %289 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.12 to i32*))
  %290 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %291 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %290, i64 1
  %292 = bitcast %struct.dhcp6opt* %291 to i64*
  store i64* %292, i64** %8, align 8
  %293 = load i32*, i32** %4, align 8
  %294 = load i64*, i64** %8, align 8
  %295 = load i64, i64* %11, align 8
  %296 = call i32 @dhcp6_print(i32* %293, i64* %294, i64 %295)
  %297 = load i32*, i32** %4, align 8
  %298 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

299:                                              ; preds = %54
  %300 = load i64, i64* %11, align 8
  %301 = icmp ult i64 %300, 11
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i32*, i32** %4, align 8
  %304 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

305:                                              ; preds = %299
  %306 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %307 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %306, i64 1
  %308 = bitcast %struct.dhcp6opt* %307 to i64*
  store i64* %308, i64** %8, align 8
  %309 = load i64*, i64** %8, align 8
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %12, align 8
  %311 = load i64, i64* %12, align 8
  switch i64 %311, label %318 [
    i64 175, label %312
    i64 174, label %315
  ]

312:                                              ; preds = %305
  %313 = load i32*, i32** %4, align 8
  %314 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.13 to i32*))
  br label %323

315:                                              ; preds = %305
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @ND_PRINT(i32* bitcast ([20 x i8]* @.str.14 to i32*))
  br label %323

318:                                              ; preds = %305
  %319 = load i32*, i32** %4, align 8
  %320 = load i64, i64* %12, align 8
  %321 = inttoptr i64 %320 to i32*
  %322 = call i32 @ND_PRINT(i32* %321)
  br label %323

323:                                              ; preds = %318, %315, %312
  %324 = load i64*, i64** %8, align 8
  %325 = getelementptr inbounds i64, i64* %324, i32 1
  store i64* %325, i64** %8, align 8
  %326 = load i64*, i64** %8, align 8
  %327 = load i64, i64* %326, align 8
  switch i64 %327, label %331 [
    i64 176, label %328
  ]

328:                                              ; preds = %323
  %329 = load i32*, i32** %4, align 8
  %330 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.16 to i32*))
  br label %337

331:                                              ; preds = %323
  %332 = load i32*, i32** %4, align 8
  %333 = load i64*, i64** %8, align 8
  %334 = load i64, i64* %333, align 8
  %335 = inttoptr i64 %334 to i32*
  %336 = call i32 @ND_PRINT(i32* %335)
  br label %337

337:                                              ; preds = %331, %328
  %338 = load i64*, i64** %8, align 8
  %339 = getelementptr inbounds i64, i64* %338, i32 1
  store i64* %339, i64** %8, align 8
  %340 = load i64*, i64** %8, align 8
  %341 = load i64, i64* %340, align 8
  switch i64 %341, label %345 [
    i64 173, label %342
  ]

342:                                              ; preds = %337
  %343 = load i32*, i32** %4, align 8
  %344 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.18 to i32*))
  br label %351

345:                                              ; preds = %337
  %346 = load i32*, i32** %4, align 8
  %347 = load i64*, i64** %8, align 8
  %348 = load i64, i64* %347, align 8
  %349 = inttoptr i64 %348 to i32*
  %350 = call i32 @ND_PRINT(i32* %349)
  br label %351

351:                                              ; preds = %345, %342
  %352 = load i64*, i64** %8, align 8
  %353 = getelementptr inbounds i64, i64* %352, i32 1
  store i64* %353, i64** %8, align 8
  %354 = load i32*, i32** %4, align 8
  %355 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.20 to i32*))
  store i64 0, i64* %9, align 8
  br label %356

356:                                              ; preds = %365, %351
  %357 = load i64, i64* %9, align 8
  %358 = icmp ult i64 %357, 4
  br i1 %358, label %359, label %370

359:                                              ; preds = %356
  %360 = load i32*, i32** %4, align 8
  %361 = load i64*, i64** %8, align 8
  %362 = call i64 @EXTRACT_16BITS(i64* %361)
  %363 = inttoptr i64 %362 to i32*
  %364 = call i32 @ND_PRINT(i32* %363)
  br label %365

365:                                              ; preds = %359
  %366 = load i64, i64* %9, align 8
  %367 = add i64 %366, 1
  store i64 %367, i64* %9, align 8
  %368 = load i64*, i64** %8, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 2
  store i64* %369, i64** %8, align 8
  br label %356

370:                                              ; preds = %356
  %371 = load i64, i64* %11, align 8
  %372 = sub i64 %371, 11
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %13, align 4
  %374 = load i64, i64* %12, align 8
  switch i64 %374, label %475 [
    i64 175, label %375
    i64 174, label %437
  ]

375:                                              ; preds = %370
  %376 = load i32, i32* %13, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %375
  br label %478

379:                                              ; preds = %375
  %380 = load i32, i32* %13, align 4
  %381 = icmp slt i32 %380, 20
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load i32*, i32** %4, align 8
  %384 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.22 to i32*))
  br label %478

385:                                              ; preds = %379
  %386 = load i32, i32* %13, align 4
  %387 = sub nsw i32 %386, 20
  store i32 %387, i32* %14, align 4
  %388 = load i32, i32* %14, align 4
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %385
  %391 = load i32*, i32** %4, align 8
  %392 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.23 to i32*))
  br label %393

393:                                              ; preds = %390, %385
  store i64 0, i64* %9, align 8
  br label %394

394:                                              ; preds = %405, %393
  %395 = load i64, i64* %9, align 8
  %396 = load i32, i32* %14, align 4
  %397 = sext i32 %396 to i64
  %398 = icmp ult i64 %395, %397
  br i1 %398, label %399, label %410

399:                                              ; preds = %394
  %400 = load i32*, i32** %4, align 8
  %401 = load i64*, i64** %8, align 8
  %402 = load i64, i64* %401, align 8
  %403 = inttoptr i64 %402 to i32*
  %404 = call i32 @ND_PRINT(i32* %403)
  br label %405

405:                                              ; preds = %399
  %406 = load i64, i64* %9, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %9, align 8
  %408 = load i64*, i64** %8, align 8
  %409 = getelementptr inbounds i64, i64* %408, i32 1
  store i64* %409, i64** %8, align 8
  br label %394

410:                                              ; preds = %394
  %411 = load i32*, i32** %4, align 8
  %412 = load i64*, i64** %8, align 8
  %413 = call i32 @EXTRACT_32BITS(i64* %412)
  %414 = sext i32 %413 to i64
  %415 = inttoptr i64 %414 to i32*
  %416 = call i32 @ND_PRINT(i32* %415)
  %417 = load i64*, i64** %8, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 4
  store i64* %418, i64** %8, align 8
  %419 = load i32*, i32** %4, align 8
  %420 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.25 to i32*))
  store i64 0, i64* %9, align 8
  br label %421

421:                                              ; preds = %431, %410
  %422 = load i64, i64* %9, align 8
  %423 = icmp ult i64 %422, 4
  br i1 %423, label %424, label %436

424:                                              ; preds = %421
  %425 = load i32*, i32** %4, align 8
  %426 = load i64*, i64** %8, align 8
  %427 = call i32 @EXTRACT_32BITS(i64* %426)
  %428 = sext i32 %427 to i64
  %429 = inttoptr i64 %428 to i32*
  %430 = call i32 @ND_PRINT(i32* %429)
  br label %431

431:                                              ; preds = %424
  %432 = load i64, i64* %9, align 8
  %433 = add i64 %432, 1
  store i64 %433, i64* %9, align 8
  %434 = load i64*, i64** %8, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 4
  store i64* %435, i64** %8, align 8
  br label %421

436:                                              ; preds = %421
  br label %478

437:                                              ; preds = %370
  %438 = load i32, i32* %13, align 4
  %439 = icmp ne i32 %438, 17
  br i1 %439, label %440, label %443

440:                                              ; preds = %437
  %441 = load i32*, i32** %4, align 8
  %442 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.22 to i32*))
  br label %478

443:                                              ; preds = %437
  %444 = load i64*, i64** %8, align 8
  %445 = getelementptr inbounds i64, i64* %444, i32 1
  store i64* %445, i64** %8, align 8
  %446 = load i64, i64* %444, align 8
  switch i64 %446, label %453 [
    i64 171, label %447
    i64 172, label %450
  ]

447:                                              ; preds = %443
  %448 = load i32*, i32** %4, align 8
  %449 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.27 to i32*))
  br label %456

450:                                              ; preds = %443
  %451 = load i32*, i32** %4, align 8
  %452 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.28 to i32*))
  br label %456

453:                                              ; preds = %443
  %454 = load i32*, i32** %4, align 8
  %455 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.29 to i32*))
  br label %456

456:                                              ; preds = %453, %450, %447
  %457 = load i32*, i32** %4, align 8
  %458 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.30 to i32*))
  store i64 0, i64* %9, align 8
  br label %459

459:                                              ; preds = %469, %456
  %460 = load i64, i64* %9, align 8
  %461 = icmp ult i64 %460, 4
  br i1 %461, label %462, label %474

462:                                              ; preds = %459
  %463 = load i32*, i32** %4, align 8
  %464 = load i64*, i64** %8, align 8
  %465 = call i32 @EXTRACT_32BITS(i64* %464)
  %466 = sext i32 %465 to i64
  %467 = inttoptr i64 %466 to i32*
  %468 = call i32 @ND_PRINT(i32* %467)
  br label %469

469:                                              ; preds = %462
  %470 = load i64, i64* %9, align 8
  %471 = add i64 %470, 1
  store i64 %471, i64* %9, align 8
  %472 = load i64*, i64** %8, align 8
  %473 = getelementptr inbounds i64, i64* %472, i64 4
  store i64* %473, i64** %8, align 8
  br label %459

474:                                              ; preds = %459
  br label %478

475:                                              ; preds = %370
  %476 = load i32*, i32** %4, align 8
  %477 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.22 to i32*))
  br label %478

478:                                              ; preds = %475, %474, %440, %436, %382, %378
  %479 = load i32*, i32** %4, align 8
  %480 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

481:                                              ; preds = %54
  %482 = load i32*, i32** %4, align 8
  %483 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

484:                                              ; preds = %54, %54
  %485 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %486 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %485, i64 1
  %487 = bitcast %struct.dhcp6opt* %486 to i64*
  store i64* %487, i64** %8, align 8
  %488 = load i32*, i32** %4, align 8
  %489 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.31 to i32*))
  store i64 0, i64* %9, align 8
  br label %490

490:                                              ; preds = %507, %484
  %491 = load i64, i64* %9, align 8
  %492 = load i64, i64* %11, align 8
  %493 = icmp ult i64 %491, %492
  br i1 %493, label %494, label %497

494:                                              ; preds = %490
  %495 = load i64, i64* %9, align 8
  %496 = icmp ult i64 %495, 10
  br label %497

497:                                              ; preds = %494, %490
  %498 = phi i1 [ false, %490 ], [ %496, %494 ]
  br i1 %498, label %499, label %510

499:                                              ; preds = %497
  %500 = load i32*, i32** %4, align 8
  %501 = load i64*, i64** %8, align 8
  %502 = load i64, i64* %9, align 8
  %503 = getelementptr inbounds i64, i64* %501, i64 %502
  %504 = load i64, i64* %503, align 8
  %505 = inttoptr i64 %504 to i32*
  %506 = call i32 @ND_PRINT(i32* %505)
  br label %507

507:                                              ; preds = %499
  %508 = load i64, i64* %9, align 8
  %509 = add i64 %508, 1
  store i64 %509, i64* %9, align 8
  br label %490

510:                                              ; preds = %497
  %511 = load i32*, i32** %4, align 8
  %512 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.32 to i32*))
  br label %1040

513:                                              ; preds = %54
  %514 = load i64, i64* %11, align 8
  %515 = icmp ne i64 %514, 1
  br i1 %515, label %516, label %519

516:                                              ; preds = %513
  %517 = load i32*, i32** %4, align 8
  %518 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

519:                                              ; preds = %513
  %520 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %521 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %520, i64 1
  %522 = bitcast %struct.dhcp6opt* %521 to i64*
  store i64* %522, i64** %8, align 8
  %523 = load i64*, i64** %8, align 8
  %524 = load i64, i64* %523, align 8
  switch i64 %524, label %531 [
    i64 128, label %525
    i64 129, label %528
  ]

525:                                              ; preds = %519
  %526 = load i32*, i32** %4, align 8
  %527 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.33 to i32*))
  br label %537

528:                                              ; preds = %519
  %529 = load i32*, i32** %4, align 8
  %530 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.34 to i32*))
  br label %537

531:                                              ; preds = %519
  %532 = load i32*, i32** %4, align 8
  %533 = load i64*, i64** %8, align 8
  %534 = load i64, i64* %533, align 8
  %535 = inttoptr i64 %534 to i32*
  %536 = call i32 @ND_PRINT(i32* %535)
  br label %537

537:                                              ; preds = %531, %528, %525
  br label %1040

538:                                              ; preds = %54
  %539 = load i32*, i32** %4, align 8
  %540 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

541:                                              ; preds = %54, %54, %54, %54, %54, %54, %54, %54
  %542 = load i64, i64* %11, align 8
  %543 = urem i64 %542, 16
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %548

545:                                              ; preds = %541
  %546 = load i32*, i32** %4, align 8
  %547 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

548:                                              ; preds = %541
  %549 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %550 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %549, i64 1
  %551 = bitcast %struct.dhcp6opt* %550 to i64*
  store i64* %551, i64** %8, align 8
  store i64 0, i64* %9, align 8
  br label %552

552:                                              ; preds = %566, %548
  %553 = load i64, i64* %9, align 8
  %554 = load i64, i64* %11, align 8
  %555 = icmp ult i64 %553, %554
  br i1 %555, label %556, label %569

556:                                              ; preds = %552
  %557 = load i32*, i32** %4, align 8
  %558 = load i32*, i32** %4, align 8
  %559 = load i64*, i64** %8, align 8
  %560 = load i64, i64* %9, align 8
  %561 = getelementptr inbounds i64, i64* %559, i64 %560
  %562 = call i32 @ip6addr_string(i32* %558, i64* %561)
  %563 = sext i32 %562 to i64
  %564 = inttoptr i64 %563 to i32*
  %565 = call i32 @ND_PRINT(i32* %564)
  br label %566

566:                                              ; preds = %556
  %567 = load i64, i64* %9, align 8
  %568 = add i64 %567, 16
  store i64 %568, i64* %9, align 8
  br label %552

569:                                              ; preds = %552
  %570 = load i32*, i32** %4, align 8
  %571 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

572:                                              ; preds = %54, %54
  %573 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %574 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %573, i64 1
  %575 = bitcast %struct.dhcp6opt* %574 to i64*
  store i64* %575, i64** %8, align 8
  br label %576

576:                                              ; preds = %595, %572
  %577 = load i64*, i64** %8, align 8
  %578 = load i64*, i64** %5, align 8
  %579 = getelementptr inbounds i64, i64* %578, i64 16
  %580 = load i64, i64* %11, align 8
  %581 = getelementptr inbounds i64, i64* %579, i64 %580
  %582 = icmp ult i64* %577, %581
  br i1 %582, label %583, label %596

583:                                              ; preds = %576
  %584 = load i32*, i32** %4, align 8
  %585 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.31 to i32*))
  %586 = load i32*, i32** %4, align 8
  %587 = load i64*, i64** %8, align 8
  %588 = load i64*, i64** %5, align 8
  %589 = getelementptr inbounds i64, i64* %588, i64 16
  %590 = load i64, i64* %11, align 8
  %591 = getelementptr inbounds i64, i64* %589, i64 %590
  %592 = call i64* @ns_nprint(i32* %586, i64* %587, i64* %591)
  store i64* %592, i64** %8, align 8
  %593 = icmp eq i64* %592, null
  br i1 %593, label %594, label %595

594:                                              ; preds = %583
  br label %1046

595:                                              ; preds = %583
  br label %576

596:                                              ; preds = %576
  %597 = load i32*, i32** %4, align 8
  %598 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

599:                                              ; preds = %54
  %600 = load i64, i64* %11, align 8
  %601 = icmp ult i64 %600, 2
  br i1 %601, label %602, label %605

602:                                              ; preds = %599
  %603 = load i32*, i32** %4, align 8
  %604 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

605:                                              ; preds = %599
  %606 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %607 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %606, i64 1
  %608 = bitcast %struct.dhcp6opt* %607 to i64*
  store i64* %608, i64** %8, align 8
  %609 = load i32*, i32** %4, align 8
  %610 = load i64*, i64** %8, align 8
  %611 = getelementptr inbounds i64, i64* %610, i64 0
  %612 = call i64 @EXTRACT_16BITS(i64* %611)
  %613 = call i32 @dhcp6stcode(i64 %612)
  %614 = sext i32 %613 to i64
  %615 = inttoptr i64 %614 to i32*
  %616 = call i32 @ND_PRINT(i32* %615)
  br label %1040

617:                                              ; preds = %54, %54
  %618 = load i64, i64* %11, align 8
  %619 = icmp ult i64 %618, 12
  br i1 %619, label %620, label %623

620:                                              ; preds = %617
  %621 = load i32*, i32** %4, align 8
  %622 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

623:                                              ; preds = %617
  %624 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %625 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %624, i64 1
  %626 = bitcast %struct.dhcp6opt* %625 to i64*
  store i64* %626, i64** %8, align 8
  %627 = load i32*, i32** %4, align 8
  %628 = load i64*, i64** %8, align 8
  %629 = getelementptr inbounds i64, i64* %628, i64 0
  %630 = call i32 @EXTRACT_32BITS(i64* %629)
  %631 = load i64*, i64** %8, align 8
  %632 = getelementptr inbounds i64, i64* %631, i64 4
  %633 = call i32 @EXTRACT_32BITS(i64* %632)
  %634 = load i64*, i64** %8, align 8
  %635 = getelementptr inbounds i64, i64* %634, i64 8
  %636 = call i32 @EXTRACT_32BITS(i64* %635)
  %637 = sext i32 %636 to i64
  %638 = inttoptr i64 %637 to i32*
  %639 = call i32 @ND_PRINT(i32* %638)
  %640 = load i64, i64* %11, align 8
  %641 = icmp ugt i64 %640, 12
  br i1 %641, label %642, label %649

642:                                              ; preds = %623
  %643 = load i32*, i32** %4, align 8
  %644 = load i64*, i64** %8, align 8
  %645 = getelementptr inbounds i64, i64* %644, i64 12
  %646 = load i64*, i64** %8, align 8
  %647 = load i64, i64* %11, align 8
  %648 = getelementptr inbounds i64, i64* %646, i64 %647
  call void @dhcp6opt_print(i32* %643, i64* %645, i64* %648)
  br label %649

649:                                              ; preds = %642, %623
  %650 = load i32*, i32** %4, align 8
  %651 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

652:                                              ; preds = %54
  %653 = load i64, i64* %11, align 8
  %654 = icmp ult i64 %653, 4
  br i1 %654, label %655, label %658

655:                                              ; preds = %652
  %656 = load i32*, i32** %4, align 8
  %657 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

658:                                              ; preds = %652
  %659 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %660 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %659, i64 1
  %661 = bitcast %struct.dhcp6opt* %660 to i64*
  store i64* %661, i64** %8, align 8
  %662 = load i32*, i32** %4, align 8
  %663 = load i64*, i64** %8, align 8
  %664 = call i32 @EXTRACT_32BITS(i64* %663)
  %665 = sext i32 %664 to i64
  %666 = inttoptr i64 %665 to i32*
  %667 = call i32 @ND_PRINT(i32* %666)
  %668 = load i64, i64* %11, align 8
  %669 = icmp ugt i64 %668, 4
  br i1 %669, label %670, label %677

670:                                              ; preds = %658
  %671 = load i32*, i32** %4, align 8
  %672 = load i64*, i64** %8, align 8
  %673 = getelementptr inbounds i64, i64* %672, i64 4
  %674 = load i64*, i64** %8, align 8
  %675 = load i64, i64* %11, align 8
  %676 = getelementptr inbounds i64, i64* %674, i64 %675
  call void @dhcp6opt_print(i32* %671, i64* %673, i64* %676)
  br label %677

677:                                              ; preds = %670, %658
  %678 = load i32*, i32** %4, align 8
  %679 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

680:                                              ; preds = %54
  %681 = load i64, i64* %11, align 8
  %682 = icmp ult i64 %681, 25
  br i1 %682, label %683, label %686

683:                                              ; preds = %680
  %684 = load i32*, i32** %4, align 8
  %685 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

686:                                              ; preds = %680
  %687 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %688 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %687, i64 1
  %689 = bitcast %struct.dhcp6opt* %688 to i64*
  store i64* %689, i64** %8, align 8
  %690 = load i32*, i32** %4, align 8
  %691 = load i32*, i32** %4, align 8
  %692 = load i64*, i64** %8, align 8
  %693 = getelementptr inbounds i64, i64* %692, i64 9
  %694 = call i32 @ip6addr_string(i32* %691, i64* %693)
  %695 = load i64*, i64** %8, align 8
  %696 = getelementptr inbounds i64, i64* %695, i64 8
  %697 = load i64, i64* %696, align 8
  %698 = inttoptr i64 %697 to i32*
  %699 = call i32 @ND_PRINT(i32* %698)
  %700 = load i32*, i32** %4, align 8
  %701 = load i64*, i64** %8, align 8
  %702 = getelementptr inbounds i64, i64* %701, i64 0
  %703 = call i32 @EXTRACT_32BITS(i64* %702)
  %704 = load i64*, i64** %8, align 8
  %705 = getelementptr inbounds i64, i64* %704, i64 4
  %706 = call i32 @EXTRACT_32BITS(i64* %705)
  %707 = sext i32 %706 to i64
  %708 = inttoptr i64 %707 to i32*
  %709 = call i32 @ND_PRINT(i32* %708)
  %710 = load i64, i64* %11, align 8
  %711 = icmp ugt i64 %710, 25
  br i1 %711, label %712, label %719

712:                                              ; preds = %686
  %713 = load i32*, i32** %4, align 8
  %714 = load i64*, i64** %8, align 8
  %715 = getelementptr inbounds i64, i64* %714, i64 25
  %716 = load i64*, i64** %8, align 8
  %717 = load i64, i64* %11, align 8
  %718 = getelementptr inbounds i64, i64* %716, i64 %717
  call void @dhcp6opt_print(i32* %713, i64* %715, i64* %718)
  br label %719

719:                                              ; preds = %712, %686
  %720 = load i32*, i32** %4, align 8
  %721 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

722:                                              ; preds = %54, %54
  %723 = load i64, i64* %11, align 8
  %724 = icmp ne i64 %723, 4
  br i1 %724, label %725, label %728

725:                                              ; preds = %722
  %726 = load i32*, i32** %4, align 8
  %727 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

728:                                              ; preds = %722
  %729 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %730 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %729, i64 1
  %731 = bitcast %struct.dhcp6opt* %730 to i64*
  store i64* %731, i64** %8, align 8
  %732 = load i32*, i32** %4, align 8
  %733 = load i64*, i64** %8, align 8
  %734 = call i32 @EXTRACT_32BITS(i64* %733)
  %735 = sext i32 %734 to i64
  %736 = inttoptr i64 %735 to i32*
  %737 = call i32 @ND_PRINT(i32* %736)
  br label %1040

738:                                              ; preds = %54
  %739 = load i64, i64* %11, align 8
  %740 = icmp ult i64 %739, 4
  br i1 %740, label %741, label %744

741:                                              ; preds = %738
  %742 = load i32*, i32** %4, align 8
  %743 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

744:                                              ; preds = %738
  %745 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %746 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %745, i64 1
  %747 = bitcast %struct.dhcp6opt* %746 to i64*
  store i64* %747, i64** %8, align 8
  %748 = load i32*, i32** %4, align 8
  %749 = load i64*, i64** %8, align 8
  %750 = call i32 @EXTRACT_32BITS(i64* %749)
  %751 = sext i32 %750 to i64
  %752 = inttoptr i64 %751 to i32*
  %753 = call i32 @ND_PRINT(i32* %752)
  store i64 4, i64* %9, align 8
  br label %754

754:                                              ; preds = %771, %744
  %755 = load i64, i64* %9, align 8
  %756 = load i64, i64* %11, align 8
  %757 = icmp ult i64 %755, %756
  br i1 %757, label %758, label %761

758:                                              ; preds = %754
  %759 = load i64, i64* %9, align 8
  %760 = icmp ult i64 %759, 14
  br label %761

761:                                              ; preds = %758, %754
  %762 = phi i1 [ false, %754 ], [ %760, %758 ]
  br i1 %762, label %763, label %774

763:                                              ; preds = %761
  %764 = load i32*, i32** %4, align 8
  %765 = load i64*, i64** %8, align 8
  %766 = load i64, i64* %9, align 8
  %767 = getelementptr inbounds i64, i64* %765, i64 %766
  %768 = load i64, i64* %767, align 8
  %769 = inttoptr i64 %768 to i32*
  %770 = call i32 @ND_PRINT(i32* %769)
  br label %771

771:                                              ; preds = %763
  %772 = load i64, i64* %9, align 8
  %773 = add i64 %772, 1
  store i64 %773, i64* %9, align 8
  br label %754

774:                                              ; preds = %761
  %775 = load i32*, i32** %4, align 8
  %776 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.32 to i32*))
  br label %1040

777:                                              ; preds = %54
  %778 = load i64, i64* %11, align 8
  %779 = icmp ult i64 %778, 17
  br i1 %779, label %780, label %783

780:                                              ; preds = %777
  %781 = load i32*, i32** %4, align 8
  %782 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

783:                                              ; preds = %777
  %784 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %785 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %784, i64 1
  %786 = bitcast %struct.dhcp6opt* %785 to i64*
  store i64* %786, i64** %8, align 8
  %787 = load i64*, i64** %8, align 8
  %788 = load i64, i64* %787, align 8
  switch i64 %788, label %795 [
    i64 1, label %789
    i64 2, label %792
  ]

789:                                              ; preds = %783
  %790 = load i32*, i32** %4, align 8
  %791 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.41 to i32*))
  br label %803

792:                                              ; preds = %783
  %793 = load i32*, i32** %4, align 8
  %794 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.42 to i32*))
  br label %803

795:                                              ; preds = %783
  %796 = load i32*, i32** %4, align 8
  %797 = load i64*, i64** %8, align 8
  %798 = load i64, i64* %797, align 8
  %799 = trunc i64 %798 to i32
  %800 = sext i32 %799 to i64
  %801 = inttoptr i64 %800 to i32*
  %802 = call i32 @ND_PRINT(i32* %801)
  br label %803

803:                                              ; preds = %795, %792, %789
  %804 = load i32*, i32** %4, align 8
  %805 = load i32*, i32** %4, align 8
  %806 = load i64*, i64** %8, align 8
  %807 = getelementptr inbounds i64, i64* %806, i64 1
  %808 = call i32 @ip6addr_string(i32* %805, i64* %807)
  %809 = sext i32 %808 to i64
  %810 = inttoptr i64 %809 to i32*
  %811 = call i32 @ND_PRINT(i32* %810)
  %812 = load i64, i64* %11, align 8
  %813 = icmp ugt i64 %812, 17
  br i1 %813, label %814, label %821

814:                                              ; preds = %803
  %815 = load i32*, i32** %4, align 8
  %816 = load i64*, i64** %8, align 8
  %817 = getelementptr inbounds i64, i64* %816, i64 17
  %818 = load i64*, i64** %8, align 8
  %819 = load i64, i64* %11, align 8
  %820 = getelementptr inbounds i64, i64* %818, i64 %819
  call void @dhcp6opt_print(i32* %815, i64* %817, i64* %820)
  br label %821

821:                                              ; preds = %814, %803
  %822 = load i32*, i32** %4, align 8
  %823 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

824:                                              ; preds = %54
  %825 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %826 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %825, i64 1
  %827 = bitcast %struct.dhcp6opt* %826 to i64*
  store i64* %827, i64** %8, align 8
  %828 = load i64, i64* %11, align 8
  %829 = icmp ugt i64 %828, 0
  br i1 %829, label %830, label %836

830:                                              ; preds = %824
  %831 = load i32*, i32** %4, align 8
  %832 = load i64*, i64** %8, align 8
  %833 = load i64*, i64** %8, align 8
  %834 = load i64, i64* %11, align 8
  %835 = getelementptr inbounds i64, i64* %833, i64 %834
  call void @dhcp6opt_print(i32* %831, i64* %832, i64* %835)
  br label %836

836:                                              ; preds = %830, %824
  %837 = load i32*, i32** %4, align 8
  %838 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

839:                                              ; preds = %54
  %840 = load i64, i64* %11, align 8
  %841 = icmp ult i64 %840, 16
  br i1 %841, label %842, label %845

842:                                              ; preds = %839
  %843 = load i32*, i32** %4, align 8
  %844 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

845:                                              ; preds = %839
  %846 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %847 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %846, i64 1
  %848 = bitcast %struct.dhcp6opt* %847 to i64*
  store i64* %848, i64** %8, align 8
  %849 = load i32*, i32** %4, align 8
  %850 = load i32*, i32** %4, align 8
  %851 = load i64*, i64** %8, align 8
  %852 = getelementptr inbounds i64, i64* %851, i64 0
  %853 = call i32 @ip6addr_string(i32* %850, i64* %852)
  %854 = sext i32 %853 to i64
  %855 = inttoptr i64 %854 to i32*
  %856 = call i32 @ND_PRINT(i32* %855)
  store i64 16, i64* %9, align 8
  br label %857

857:                                              ; preds = %874, %845
  %858 = load i64, i64* %9, align 8
  %859 = load i64, i64* %11, align 8
  %860 = icmp ult i64 %858, %859
  br i1 %860, label %861, label %864

861:                                              ; preds = %857
  %862 = load i64, i64* %9, align 8
  %863 = icmp ult i64 %862, 26
  br label %864

864:                                              ; preds = %861, %857
  %865 = phi i1 [ false, %857 ], [ %863, %861 ]
  br i1 %865, label %866, label %877

866:                                              ; preds = %864
  %867 = load i32*, i32** %4, align 8
  %868 = load i64*, i64** %8, align 8
  %869 = load i64, i64* %9, align 8
  %870 = getelementptr inbounds i64, i64* %868, i64 %869
  %871 = load i64, i64* %870, align 8
  %872 = inttoptr i64 %871 to i32*
  %873 = call i32 @ND_PRINT(i32* %872)
  br label %874

874:                                              ; preds = %866
  %875 = load i64, i64* %9, align 8
  %876 = add i64 %875, 1
  store i64 %876, i64* %9, align 8
  br label %857

877:                                              ; preds = %864
  %878 = load i32*, i32** %4, align 8
  %879 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.32 to i32*))
  br label %1040

880:                                              ; preds = %54
  %881 = load i64, i64* %11, align 8
  %882 = icmp ult i64 %881, 4
  br i1 %882, label %883, label %886

883:                                              ; preds = %880
  %884 = load i32*, i32** %4, align 8
  %885 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

886:                                              ; preds = %880
  %887 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %888 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %887, i64 1
  %889 = bitcast %struct.dhcp6opt* %888 to i64*
  store i64* %889, i64** %8, align 8
  br label %890

890:                                              ; preds = %952, %886
  %891 = load i64*, i64** %8, align 8
  %892 = load i64*, i64** %5, align 8
  %893 = getelementptr inbounds i64, i64* %892, i64 16
  %894 = load i64, i64* %11, align 8
  %895 = getelementptr inbounds i64, i64* %893, i64 %894
  %896 = getelementptr inbounds i64, i64* %895, i64 -4
  %897 = icmp ult i64* %891, %896
  br i1 %897, label %898, label %956

898:                                              ; preds = %890
  %899 = load i64*, i64** %8, align 8
  %900 = call i64 @EXTRACT_16BITS(i64* %899)
  store i64 %900, i64* %17, align 8
  %901 = load i64*, i64** %8, align 8
  %902 = getelementptr inbounds i64, i64* %901, i64 2
  store i64* %902, i64** %8, align 8
  %903 = load i64*, i64** %8, align 8
  %904 = call i64 @EXTRACT_16BITS(i64* %903)
  store i64 %904, i64* %18, align 8
  %905 = load i64*, i64** %8, align 8
  %906 = getelementptr inbounds i64, i64* %905, i64 2
  store i64* %906, i64** %8, align 8
  %907 = load i64*, i64** %8, align 8
  %908 = load i64, i64* %18, align 8
  %909 = getelementptr inbounds i64, i64* %907, i64 %908
  %910 = load i64*, i64** %5, align 8
  %911 = getelementptr inbounds i64, i64* %910, i64 16
  %912 = load i64, i64* %11, align 8
  %913 = getelementptr inbounds i64, i64* %911, i64 %912
  %914 = icmp ugt i64* %909, %913
  br i1 %914, label %915, label %916

915:                                              ; preds = %898
  br label %1046

916:                                              ; preds = %898
  %917 = load i32*, i32** %4, align 8
  %918 = load i64, i64* %17, align 8
  %919 = inttoptr i64 %918 to i32*
  %920 = call i32 @ND_PRINT(i32* %919)
  %921 = load i64, i64* %17, align 8
  switch i64 %921, label %949 [
    i64 145, label %922
    i64 146, label %922
    i64 144, label %937
  ]

922:                                              ; preds = %916, %916
  %923 = load i64, i64* %18, align 8
  %924 = icmp ne i64 %923, 16
  br i1 %924, label %925, label %928

925:                                              ; preds = %922
  %926 = load i32*, i32** %4, align 8
  %927 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.46 to i32*))
  br label %952

928:                                              ; preds = %922
  %929 = load i32*, i32** %4, align 8
  %930 = load i32*, i32** %4, align 8
  %931 = load i64*, i64** %8, align 8
  %932 = getelementptr inbounds i64, i64* %931, i64 0
  %933 = call i32 @ip6addr_string(i32* %930, i64* %932)
  %934 = sext i32 %933 to i64
  %935 = inttoptr i64 %934 to i32*
  %936 = call i32 @ND_PRINT(i32* %935)
  br label %952

937:                                              ; preds = %916
  %938 = load i32*, i32** %4, align 8
  %939 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.31 to i32*))
  %940 = load i32*, i32** %4, align 8
  %941 = load i64*, i64** %8, align 8
  %942 = load i64*, i64** %8, align 8
  %943 = load i64, i64* %18, align 8
  %944 = getelementptr inbounds i64, i64* %942, i64 %943
  %945 = call i64* @ns_nprint(i32* %940, i64* %941, i64* %944)
  %946 = icmp eq i64* %945, null
  br i1 %946, label %947, label %948

947:                                              ; preds = %937
  br label %1046

948:                                              ; preds = %937
  br label %952

949:                                              ; preds = %916
  %950 = load i32*, i32** %4, align 8
  %951 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.46 to i32*))
  br label %952

952:                                              ; preds = %949, %948, %928, %925
  %953 = load i64, i64* %18, align 8
  %954 = load i64*, i64** %8, align 8
  %955 = getelementptr inbounds i64, i64* %954, i64 %953
  store i64* %955, i64** %8, align 8
  br label %890

956:                                              ; preds = %890
  %957 = load i32*, i32** %4, align 8
  %958 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

959:                                              ; preds = %54
  %960 = load i64, i64* %11, align 8
  %961 = icmp ult i64 %960, 3
  br i1 %961, label %962, label %965

962:                                              ; preds = %959
  %963 = load i32*, i32** %4, align 8
  %964 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

965:                                              ; preds = %959
  %966 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %967 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %966, i64 1
  %968 = bitcast %struct.dhcp6opt* %967 to i64*
  store i64* %968, i64** %8, align 8
  %969 = load i64, i64* %11, align 8
  %970 = trunc i64 %969 to i32
  store i32 %970, i32* %15, align 4
  %971 = load i32*, i32** %4, align 8
  %972 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.31 to i32*))
  br label %973

973:                                              ; preds = %1014, %965
  %974 = load i32, i32* %15, align 4
  %975 = icmp ne i32 %974, 0
  br i1 %975, label %976, label %980

976:                                              ; preds = %973
  %977 = load i64*, i64** %8, align 8
  %978 = load i64, i64* %977, align 8
  %979 = icmp ne i64 %978, 0
  br label %980

980:                                              ; preds = %976, %973
  %981 = phi i1 [ false, %973 ], [ %979, %976 ]
  br i1 %981, label %982, label %1015

982:                                              ; preds = %980
  %983 = load i64*, i64** %8, align 8
  %984 = getelementptr inbounds i64, i64* %983, i32 1
  store i64* %984, i64** %8, align 8
  %985 = load i64, i64* %983, align 8
  %986 = trunc i64 %985 to i32
  store i32 %986, i32* %16, align 4
  %987 = load i32, i32* %16, align 4
  %988 = load i32, i32* %15, align 4
  %989 = sub nsw i32 %988, 1
  %990 = icmp slt i32 %987, %989
  br i1 %990, label %991, label %1011

991:                                              ; preds = %982
  %992 = load i32*, i32** %4, align 8
  %993 = load i64*, i64** %8, align 8
  %994 = load i32, i32* %16, align 4
  %995 = call i32 @fn_printn(i32* %992, i64* %993, i32 %994, i32* null)
  %996 = load i32, i32* %16, align 4
  %997 = load i64*, i64** %8, align 8
  %998 = sext i32 %996 to i64
  %999 = getelementptr inbounds i64, i64* %997, i64 %998
  store i64* %999, i64** %8, align 8
  %1000 = load i32, i32* %16, align 4
  %1001 = add nsw i32 %1000, 1
  %1002 = load i32, i32* %15, align 4
  %1003 = sub nsw i32 %1002, %1001
  store i32 %1003, i32* %15, align 4
  %1004 = load i64*, i64** %8, align 8
  %1005 = load i64, i64* %1004, align 8
  %1006 = icmp ne i64 %1005, 0
  br i1 %1006, label %1007, label %1010

1007:                                             ; preds = %991
  %1008 = load i32*, i32** %4, align 8
  %1009 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.47 to i32*))
  br label %1010

1010:                                             ; preds = %1007, %991
  br label %1014

1011:                                             ; preds = %982
  %1012 = load i32*, i32** %4, align 8
  %1013 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.46 to i32*))
  br label %1015

1014:                                             ; preds = %1010
  br label %973

1015:                                             ; preds = %1011, %980
  %1016 = load i32*, i32** %4, align 8
  %1017 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

1018:                                             ; preds = %54, %54, %54
  %1019 = load i64, i64* %11, align 8
  %1020 = icmp ult i64 %1019, 5
  br i1 %1020, label %1021, label %1024

1021:                                             ; preds = %1018
  %1022 = load i32*, i32** %4, align 8
  %1023 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %1040

1024:                                             ; preds = %1018
  %1025 = load %struct.dhcp6opt*, %struct.dhcp6opt** %7, align 8
  %1026 = getelementptr inbounds %struct.dhcp6opt, %struct.dhcp6opt* %1025, i64 1
  %1027 = bitcast %struct.dhcp6opt* %1026 to i64*
  store i64* %1027, i64** %8, align 8
  %1028 = load i32*, i32** %4, align 8
  %1029 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.48 to i32*))
  %1030 = load i32*, i32** %4, align 8
  %1031 = load i64*, i64** %8, align 8
  %1032 = load i64, i64* %11, align 8
  %1033 = trunc i64 %1032 to i32
  %1034 = call i32 @fn_printn(i32* %1030, i64* %1031, i32 %1033, i32* null)
  %1035 = load i32*, i32** %4, align 8
  %1036 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

1037:                                             ; preds = %54
  %1038 = load i32*, i32** %4, align 8
  %1039 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %1040

1040:                                             ; preds = %1037, %1024, %1021, %1015, %962, %956, %883, %877, %842, %836, %821, %780, %774, %741, %728, %725, %719, %683, %677, %655, %649, %620, %605, %602, %596, %569, %545, %538, %537, %516, %510, %481, %478, %302, %287, %278, %275, %263, %260, %254, %229, %222, %188, %184, %74
  %1041 = load i64, i64* %11, align 8
  %1042 = add i64 16, %1041
  %1043 = load i64*, i64** %5, align 8
  %1044 = getelementptr inbounds i64, i64* %1043, i64 %1042
  store i64* %1044, i64** %5, align 8
  br label %24

1045:                                             ; preds = %24
  br label %1049

1046:                                             ; preds = %947, %915, %594, %53, %33
  %1047 = load i32*, i32** %4, align 8
  %1048 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.49 to i32*))
  br label %1049

1049:                                             ; preds = %1046, %1045, %22
  ret void
}

declare dso_local i32 @ND_TCHECK(i64, i64) #1

declare dso_local i64 @EXTRACT_16BITS(i64*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @ND_TCHECK2(i64, i64) #1

declare dso_local i32 @EXTRACT_32BITS(i64*) #1

declare dso_local i32 @ip6addr_string(i32*, i64*) #1

declare dso_local i32 @dhcp6_print(i32*, i64*, i64) #1

declare dso_local i64* @ns_nprint(i32*, i64*, i64*) #1

declare dso_local i32 @dhcp6stcode(i64) #1

declare dso_local i32 @fn_printn(i32*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
