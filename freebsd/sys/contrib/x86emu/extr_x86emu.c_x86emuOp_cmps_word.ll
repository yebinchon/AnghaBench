; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_cmps_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_cmps_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_cmps_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_cmps_word(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @F_DF, align 4
  %15 = call i64 @ACCESS_FLAG(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -4, i32* %5, align 4
  br label %19

18:                                               ; preds = %13
  store i32 4, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %17
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @F_DF, align 4
  %22 = call i64 @ACCESS_FLAG(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -2, i32* %5, align 4
  br label %26

25:                                               ; preds = %20
  store i32 2, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %125

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %116, %35
  %37 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %38 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %117

42:                                               ; preds = %36
  %43 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %44 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %42
  %51 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %52 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %53 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @fetch_data_long(%struct.x86emu* %51, i32 %55)
  store i64 %56, i64* %3, align 8
  %57 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %58 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %59 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %63 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @fetch_long(%struct.x86emu* %57, i32 %61, i32 %65)
  store i64 %66, i64* %4, align 8
  %67 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @cmp_long(%struct.x86emu* %67, i64 %68, i64 %69)
  br label %94

71:                                               ; preds = %42
  %72 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %73 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %74 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @fetch_data_word(%struct.x86emu* %72, i32 %76)
  store i64 %77, i64* %3, align 8
  %78 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %79 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %80 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %84 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @fetch_word(%struct.x86emu* %78, i32 %82, i32 %86)
  store i64 %87, i64* %4, align 8
  %88 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %89 = load i64, i64* %3, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %4, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @cmp_word(%struct.x86emu* %88, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %71, %50
  %95 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %96 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %102 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, %100
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %108 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %106
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @F_ZF, align 4
  %113 = call i64 @ACCESS_FLAG(i32 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %94
  br label %117

116:                                              ; preds = %94
  br label %36

117:                                              ; preds = %115, %36
  %118 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %121 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %119
  store i32 %124, i32* %122, align 8
  br label %289

125:                                              ; preds = %27
  %126 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %127 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %223

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %214, %133
  %135 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %136 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %215

140:                                              ; preds = %134
  %141 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %142 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %140
  %149 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %150 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %151 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @fetch_data_long(%struct.x86emu* %149, i32 %153)
  store i64 %154, i64* %3, align 8
  %155 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %156 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %157 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %161 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @fetch_long(%struct.x86emu* %155, i32 %159, i32 %163)
  store i64 %164, i64* %4, align 8
  %165 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %166 = load i64, i64* %3, align 8
  %167 = load i64, i64* %4, align 8
  %168 = call i32 @cmp_long(%struct.x86emu* %165, i64 %166, i64 %167)
  br label %192

169:                                              ; preds = %140
  %170 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %171 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %172 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @fetch_data_word(%struct.x86emu* %170, i32 %174)
  store i64 %175, i64* %3, align 8
  %176 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %177 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %178 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %182 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @fetch_word(%struct.x86emu* %176, i32 %180, i32 %184)
  store i64 %185, i64* %4, align 8
  %186 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %187 = load i64, i64* %3, align 8
  %188 = trunc i64 %187 to i32
  %189 = load i64, i64* %4, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @cmp_word(%struct.x86emu* %186, i32 %188, i32 %190)
  br label %192

192:                                              ; preds = %169, %148
  %193 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %194 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %200 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, %198
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %206 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %204
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* @F_ZF, align 4
  %211 = call i64 @ACCESS_FLAG(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %192
  br label %215

214:                                              ; preds = %192
  br label %134

215:                                              ; preds = %213, %134
  %216 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %217 = xor i32 %216, -1
  %218 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %219 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %217
  store i32 %222, i32* %220, align 8
  br label %288

223:                                              ; preds = %125
  %224 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %225 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %252

231:                                              ; preds = %223
  %232 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %233 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %234 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @fetch_data_long(%struct.x86emu* %232, i32 %236)
  store i64 %237, i64* %3, align 8
  %238 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %239 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %240 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %244 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @fetch_long(%struct.x86emu* %238, i32 %242, i32 %246)
  store i64 %247, i64* %4, align 8
  %248 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %249 = load i64, i64* %3, align 8
  %250 = load i64, i64* %4, align 8
  %251 = call i32 @cmp_long(%struct.x86emu* %248, i64 %249, i64 %250)
  br label %275

252:                                              ; preds = %223
  %253 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %254 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %255 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @fetch_data_word(%struct.x86emu* %253, i32 %257)
  store i64 %258, i64* %3, align 8
  %259 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %260 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %261 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %265 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @fetch_word(%struct.x86emu* %259, i32 %263, i32 %267)
  store i64 %268, i64* %4, align 8
  %269 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %270 = load i64, i64* %3, align 8
  %271 = trunc i64 %270 to i32
  %272 = load i64, i64* %4, align 8
  %273 = trunc i64 %272 to i32
  %274 = call i32 @cmp_word(%struct.x86emu* %269, i32 %271, i32 %273)
  br label %275

275:                                              ; preds = %252, %231
  %276 = load i32, i32* %5, align 4
  %277 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %278 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, %276
  store i32 %281, i32* %279, align 8
  %282 = load i32, i32* %5, align 4
  %283 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %284 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, %282
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %275, %215
  br label %289

289:                                              ; preds = %288, %117
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i64 @fetch_data_long(%struct.x86emu*, i32) #1

declare dso_local i64 @fetch_long(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @cmp_long(%struct.x86emu*, i64, i64) #1

declare dso_local i64 @fetch_data_word(%struct.x86emu*, i32) #1

declare dso_local i64 @fetch_word(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @cmp_word(%struct.x86emu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
