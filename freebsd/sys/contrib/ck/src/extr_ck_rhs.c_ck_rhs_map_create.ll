; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs_map = type { i32, i64, i32, i64, i64, i64, i32, i8*, i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.ck_rhs = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ck_rhs_map* (i64)* }

@CK_RHS_PROBE_L1 = common dso_local global i64 0, align 8
@CK_RHS_MODE_READ_MOSTLY = common dso_local global i32 0, align 4
@CK_MD_CACHELINE = common dso_local global i32 0, align 4
@CK_RHS_PROBE_L1_SHIFT = common dso_local global i32 0, align 4
@CK_RHS_PROBE_L1_DEFAULT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@ck_rhs_map_probe_rm = common dso_local global i32 0, align 4
@ck_rhs_map_probe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ck_rhs_map* (%struct.ck_rhs*, i64)* @ck_rhs_map_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ck_rhs_map* @ck_rhs_map_create(%struct.ck_rhs* %0, i64 %1) #0 {
  %3 = alloca %struct.ck_rhs_map*, align 8
  %4 = alloca %struct.ck_rhs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ck_rhs_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @ck_internal_power_2(i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @CK_RHS_PROBE_L1, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @CK_RHS_PROBE_L1, align 8
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %19 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CK_RHS_MODE_READ_MOSTLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i64, i64* %8, align 8
  %26 = mul i64 8, %25
  %27 = load i64, i64* %8, align 8
  %28 = mul i64 4, %27
  %29 = add i64 %26, %28
  %30 = load i32, i32* @CK_MD_CACHELINE, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = add i64 %29, %32
  %34 = sub i64 %33, 1
  %35 = add i64 112, %34
  store i64 %35, i64* %7, align 8
  br label %44

36:                                               ; preds = %17
  %37 = load i64, i64* %8, align 8
  %38 = mul i64 4, %37
  %39 = load i32, i32* @CK_MD_CACHELINE, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = sub i64 %41, 1
  %43 = add i64 112, %42
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %36, %24
  %45 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %46 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.ck_rhs_map* (i64)*, %struct.ck_rhs_map* (i64)** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call %struct.ck_rhs_map* %49(i64 %50)
  store %struct.ck_rhs_map* %51, %struct.ck_rhs_map** %6, align 8
  %52 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %53 = icmp eq %struct.ck_rhs_map* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store %struct.ck_rhs_map* null, %struct.ck_rhs_map** %3, align 8
  br label %227

55:                                               ; preds = %44
  %56 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %57 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CK_RHS_MODE_READ_MOSTLY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %66 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %69 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @CK_RHS_PROBE_L1_SHIFT, align 4
  %72 = add nsw i32 %71, 2
  %73 = zext i32 %72 to i64
  %74 = lshr i64 %70, %73
  %75 = load i32, i32* @CK_RHS_PROBE_L1_DEFAULT, align 4
  %76 = call i64 @ck_internal_max(i64 %74, i32 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @UINT_MAX, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %55
  %81 = load i64, i64* @UINT_MAX, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %55
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %86 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %88 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %87, i32 0, i32 12
  store i64 0, i64* %88, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %91 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @ck_cc_ffsl(i64 %92)
  %94 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %95 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 4
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %96, 1
  %98 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %99 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  %100 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %101 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %100, i32 0, i32 10
  store i32 0, i32* %101, align 8
  %102 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %103 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %106 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = mul i64 %104, %107
  %109 = udiv i64 %108, 100
  %110 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %111 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %110, i32 0, i32 5
  store i64 %109, i64* %111, align 8
  %112 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %113 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %185

116:                                              ; preds = %82
  %117 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %118 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %117, i64 1
  %119 = ptrtoint %struct.ck_rhs_map* %118 to i64
  %120 = load i32, i32* @CK_MD_CACHELINE, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %119, %121
  %123 = sub i64 %122, 1
  %124 = load i32, i32* @CK_MD_CACHELINE, align 4
  %125 = sub nsw i32 %124, 1
  %126 = xor i32 %125, -1
  %127 = sext i32 %126 to i64
  %128 = and i64 %123, %127
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %131 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  store i8* %129, i8** %133, align 8
  %134 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %135 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = load i64, i64* %8, align 8
  %141 = mul i64 8, %140
  %142 = add i64 %139, %141
  %143 = load i32, i32* @CK_MD_CACHELINE, align 4
  %144 = sext i32 %143 to i64
  %145 = add i64 %142, %144
  %146 = sub i64 %145, 1
  %147 = load i32, i32* @CK_MD_CACHELINE, align 4
  %148 = sub nsw i32 %147, 1
  %149 = xor i32 %148, -1
  %150 = sext i32 %149 to i64
  %151 = and i64 %146, %150
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %154 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i8* %152, i8** %156, align 8
  %157 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %158 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i64, i64* %8, align 8
  %163 = mul i64 8, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @memset(i8* %161, i32 0, i32 %164)
  %166 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %167 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %166, i32 0, i32 9
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i64, i64* %8, align 8
  %172 = mul i64 4, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @memset(i8* %170, i32 0, i32 %173)
  %175 = load i32, i32* @CK_MD_CACHELINE, align 4
  %176 = sext i32 %175 to i64
  %177 = udiv i64 %176, 8
  %178 = sub i64 %177, 1
  %179 = trunc i64 %178 to i32
  %180 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %181 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @ck_rhs_map_probe_rm, align 4
  %183 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %184 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %183, i32 0, i32 8
  store i32 %182, i32* %184, align 8
  br label %220

185:                                              ; preds = %82
  %186 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %187 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %186, i64 1
  %188 = ptrtoint %struct.ck_rhs_map* %187 to i64
  %189 = load i32, i32* @CK_MD_CACHELINE, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %188, %190
  %192 = sub i64 %191, 1
  %193 = load i32, i32* @CK_MD_CACHELINE, align 4
  %194 = sub nsw i32 %193, 1
  %195 = xor i32 %194, -1
  %196 = sext i32 %195 to i64
  %197 = and i64 %192, %196
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %200 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %199, i32 0, i32 9
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store i8* %198, i8** %201, align 8
  %202 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %203 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %202, i32 0, i32 9
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load i64, i64* %8, align 8
  %207 = mul i64 4, %206
  %208 = trunc i64 %207 to i32
  %209 = call i32 @memset(i8* %205, i32 0, i32 %208)
  %210 = load i32, i32* @CK_MD_CACHELINE, align 4
  %211 = sext i32 %210 to i64
  %212 = udiv i64 %211, 4
  %213 = sub i64 %212, 1
  %214 = trunc i64 %213 to i32
  %215 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %216 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* @ck_rhs_map_probe, align 4
  %218 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %219 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %218, i32 0, i32 8
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %185, %116
  %221 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %222 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %221, i32 0, i32 7
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @memset(i8* %223, i32 0, i32 8)
  %225 = call i32 (...) @ck_pr_fence_store()
  %226 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  store %struct.ck_rhs_map* %226, %struct.ck_rhs_map** %3, align 8
  br label %227

227:                                              ; preds = %220, %54
  %228 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %3, align 8
  ret %struct.ck_rhs_map* %228
}

declare dso_local i64 @ck_internal_power_2(i64) #1

declare dso_local i64 @ck_internal_max(i64, i32) #1

declare dso_local i32 @ck_cc_ffsl(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
