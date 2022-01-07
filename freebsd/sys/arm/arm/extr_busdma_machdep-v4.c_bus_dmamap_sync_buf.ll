; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_bus_dmamap_sync_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_bus_dmamap_sync_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arm_dcache_align = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@arm_dcache_align_mask = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @bus_dmamap_sync_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bus_dmamap_sync_buf(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @arm_dcache_align, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @arm_dcache_align, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cpu_dcache_wb_range(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @cpu_l2cache_wb_range(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %25, %4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @arm_dcache_align_mask, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @cpu_dcache_inv_range(i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @cpu_l2cache_inv_range(i32 %59, i32 %60)
  br label %69

62:                                               ; preds = %52, %47
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @cpu_dcache_wbinv_range(i32 %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @cpu_l2cache_wbinv_range(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %37
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %173

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %120, label %81

81:                                               ; preds = %78
  %82 = call i32 (...) @intr_disable()
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @arm_dcache_align_mask, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @arm_dcache_align_mask, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @arm_dcache_align_mask, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @memcpy(i8* %17, i8* %93, i32 %96)
  br label %98

98:                                               ; preds = %87, %81
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* @arm_dcache_align_mask, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load i32, i32* @arm_dcache_align, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* @arm_dcache_align_mask, align 4
  %116 = and i32 %114, %115
  %117 = sub nsw i32 %111, %116
  %118 = call i32 @memcpy(i8* %20, i8* %110, i32 %117)
  br label %119

119:                                              ; preds = %105, %98
  br label %120

120:                                              ; preds = %119, %78, %75
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @cpu_dcache_inv_range(i32 %121, i32 %122)
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @cpu_l2cache_inv_range(i32 %124, i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %172

129:                                              ; preds = %120
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %172, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @arm_dcache_align_mask, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @arm_dcache_align_mask, align 4
  %140 = xor i32 %139, -1
  %141 = and i32 %138, %140
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @arm_dcache_align_mask, align 4
  %146 = and i32 %144, %145
  %147 = call i32 @memcpy(i8* %143, i8* %17, i32 %146)
  br label %148

148:                                              ; preds = %137, %132
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* @arm_dcache_align_mask, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %148
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = load i32, i32* @arm_dcache_align, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* @arm_dcache_align_mask, align 4
  %166 = and i32 %164, %165
  %167 = sub nsw i32 %161, %166
  %168 = call i32 @memcpy(i8* %160, i8* %20, i32 %167)
  br label %169

169:                                              ; preds = %155, %148
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @intr_restore(i32 %170)
  br label %172

172:                                              ; preds = %169, %129, %120
  br label %173

173:                                              ; preds = %172, %70
  %174 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %174)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpu_dcache_wb_range(i32, i32) #2

declare dso_local i32 @cpu_l2cache_wb_range(i32, i32) #2

declare dso_local i32 @cpu_dcache_inv_range(i32, i32) #2

declare dso_local i32 @cpu_l2cache_inv_range(i32, i32) #2

declare dso_local i32 @cpu_dcache_wbinv_range(i32, i32) #2

declare dso_local i32 @cpu_l2cache_wbinv_range(i32, i32) #2

declare dso_local i32 @intr_disable(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @intr_restore(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
