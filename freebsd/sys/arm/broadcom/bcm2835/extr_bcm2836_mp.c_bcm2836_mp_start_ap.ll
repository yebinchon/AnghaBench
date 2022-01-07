; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836_mp.c_bcm2836_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836_mp.c_bcm2836_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"platform_mp_start_ap\0A\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@ARM_LOCAL_BASE = common dso_local global i32 0, align 4
@ARM_LOCAL_SIZE = common dso_local global i32 0, align 4
@bs_periph = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't map local peripheral\0A\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@mpentry = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"can't start for CPU%d\0A\00", align 1
@all_cpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm2836_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @fdtbus_bs_tag, align 4
  %8 = load i32, i32* @ARM_LOCAL_BASE, align 4
  %9 = load i32, i32* @ARM_LOCAL_SIZE, align 4
  %10 = call i64 @bus_space_map(i32 %7, i32 %8, i32 %9, i32 0, i32* @bs_periph)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @mp_ncpus, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @MBOX0CLR_CORE(i32 %20)
  %22 = call i32 @BSWR4(i32 %21, i64 4294967295)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @MBOX3CLR_CORE(i32 %23)
  %25 = call i32 @BSWR4(i32 %24, i64 4294967295)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %15

29:                                               ; preds = %15
  %30 = call i32 (...) @wmb()
  %31 = call i32 (...) @dcache_wbinv_poc_all()
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %68, %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @mp_ncpus, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @MBOX3SET_CORE(i32 %37)
  %39 = load i64, i64* @mpentry, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @pmap_kextract(i32 %40)
  %42 = call i32 @BSWR4(i32 %38, i64 %41)
  %43 = call i32 (...) @dsb()
  %44 = call i32 (...) @sev()
  store i32 1000, i32* %5, align 4
  br label %45

45:                                               ; preds = %62, %36
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MBOX3CLR_CORE(i32 %46)
  %48 = call i64 @BSRD4(i32 %47)
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %63

52:                                               ; preds = %45
  %53 = call i32 @DELAY(i32 100)
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %63

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  br i1 true, label %45, label %63

63:                                               ; preds = %62, %58, %51
  %64 = call i32 (...) @dsb()
  %65 = call i32 (...) @sev()
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @CPU_SET(i32 %66, i32* @all_cpus)
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %32

71:                                               ; preds = %32
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @BSWR4(i32, i64) #1

declare dso_local i32 @MBOX0CLR_CORE(i32) #1

declare dso_local i32 @MBOX3CLR_CORE(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @MBOX3SET_CORE(i32) #1

declare dso_local i64 @pmap_kextract(i32) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

declare dso_local i64 @BSRD4(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
