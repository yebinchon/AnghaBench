; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_fetch_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_fetch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32*, i32, i32, i32, i32 }

@PT_GETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to fetch general register\00", align 1
@arm_apcs_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fetch_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reg, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PT_GETREGS, align 4
  %6 = load i32, i32* @inferior_ptid, align 4
  %7 = call i32 @PIDGET(i32 %6)
  %8 = ptrtoint %struct.reg* %3 to i32
  %9 = call i32 @ptrace(i32 %5, i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %53

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %44 [
    i32 128, label %16
    i32 131, label %20
    i32 130, label %24
    i32 129, label %32
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 4
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @supply_register(i32 128, i8* %18)
  br label %53

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 3
  %22 = bitcast i32* %21 to i8*
  %23 = call i32 @supply_register(i32 131, i8* %22)
  br label %53

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ADDR_BITS_REMOVE(i32 %26)
  %28 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 1
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 @supply_register(i32 130, i8* %30)
  br label %53

32:                                               ; preds = %14
  %33 = load i32, i32* @arm_apcs_32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 2
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @supply_register(i32 129, i8* %37)
  br label %43

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 1
  %41 = bitcast i32* %40 to i8*
  %42 = call i32 @supply_register(i32 129, i8* %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %53

44:                                               ; preds = %14
  %45 = load i32, i32* %2, align 4
  %46 = getelementptr inbounds %struct.reg, %struct.reg* %3, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @supply_register(i32 %45, i8* %51)
  br label %53

53:                                               ; preds = %12, %44, %43, %24, %20, %16
  ret void
}

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
