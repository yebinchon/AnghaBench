; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_PhysToVirt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_PhysToVirt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64**, i64**, i32*, i64**, i64**, i32* }
%struct.pv_entry = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ccsrbar_pa = common dso_local global i64 0, align 8
@ccsrbar_size = common dso_local global i64 0, align 8
@ccsrbar_va = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@XX_PInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BM_PORTAL = common dso_local global i64 0, align 8
@QM_PORTAL = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PMAP_HAS_DMAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"NetCommSW: Unable to translate physical address 0x%09jx!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @XX_PhysToVirt(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pv_entry*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ccsrbar_pa, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @ccsrbar_pa, align 8
  %13 = load i64, i64* @ccsrbar_size, align 8
  %14 = add nsw i64 %12, %13
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @ccsrbar_pa, align 8
  %19 = sub nsw i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @ccsrbar_va, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %2, align 8
  br label %258

25:                                               ; preds = %10, %1
  %26 = load i32, i32* @cpuid, align 4
  %27 = call i32 @PCPU_GET(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 0), align 8
  %30 = load i64, i64* @BM_PORTAL, align 8
  %31 = getelementptr inbounds i64*, i64** %29, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %28, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %25
  %39 = load i64, i64* %3, align 8
  %40 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 0), align 8
  %41 = load i64, i64* @BM_PORTAL, align 8
  %42 = getelementptr inbounds i64*, i64** %40, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 1), align 8
  %49 = load i64, i64* @BM_PORTAL, align 8
  %50 = getelementptr inbounds i64*, i64** %48, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %47, %55
  %57 = icmp slt i64 %39, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %38
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 2), align 8
  %60 = load i64, i64* @BM_PORTAL, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %3, align 8
  %64 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 3), align 8
  %65 = load i64, i64* @BM_PORTAL, align 8
  %66 = getelementptr inbounds i64*, i64** %64, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %63, %71
  %73 = trunc i64 %72 to i32
  %74 = add nsw i32 %62, %73
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %2, align 8
  br label %258

77:                                               ; preds = %38, %25
  %78 = load i64, i64* %3, align 8
  %79 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 3), align 8
  %80 = load i64, i64* @BM_PORTAL, align 8
  %81 = getelementptr inbounds i64*, i64** %79, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %78, %86
  br i1 %87, label %88, label %127

88:                                               ; preds = %77
  %89 = load i64, i64* %3, align 8
  %90 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 3), align 8
  %91 = load i64, i64* @BM_PORTAL, align 8
  %92 = getelementptr inbounds i64*, i64** %90, i64 %91
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 4), align 8
  %99 = load i64, i64* @BM_PORTAL, align 8
  %100 = getelementptr inbounds i64*, i64** %98, i64 %99
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %97, %105
  %107 = icmp slt i64 %89, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %88
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 2), align 8
  %110 = load i64, i64* @BM_PORTAL, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %3, align 8
  %114 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 3), align 8
  %115 = load i64, i64* @BM_PORTAL, align 8
  %116 = getelementptr inbounds i64*, i64** %114, i64 %115
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %113, %121
  %123 = trunc i64 %122 to i32
  %124 = add nsw i32 %112, %123
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %2, align 8
  br label %258

127:                                              ; preds = %88, %77
  %128 = load i64, i64* %3, align 8
  %129 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 0), align 8
  %130 = load i64, i64* @QM_PORTAL, align 8
  %131 = getelementptr inbounds i64*, i64** %129, i64 %130
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %128, %136
  br i1 %137, label %138, label %177

138:                                              ; preds = %127
  %139 = load i64, i64* %3, align 8
  %140 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 0), align 8
  %141 = load i64, i64* @QM_PORTAL, align 8
  %142 = getelementptr inbounds i64*, i64** %140, i64 %141
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 1), align 8
  %149 = load i64, i64* @QM_PORTAL, align 8
  %150 = getelementptr inbounds i64*, i64** %148, i64 %149
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %147, %155
  %157 = icmp slt i64 %139, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %138
  %159 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 5), align 8
  %160 = load i64, i64* @QM_PORTAL, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %3, align 8
  %164 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 0), align 8
  %165 = load i64, i64* @QM_PORTAL, align 8
  %166 = getelementptr inbounds i64*, i64** %164, i64 %165
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %163, %171
  %173 = trunc i64 %172 to i32
  %174 = add nsw i32 %162, %173
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  store i8* %176, i8** %2, align 8
  br label %258

177:                                              ; preds = %138, %127
  %178 = load i64, i64* %3, align 8
  %179 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 3), align 8
  %180 = load i64, i64* @QM_PORTAL, align 8
  %181 = getelementptr inbounds i64*, i64** %179, i64 %180
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp sge i64 %178, %186
  br i1 %187, label %188, label %227

188:                                              ; preds = %177
  %189 = load i64, i64* %3, align 8
  %190 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 3), align 8
  %191 = load i64, i64* @QM_PORTAL, align 8
  %192 = getelementptr inbounds i64*, i64** %190, i64 %191
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 4), align 8
  %199 = load i64, i64* @QM_PORTAL, align 8
  %200 = getelementptr inbounds i64*, i64** %198, i64 %199
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %197, %205
  %207 = icmp slt i64 %189, %206
  br i1 %207, label %208, label %227

208:                                              ; preds = %188
  %209 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 2), align 8
  %210 = load i64, i64* @QM_PORTAL, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i64, i64* %3, align 8
  %214 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @XX_PInfo, i32 0, i32 3), align 8
  %215 = load i64, i64* @QM_PORTAL, align 8
  %216 = getelementptr inbounds i64*, i64** %214, i64 %215
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %213, %221
  %223 = trunc i64 %222 to i32
  %224 = add nsw i32 %212, %223
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  store i8* %226, i8** %2, align 8
  br label %258

227:                                              ; preds = %188, %177
  %228 = load i64, i64* %3, align 8
  %229 = call %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i64 %228)
  store %struct.TYPE_6__* %229, %struct.TYPE_6__** %5, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = call %struct.pv_entry* @TAILQ_FIRST(i32* %232)
  store %struct.pv_entry* %233, %struct.pv_entry** %4, align 8
  %234 = load %struct.pv_entry*, %struct.pv_entry** %4, align 8
  %235 = icmp ne %struct.pv_entry* %234, null
  br i1 %235, label %236, label %247

236:                                              ; preds = %227
  %237 = load %struct.pv_entry*, %struct.pv_entry** %4, align 8
  %238 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %3, align 8
  %241 = trunc i64 %240 to i32
  %242 = load i32, i32* @PAGE_MASK, align 4
  %243 = and i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %239, %244
  %246 = inttoptr i64 %245 to i8*
  store i8* %246, i8** %2, align 8
  br label %258

247:                                              ; preds = %227
  %248 = load i64, i64* @PMAP_HAS_DMAP, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i64, i64* %3, align 8
  %252 = call i64 @PHYS_TO_DMAP(i64 %251)
  %253 = inttoptr i64 %252 to i8*
  store i8* %253, i8** %2, align 8
  br label %258

254:                                              ; preds = %247
  %255 = load i64, i64* %3, align 8
  %256 = trunc i64 %255 to i32
  %257 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %256)
  store i8* null, i8** %2, align 8
  br label %258

258:                                              ; preds = %254, %250, %236, %208, %158, %108, %58, %16
  %259 = load i8*, i8** %2, align 8
  ret i8* %259
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local %struct.pv_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
