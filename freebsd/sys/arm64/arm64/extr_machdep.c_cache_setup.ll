; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_cache_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_cache_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dcache_line_size = common dso_local global i32 0, align 4
@icache_line_size = common dso_local global i32 0, align 4
@idcache_line_size = common dso_local global i32 0, align 4
@DCZID_DZP = common dso_local global i32 0, align 4
@dczva_line_size = common dso_local global i32 0, align 4
@pagezero_cache = common dso_local global i32 0, align 4
@pagezero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @READ_SPECIALREG(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @CTR_DLINE_SIZE(i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 4, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @dcache_line_size, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @CTR_ILINE_SIZE(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 4, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @icache_line_size, align 4
  %20 = load i32, i32* @dcache_line_size, align 4
  %21 = load i32, i32* @icache_line_size, align 4
  %22 = call i32 @MIN(i32 %20, i32 %21)
  store i32 %22, i32* @idcache_line_size, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @READ_SPECIALREG(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @DCZID_DZP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %0
  store i32 0, i32* @dczva_line_size, align 4
  br label %38

30:                                               ; preds = %0
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DCZID_BS_SIZE(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 4, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @dczva_line_size, align 4
  %37 = load i32, i32* @pagezero_cache, align 4
  store i32 %37, i32* @pagezero, align 4
  br label %38

38:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i32 @CTR_DLINE_SIZE(i32) #1

declare dso_local i32 @CTR_ILINE_SIZE(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @DCZID_BS_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
