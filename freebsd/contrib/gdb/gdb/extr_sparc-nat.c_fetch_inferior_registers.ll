; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-nat.c_fetch_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-nat.c_fetch_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@current_regcache = common dso_local global %struct.regcache* null, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@SPARC_G0_REGNUM = common dso_local global i32 0, align 4
@PTRACE_GETREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't get registers\00", align 1
@sparc_gregset = common dso_local global i32 0, align 4
@PTRACE_GETFPREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't get floating point status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regcache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  store %struct.regcache* %7, %struct.regcache** %3, align 8
  %8 = load i32, i32* @inferior_ptid, align 4
  %9 = call i32 @TIDGET(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @inferior_ptid, align 4
  %14 = call i32 @PIDGET(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SPARC_G0_REGNUM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.regcache*, %struct.regcache** %3, align 8
  %21 = load i32, i32* @SPARC_G0_REGNUM, align 4
  %22 = call i32 @regcache_raw_supply(%struct.regcache* %20, i32 %21, i32* null)
  br label %64

23:                                               ; preds = %15
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @sparc_gregset_supplies_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @PTRACE_GETREGS, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ptrtoint i32* %5 to i32
  %34 = call i32 @ptrace(i32 %31, i32 %32, i32 %33, i32 0)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @perror_with_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* @sparc_gregset, align 4
  %40 = load %struct.regcache*, %struct.regcache** %3, align 8
  %41 = call i32 @sparc_supply_gregset(i32 %39, %struct.regcache* %40, i32 -1, i32* %5)
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %64

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @sparc_fpregset_supplies_p(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49, %46
  %54 = load i32, i32* @PTRACE_GETFPREGS, align 4
  %55 = load i32, i32* %4, align 4
  %56 = ptrtoint i32* %6 to i32
  %57 = call i32 @ptrace(i32 %54, i32 %55, i32 %56, i32 0)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @perror_with_name(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  %62 = load %struct.regcache*, %struct.regcache** %3, align 8
  %63 = call i32 @sparc_supply_fpregset(%struct.regcache* %62, i32 -1, i32* %6)
  br label %64

64:                                               ; preds = %19, %44, %61, %49
  ret void
}

declare dso_local i32 @TIDGET(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i32*) #1

declare dso_local i64 @sparc_gregset_supplies_p(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @sparc_supply_gregset(i32, %struct.regcache*, i32, i32*) #1

declare dso_local i64 @sparc_fpregset_supplies_p(i32) #1

declare dso_local i32 @sparc_supply_fpregset(%struct.regcache*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
