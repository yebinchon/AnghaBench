; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_change_attr_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_change_attr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_pmap = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATTR_IDX_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid DMAP table level: %d\0A\00", align 1
@L1_OFFSET = common dso_local global i64 0, align 8
@L1_SIZE = common dso_local global i64 0, align 8
@L2_OFFSET = common dso_local global i64 0, align 8
@L2_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@DEVICE_MEMORY = common dso_local global i32 0, align 4
@ATTR_XN = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@L3_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @pmap_change_attr_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_change_attr_locked(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @kernel_pmap, align 4
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PMAP_LOCK_ASSERT(i32 %15, i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @trunc_page(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @PAGE_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @round_page(i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @VIRT_IN_DMAP(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %161

40:                                               ; preds = %34, %3
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %159, %40
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %160

48:                                               ; preds = %42
  %49 = load i32, i32* @kernel_pmap, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i32* @pmap_pte(i32 %49, i64 %50, i32* %14)
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %161

56:                                               ; preds = %48
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @pmap_load(i32* %57)
  %59 = load i32, i32* @ATTR_IDX_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ATTR_IDX(i32 %61)
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %56
  %65 = load i32, i32* %14, align 4
  switch i32 %65, label %66 [
    i32 1, label %69
    i32 2, label %76
    i32 3, label %83
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %66
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @L1_OFFSET, align 8
  %72 = xor i64 %71, -1
  %73 = and i64 %70, %72
  %74 = load i64, i64* @L1_SIZE, align 8
  %75 = add nsw i64 %73, %74
  store i64 %75, i64* %10, align 8
  br label %87

76:                                               ; preds = %64
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @L2_OFFSET, align 8
  %79 = xor i64 %78, -1
  %80 = and i64 %77, %79
  %81 = load i64, i64* @L2_SIZE, align 8
  %82 = add nsw i64 %80, %81
  store i64 %82, i64* %10, align 8
  br label %87

83:                                               ; preds = %64
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %83, %76, %69
  br label %159

88:                                               ; preds = %56
  %89 = load i32, i32* %14, align 4
  switch i32 %89, label %90 [
    i32 1, label %93
    i32 2, label %109
    i32 3, label %122
  ]

90:                                               ; preds = %88
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %90
  %94 = load i32, i32* @kernel_pmap, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @L1_OFFSET, align 8
  %98 = xor i64 %97, -1
  %99 = and i64 %96, %98
  %100 = call i32* @pmap_demote_l1(i32 %94, i32* %95, i64 %99)
  store i32* %100, i32** %13, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %4, align 4
  br label %161

105:                                              ; preds = %93
  %106 = load i32*, i32** %12, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32* @pmap_l1_to_l2(i32* %106, i64 %107)
  store i32* %108, i32** %12, align 8
  br label %109

109:                                              ; preds = %88, %105
  %110 = load i32, i32* @kernel_pmap, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32* @pmap_demote_l2(i32 %110, i32* %111, i64 %112)
  store i32* %113, i32** %13, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %4, align 4
  br label %161

118:                                              ; preds = %109
  %119 = load i32*, i32** %12, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32* @pmap_l2_to_l3(i32* %119, i64 %120)
  store i32* %121, i32** %12, align 8
  br label %122

122:                                              ; preds = %88, %118
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @pmap_load(i32* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* @ATTR_IDX_MASK, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @ATTR_IDX(i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @DEVICE_MEMORY, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %122
  %137 = load i32, i32* @ATTR_XN, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %136, %122
  %141 = load i32, i32* @kernel_pmap, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* @PAGE_SIZE, align 8
  %146 = call i32 @pmap_update_entry(i32 %141, i32* %142, i32 %143, i64 %144, i64 %145)
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %140
  %151 = load i64, i64* %10, align 8
  %152 = load i32, i32* @L3_SIZE, align 4
  %153 = call i32 @cpu_dcache_wbinv_range(i64 %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %140
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* @PAGE_SIZE, align 8
  %157 = load i64, i64* %10, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %10, align 8
  br label %159

159:                                              ; preds = %155, %87
  br label %42

160:                                              ; preds = %42
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %116, %103, %54, %38
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @VIRT_IN_DMAP(i64) #1

declare dso_local i32* @pmap_pte(i32, i64, i32*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @ATTR_IDX(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32* @pmap_demote_l1(i32, i32*, i64) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i64) #1

declare dso_local i32* @pmap_demote_l2(i32, i32*, i64) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i64) #1

declare dso_local i32 @pmap_update_entry(i32, i32*, i32, i64, i64) #1

declare dso_local i32 @cpu_dcache_wbinv_range(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
