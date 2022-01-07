; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_map_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_map_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"pmap_map_chunk: no L1 table provided\00", align 1
@pte_l1_s_cache_mode = common dso_local global i64 0, align 8
@pte_l2_l_cache_mode = common dso_local global i64 0, align 8
@pte_l2_s_cache_mode = common dso_local global i64 0, align 8
@pte_l1_s_cache_mode_pt = common dso_local global i64 0, align 8
@pte_l2_l_cache_mode_pt = common dso_local global i64 0, align 8
@pte_l2_s_cache_mode_pt = common dso_local global i64 0, align 8
@L1_S_PROTO = common dso_local global i64 0, align 8
@PTE_KERNEL = common dso_local global i32 0, align 4
@PMAP_DOMAIN_KERNEL = common dso_local global i32 0, align 4
@L1_S_SHIFT = common dso_local global i64 0, align 8
@L1_S_SIZE = common dso_local global i32 0, align 4
@L1_TYPE_MASK = common dso_local global i64 0, align 8
@L1_TYPE_C = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"pmap_map_chunk: no L2 table for VA 0x%08x\00", align 1
@L1_C_ADDR_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"pmap_map_chunk: can't find L2 table for VA0x%08x\00", align 1
@L2_L_PROTO = common dso_local global i64 0, align 8
@L2_L_SIZE = common dso_local global i32 0, align 4
@L2_S_PROTO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_map_chunk(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to i64*
  store i64* %21, i64** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @roundup2(i32 %22, i32 %23)
  store i32 %24, i32* %18, align 4
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %6
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %32 [
    i32 129, label %31
    i32 130, label %33
    i32 128, label %37
  ]

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %29, %31
  store i64 0, i64* %15, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %41

33:                                               ; preds = %29
  %34 = load i64, i64* @pte_l1_s_cache_mode, align 8
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* @pte_l2_l_cache_mode, align 8
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* @pte_l2_s_cache_mode, align 8
  store i64 %36, i64* %16, align 8
  br label %41

37:                                               ; preds = %29
  %38 = load i64, i64* @pte_l1_s_cache_mode_pt, align 8
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* @pte_l2_l_cache_mode_pt, align 8
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* @pte_l2_s_cache_mode_pt, align 8
  store i64 %40, i64* %16, align 8
  br label %41

41:                                               ; preds = %37, %33, %32
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %166, %154, %52, %41
  %44 = load i32, i32* %18, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %196

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i64 @L1_S_MAPPABLE_P(i64 %47, i64 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %46
  %53 = load i64, i64* @L1_S_PROTO, align 8
  %54 = load i64, i64* %9, align 8
  %55 = or i64 %53, %54
  %56 = load i32, i32* @PTE_KERNEL, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @L1_S_PROT(i32 %56, i32 %57)
  %59 = or i64 %55, %58
  %60 = load i64, i64* %15, align 8
  %61 = or i64 %59, %60
  %62 = load i32, i32* @PMAP_DOMAIN_KERNEL, align 4
  %63 = call i64 @L1_S_DOM(i32 %62)
  %64 = or i64 %61, %63
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @L1_S_SHIFT, align 8
  %68 = ashr i64 %66, %67
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  store i64 %64, i64* %69, align 8
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @L1_S_SHIFT, align 8
  %73 = ashr i64 %71, %72
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = call i32 @PTE_SYNC(i64* %74)
  %76 = load i32, i32* @L1_S_SIZE, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %8, align 8
  %80 = load i32, i32* @L1_S_SIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %9, align 8
  %84 = load i32, i32* @L1_S_SIZE, align 4
  %85 = load i32, i32* %18, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %18, align 4
  br label %43

87:                                               ; preds = %46
  %88 = load i64*, i64** %13, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @L1_S_SHIFT, align 8
  %91 = ashr i64 %89, %90
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @L1_TYPE_MASK, align 8
  %95 = and i64 %93, %94
  %96 = load i64, i64* @L1_TYPE_C, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i64, i64* %8, align 8
  %100 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %98, %87
  %102 = load i64*, i64** %13, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @L1_IDX(i64 %103)
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @L1_C_ADDR_MASK, align 8
  %108 = and i64 %106, %107
  %109 = call i64 @kernel_pt_lookup(i64 %108)
  %110 = inttoptr i64 %109 to i64*
  store i64* %110, i64** %14, align 8
  %111 = load i64*, i64** %14, align 8
  %112 = icmp eq i64* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load i64, i64* %8, align 8
  %115 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %113, %101
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* %18, align 4
  %120 = call i64 @L2_L_MAPPABLE_P(i64 %117, i64 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %166

122:                                              ; preds = %116
  store i32 0, i32* %19, align 4
  br label %123

123:                                              ; preds = %151, %122
  %124 = load i32, i32* %19, align 4
  %125 = icmp slt i32 %124, 16
  br i1 %125, label %126, label %154

126:                                              ; preds = %123
  %127 = load i64, i64* @L2_L_PROTO, align 8
  %128 = load i64, i64* %9, align 8
  %129 = or i64 %127, %128
  %130 = load i32, i32* @PTE_KERNEL, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i64 @L2_L_PROT(i32 %130, i32 %131)
  %133 = or i64 %129, %132
  %134 = load i64, i64* %17, align 8
  %135 = or i64 %133, %134
  %136 = load i64*, i64** %14, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i64 @l2pte_index(i64 %137)
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %138, %140
  %142 = getelementptr inbounds i64, i64* %136, i64 %141
  store i64 %135, i64* %142, align 8
  %143 = load i64*, i64** %14, align 8
  %144 = load i64, i64* %8, align 8
  %145 = call i64 @l2pte_index(i64 %144)
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %145, %147
  %149 = getelementptr inbounds i64, i64* %143, i64 %148
  %150 = call i32 @PTE_SYNC(i64* %149)
  br label %151

151:                                              ; preds = %126
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %123

154:                                              ; preds = %123
  %155 = load i32, i32* @L2_L_SIZE, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %8, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %8, align 8
  %159 = load i32, i32* @L2_L_SIZE, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %9, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %9, align 8
  %163 = load i32, i32* @L2_L_SIZE, align 4
  %164 = load i32, i32* %18, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %18, align 4
  br label %43

166:                                              ; preds = %116
  %167 = load i64, i64* @L2_S_PROTO, align 8
  %168 = load i64, i64* %9, align 8
  %169 = or i64 %167, %168
  %170 = load i32, i32* @PTE_KERNEL, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i64 @L2_S_PROT(i32 %170, i32 %171)
  %173 = or i64 %169, %172
  %174 = load i64, i64* %16, align 8
  %175 = or i64 %173, %174
  %176 = load i64*, i64** %14, align 8
  %177 = load i64, i64* %8, align 8
  %178 = call i64 @l2pte_index(i64 %177)
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  store i64 %175, i64* %179, align 8
  %180 = load i64*, i64** %14, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i64 @l2pte_index(i64 %181)
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = call i32 @PTE_SYNC(i64* %183)
  %185 = load i32, i32* @PAGE_SIZE, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %8, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %8, align 8
  %189 = load i32, i32* @PAGE_SIZE, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %9, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %9, align 8
  %193 = load i32, i32* @PAGE_SIZE, align 4
  %194 = load i32, i32* %18, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %18, align 4
  br label %43

196:                                              ; preds = %43
  %197 = load i32, i32* %10, align 4
  ret i32 %197
}

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @L1_S_MAPPABLE_P(i64, i64, i32) #1

declare dso_local i64 @L1_S_PROT(i32, i32) #1

declare dso_local i64 @L1_S_DOM(i32) #1

declare dso_local i32 @PTE_SYNC(i64*) #1

declare dso_local i64 @kernel_pt_lookup(i64) #1

declare dso_local i64 @L1_IDX(i64) #1

declare dso_local i64 @L2_L_MAPPABLE_P(i64, i64, i32) #1

declare dso_local i64 @L2_L_PROT(i32, i32) #1

declare dso_local i64 @l2pte_index(i64) #1

declare dso_local i64 @L2_S_PROT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
