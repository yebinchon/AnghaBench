; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_store_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_store_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32*, i32, i32, i32 }

@PT_GETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to fetch general registers\00", align 1
@arm_apcs_32 = common dso_local global i32 0, align 4
@PT_SETREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unable to write register %d to inferior\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @store_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reg, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @PT_GETREGS, align 4
  %8 = load i32, i32* @inferior_ptid, align 4
  %9 = call i32 @PIDGET(i32 %8)
  %10 = ptrtoint %struct.reg* %3 to i32
  %11 = call i32 @ptrace(i32 %7, i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %92

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  switch i32 %17, label %72 [
    i32 128, label %18
    i32 131, label %22
    i32 130, label %26
    i32 129, label %49
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 4
  %20 = bitcast i32* %19 to i8*
  %21 = call i32 @regcache_collect(i32 128, i8* %20)
  br label %81

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 3
  %24 = bitcast i32* %23 to i8*
  %25 = call i32 @regcache_collect(i32 131, i8* %24)
  br label %81

26:                                               ; preds = %16
  %27 = load i32, i32* @arm_apcs_32, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 0
  %31 = bitcast i32* %30 to i8*
  %32 = call i32 @regcache_collect(i32 130, i8* %31)
  br label %48

33:                                               ; preds = %26
  %34 = bitcast i32* %5 to i8*
  %35 = call i32 @regcache_collect(i32 130, i8* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ADDR_BITS_REMOVE(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ADDR_BITS_REMOVE(i32 %39)
  %41 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, %40
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %33, %29
  br label %81

49:                                               ; preds = %16
  %50 = load i32, i32* @arm_apcs_32, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 2
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @regcache_collect(i32 129, i8* %54)
  br label %71

56:                                               ; preds = %49
  %57 = bitcast i32* %6 to i8*
  %58 = call i32 @regcache_collect(i32 129, i8* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ADDR_BITS_REMOVE(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ADDR_BITS_REMOVE(i32 %64)
  %66 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %56, %52
  br label %81

72:                                               ; preds = %16
  %73 = load i32, i32* %2, align 4
  %74 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = bitcast i32* %78 to i8*
  %80 = call i32 @regcache_collect(i32 %73, i8* %79)
  br label %81

81:                                               ; preds = %72, %71, %48, %22, %18
  %82 = load i32, i32* @PT_SETREGS, align 4
  %83 = load i32, i32* @inferior_ptid, align 4
  %84 = call i32 @PIDGET(i32 %83)
  %85 = ptrtoint %struct.reg* %3 to i32
  %86 = call i32 @ptrace(i32 %82, i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %2, align 4
  %91 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %14, %89, %81
  ret void
}

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
