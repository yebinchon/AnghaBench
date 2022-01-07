; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mp_machdep.c_cpu_mp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mp_machdep.c_cpu_mp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ap_boot_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ap boot\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@DPCPU_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@dpcpu = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"WARNING: Some AP's failed to start\0A\00", align 1
@all_cpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_mp_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MTX_SPIN, align 4
  %4 = call i32 @mtx_init(i32* @ap_boot_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %3)
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %21, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @mp_ncpus, align 4
  %8 = sub nsw i32 %7, 1
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load i32, i32* @DPCPU_SIZE, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @kmem_malloc(i32 %11, i32 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = load i8**, i8*** @dpcpu, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  store i8* %16, i8** %20, align 8
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %5

24:                                               ; preds = %5
  %25 = call i32 (...) @dcache_wbinv_poc_all()
  %26 = call i32 (...) @platform_mp_start_ap()
  %27 = call i32 (...) @check_ap()
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %44

32:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %40, %32
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @mp_ncpus, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @CPU_SET(i32 %38, i32* @all_cpus)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %33

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %30
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @kmem_malloc(i32, i32) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @platform_mp_start_ap(...) #1

declare dso_local i32 @check_ap(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
