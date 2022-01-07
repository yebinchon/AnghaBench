; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_VirtToPhys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_VirtToPhys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64**, i64**, i64*, i64**, i64** }

@cpuid = common dso_local global i32 0, align 4
@ccsrbar_va = common dso_local global i64 0, align 8
@ccsrbar_size = common dso_local global i64 0, align 8
@ccsrbar_pa = common dso_local global i64 0, align 8
@XX_PInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BM_PORTAL = common dso_local global i64 0, align 8
@QM_PORTAL = common dso_local global i64 0, align 8
@PMAP_HAS_DMAP = common dso_local global i64 0, align 8
@DMAP_BASE_ADDRESS = common dso_local global i64 0, align 8
@DMAP_MAX_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"NetCommSW: Unable to translate virtual address %p!\0A\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XX_VirtToPhys(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @cpuid, align 4
  %7 = call i32 @PCPU_GET(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %238

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load i64, i64* @ccsrbar_va, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i64, i64* @ccsrbar_va, align 8
  %20 = load i64, i64* @ccsrbar_size, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* @ccsrbar_va, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* @ccsrbar_pa, align 8
  %29 = add nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %238

31:                                               ; preds = %16, %11
  %32 = load i8*, i8** %3, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 0), align 8
  %35 = load i64, i64* @BM_PORTAL, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %33, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 0), align 8
  %43 = load i64, i64* @BM_PORTAL, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 1), align 8
  %47 = load i64, i64* @BM_PORTAL, align 8
  %48 = getelementptr inbounds i64*, i64** %46, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %45, %53
  %55 = icmp slt i64 %41, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %39
  %57 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 2), align 8
  %58 = load i64, i64* @BM_PORTAL, align 8
  %59 = getelementptr inbounds i64*, i64** %57, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 0), align 8
  %69 = load i64, i64* @BM_PORTAL, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %67, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %238

74:                                               ; preds = %39, %31
  %75 = load i8*, i8** %3, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 3), align 8
  %78 = load i64, i64* @BM_PORTAL, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %76, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %74
  %83 = load i8*, i8** %3, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 3), align 8
  %86 = load i64, i64* @BM_PORTAL, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 4), align 8
  %90 = load i64, i64* @BM_PORTAL, align 8
  %91 = getelementptr inbounds i64*, i64** %89, i64 %90
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %88, %96
  %98 = icmp slt i64 %84, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %82
  %100 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 5), align 8
  %101 = load i64, i64* @BM_PORTAL, align 8
  %102 = getelementptr inbounds i64*, i64** %100, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 3), align 8
  %112 = load i64, i64* @BM_PORTAL, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %110, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %2, align 4
  br label %238

117:                                              ; preds = %82, %74
  %118 = load i8*, i8** %3, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 0), align 8
  %121 = load i64, i64* @QM_PORTAL, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %119, %123
  br i1 %124, label %125, label %160

125:                                              ; preds = %117
  %126 = load i8*, i8** %3, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 0), align 8
  %129 = load i64, i64* @QM_PORTAL, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 1), align 8
  %133 = load i64, i64* @QM_PORTAL, align 8
  %134 = getelementptr inbounds i64*, i64** %132, i64 %133
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %131, %139
  %141 = icmp slt i64 %127, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %125
  %143 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 2), align 8
  %144 = load i64, i64* @QM_PORTAL, align 8
  %145 = getelementptr inbounds i64*, i64** %143, i64 %144
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i8*, i8** %3, align 8
  %152 = ptrtoint i8* %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 0), align 8
  %155 = load i64, i64* @QM_PORTAL, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %153, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %2, align 4
  br label %238

160:                                              ; preds = %125, %117
  %161 = load i8*, i8** %3, align 8
  %162 = ptrtoint i8* %161 to i64
  %163 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 3), align 8
  %164 = load i64, i64* @QM_PORTAL, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp sge i64 %162, %166
  br i1 %167, label %168, label %203

168:                                              ; preds = %160
  %169 = load i8*, i8** %3, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 3), align 8
  %172 = load i64, i64* @QM_PORTAL, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 4), align 8
  %176 = load i64, i64* @QM_PORTAL, align 8
  %177 = getelementptr inbounds i64*, i64** %175, i64 %176
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %174, %182
  %184 = icmp slt i64 %170, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %168
  %186 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 5), align 8
  %187 = load i64, i64* @QM_PORTAL, align 8
  %188 = getelementptr inbounds i64*, i64** %186, i64 %187
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i8*, i8** %3, align 8
  %195 = ptrtoint i8* %194 to i64
  %196 = add nsw i64 %193, %195
  %197 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @XX_PInfo, i32 0, i32 3), align 8
  %198 = load i64, i64* @QM_PORTAL, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %196, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %2, align 4
  br label %238

203:                                              ; preds = %168, %160
  %204 = load i64, i64* @PMAP_HAS_DMAP, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = load i8*, i8** %3, align 8
  %208 = ptrtoint i8* %207 to i64
  %209 = load i64, i64* @DMAP_BASE_ADDRESS, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %206
  %212 = load i8*, i8** %3, align 8
  %213 = ptrtoint i8* %212 to i64
  %214 = load i64, i64* @DMAP_MAX_ADDRESS, align 8
  %215 = icmp sle i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load i8*, i8** %3, align 8
  %218 = ptrtoint i8* %217 to i64
  %219 = call i32 @DMAP_TO_PHYS(i64 %218)
  store i32 %219, i32* %2, align 4
  br label %238

220:                                              ; preds = %211, %206, %203
  %221 = load i8*, i8** %3, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = call i64 @pmap_kextract(i64 %222)
  store i64 %223, i64* %4, align 8
  br label %224

224:                                              ; preds = %220
  %225 = load i64, i64* %4, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i8*, i8** %3, align 8
  %229 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %228)
  br label %235

230:                                              ; preds = %224
  %231 = load i32, i32* @kernel_pmap, align 4
  %232 = load i8*, i8** %3, align 8
  %233 = ptrtoint i8* %232 to i64
  %234 = call i32 @pmap_track_page(i32 %231, i64 %233)
  br label %235

235:                                              ; preds = %230, %227
  %236 = load i64, i64* %4, align 8
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %2, align 4
  br label %238

238:                                              ; preds = %235, %216, %185, %142, %99, %56, %23, %10
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i64) #1

declare dso_local i64 @pmap_kextract(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pmap_track_page(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
