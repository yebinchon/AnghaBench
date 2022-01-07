; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs_map = type { i64, i32, i64, i64, i32*, i32*, i32*, i32, i32, i64 }
%struct.ck_hs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ck_hs_map* (i64)* }

@CK_HS_PROBE_L1 = common dso_local global i64 0, align 8
@CK_MD_CACHELINE = common dso_local global i32 0, align 4
@CK_HS_MODE_DELETE = common dso_local global i32 0, align 4
@CK_HS_PROBE_L1_SHIFT = common dso_local global i32 0, align 4
@CK_HS_PROBE_L1_DEFAULT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ck_hs_map* (%struct.ck_hs*, i64)* @ck_hs_map_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ck_hs_map* @ck_hs_map_create(%struct.ck_hs* %0, i64 %1) #0 {
  %3 = alloca %struct.ck_hs_map*, align 8
  %4 = alloca %struct.ck_hs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ck_hs_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @ck_internal_power_2(i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @CK_HS_PROBE_L1, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @CK_HS_PROBE_L1, align 8
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i64, i64* %8, align 8
  %20 = mul i64 8, %19
  %21 = load i32, i32* @CK_MD_CACHELINE, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = sub i64 %23, 1
  %25 = add i64 72, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %27 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CK_HS_MODE_DELETE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %18
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 4, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %39

38:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %41 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.ck_hs_map* (i64)*, %struct.ck_hs_map* (i64)** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.ck_hs_map* %44(i64 %45)
  store %struct.ck_hs_map* %46, %struct.ck_hs_map** %6, align 8
  %47 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %48 = icmp eq %struct.ck_hs_map* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store %struct.ck_hs_map* null, %struct.ck_hs_map** %3, align 8
  br label %137

50:                                               ; preds = %39
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %53 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @CK_HS_PROBE_L1_SHIFT, align 4
  %56 = add nsw i32 %55, 2
  %57 = zext i32 %56 to i64
  %58 = lshr i64 %54, %57
  %59 = load i32, i32* @CK_HS_PROBE_L1_DEFAULT, align 4
  %60 = call i64 @ck_internal_max(i64 %58, i32 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @UINT_MAX, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i64, i64* @UINT_MAX, align 8
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %64, %50
  %67 = load i64, i64* %10, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %70 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %72 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %71, i32 0, i32 9
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %75 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @ck_cc_ffsl(i64 %76)
  %78 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %79 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 %80, 1
  %82 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %83 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %85 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %84, i32 0, i32 7
  store i32 0, i32* %85, align 8
  %86 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %87 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %86, i64 1
  %88 = ptrtoint %struct.ck_hs_map* %87 to i64
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %88, %89
  %91 = load i32, i32* @CK_MD_CACHELINE, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %90, %92
  %94 = sub i64 %93, 1
  %95 = load i32, i32* @CK_MD_CACHELINE, align 4
  %96 = sub nsw i32 %95, 1
  %97 = xor i32 %96, -1
  %98 = sext i32 %97 to i64
  %99 = and i64 %94, %98
  %100 = inttoptr i64 %99 to i8*
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %103 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %102, i32 0, i32 6
  store i32* %101, i32** %103, align 8
  %104 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %105 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = mul i64 8, %107
  %109 = call i32 @memset(i32* %106, i32 0, i64 %108)
  %110 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %111 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @memset(i32* %112, i32 0, i64 8)
  %114 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %115 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CK_HS_MODE_DELETE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %66
  %121 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %122 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %121, i64 1
  %123 = bitcast %struct.ck_hs_map* %122 to i32*
  %124 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %125 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %124, i32 0, i32 4
  store i32* %123, i32** %125, align 8
  %126 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %127 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @memset(i32* %128, i32 0, i64 %129)
  br label %134

131:                                              ; preds = %66
  %132 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %133 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %132, i32 0, i32 4
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %131, %120
  %135 = call i32 (...) @ck_pr_fence_store()
  %136 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  store %struct.ck_hs_map* %136, %struct.ck_hs_map** %3, align 8
  br label %137

137:                                              ; preds = %134, %49
  %138 = load %struct.ck_hs_map*, %struct.ck_hs_map** %3, align 8
  ret %struct.ck_hs_map* %138
}

declare dso_local i64 @ck_internal_power_2(i64) #1

declare dso_local i64 @ck_internal_max(i64, i32) #1

declare dso_local i32 @ck_cc_ffsl(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
