; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_store_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_store_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32, i32, i32, i32* }

@ARM_A1_REGNUM = common dso_local global i32 0, align 4
@ARM_SP_REGNUM = common dso_local global i32 0, align 4
@ARM_LR_REGNUM = common dso_local global i32 0, align 4
@arm_apcs_32 = common dso_local global i64 0, align 8
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@ARM_PS_REGNUM = common dso_local global i32 0, align 4
@PT_SETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to store general registers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @store_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_regs() #0 {
  %1 = alloca %struct.reg, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ARM_A1_REGNUM, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %0
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ARM_SP_REGNUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds %struct.reg, %struct.reg* %1, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @regcache_collect(i32 %12, i8* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7

23:                                               ; preds = %7
  %24 = load i32, i32* @ARM_SP_REGNUM, align 4
  %25 = getelementptr inbounds %struct.reg, %struct.reg* %1, i32 0, i32 3
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @regcache_collect(i32 %24, i8* %26)
  %28 = load i32, i32* @ARM_LR_REGNUM, align 4
  %29 = getelementptr inbounds %struct.reg, %struct.reg* %1, i32 0, i32 2
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 @regcache_collect(i32 %28, i8* %30)
  %32 = load i64, i64* @arm_apcs_32, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load i32, i32* @ARM_PC_REGNUM, align 4
  %36 = getelementptr inbounds %struct.reg, %struct.reg* %1, i32 0, i32 0
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @regcache_collect(i32 %35, i8* %37)
  %39 = load i32, i32* @ARM_PS_REGNUM, align 4
  %40 = getelementptr inbounds %struct.reg, %struct.reg* %1, i32 0, i32 1
  %41 = bitcast i32* %40 to i8*
  %42 = call i32 @regcache_collect(i32 %39, i8* %41)
  br label %60

43:                                               ; preds = %23
  %44 = load i32, i32* @ARM_PC_REGNUM, align 4
  %45 = bitcast i32* %4 to i8*
  %46 = call i32 @regcache_collect(i32 %44, i8* %45)
  %47 = load i32, i32* @ARM_PS_REGNUM, align 4
  %48 = bitcast i32* %5 to i8*
  %49 = call i32 @regcache_collect(i32 %47, i8* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ADDR_BITS_REMOVE(i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ADDR_BITS_REMOVE(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.reg, %struct.reg* %1, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  br label %60

60:                                               ; preds = %43, %34
  %61 = load i32, i32* @PT_SETREGS, align 4
  %62 = load i32, i32* @inferior_ptid, align 4
  %63 = call i32 @PIDGET(i32 %62)
  %64 = ptrtoint %struct.reg* %1 to i32
  %65 = call i32 @ptrace(i32 %61, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %2, align 4
  %66 = load i32, i32* %2, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %60
  ret void
}

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
