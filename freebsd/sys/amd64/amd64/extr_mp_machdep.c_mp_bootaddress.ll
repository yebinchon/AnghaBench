; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_mp_bootaddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_mp_bootaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AP_BOOTPT_SZ = common dso_local global i64 0, align 8
@mptramp_pagetables = common dso_local global i32 0, align 4
@boot_address = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"Cannot find enough space for the initial AP page tables, placing them at %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_bootaddress(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @alloc_ap_trampoline(i64* %9, i32* %10)
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %105, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ule i32 %15, %17
  br i1 %18, label %19, label %108

19:                                               ; preds = %14
  %20 = load i64*, i64** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @round_page(i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @AP_BOOTPT_SZ, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %33, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %32
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @is_mpboot_good(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @is_kernel_paddr(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @is_kernel_paddr(i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load i64*, i64** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %56, i64* %60, align 8
  br label %108

61:                                               ; preds = %50, %46, %41, %32, %19
  %62 = load i64*, i64** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @trunc_page(i64 %67)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @AP_BOOTPT_SZ, align 8
  %71 = sub nsw i64 %69, %70
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %61
  %76 = load i64, i64* %5, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %76, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %75
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @is_mpboot_good(i64 %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @is_kernel_paddr(i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %6, align 8
  %94 = sub nsw i64 %93, 1
  %95 = call i32 @is_kernel_paddr(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  store i32 1, i32* %8, align 4
  %98 = load i64, i64* %5, align 8
  %99 = load i64*, i64** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  store i64 %98, i64* %103, align 8
  br label %108

104:                                              ; preds = %92, %88, %83, %75, %61
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = sub i32 %106, 2
  store i32 %107, i32* %7, align 4
  br label %14

108:                                              ; preds = %97, %55, %14
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %153

111:                                              ; preds = %108
  %112 = load i64, i64* %5, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* @mptramp_pagetables, align 4
  %114 = load i64*, i64** %3, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %118, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %111
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = load i64*, i64** %3, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64*, i64** %3, align 8
  %136 = load i32, i32* %7, align 4
  %137 = add i32 %136, 2
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sub i32 %141, %142
  %144 = add i32 %143, 2
  %145 = zext i32 %144 to i64
  %146 = mul i64 8, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memmove(i64* %134, i64* %139, i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %149, align 4
  %151 = sub i32 %150, 2
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %130, %126, %111
  br label %165

153:                                              ; preds = %108
  %154 = load i64, i64* @boot_address, align 8
  %155 = call i64 @trunc_page(i64 %154)
  %156 = load i64, i64* @AP_BOOTPT_SZ, align 8
  %157 = sub nsw i64 %155, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* @mptramp_pagetables, align 4
  %159 = load i64, i64* @bootverbose, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load i32, i32* @mptramp_pagetables, align 4
  %163 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %161, %153
  br label %165

165:                                              ; preds = %164, %152
  ret void
}

declare dso_local i32 @alloc_ap_trampoline(i64*, i32*) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @is_mpboot_good(i64, i64) #1

declare dso_local i32 @is_kernel_paddr(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
