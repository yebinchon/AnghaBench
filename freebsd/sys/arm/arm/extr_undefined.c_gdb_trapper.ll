; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_undefined.c_gdb_trapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_undefined.c_gdb_trapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.trapframe = type { i32 }
%struct.TYPE_4__ = type { i32*, i32, i8* }

@curthread = common dso_local global %struct.thread* null, align 8
@thread0 = common dso_local global %struct.thread zeroinitializer, align 4
@GDB_BREAKPOINT = common dso_local global i64 0, align 8
@GDB5_BREAKPOINT = common dso_local global i64 0, align 8
@FAULT_USER = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i8* null, align 8
@TRAP_BRKPT = common dso_local global i32 0, align 4
@PSR_T = common dso_local global i32 0, align 4
@PTRACE_BREAKPOINT = common dso_local global i64 0, align 8
@TRAP_TRACE = common dso_local global i32 0, align 4
@T_BREAKPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.trapframe*, i32)* @gdb_trapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdb_trapper(i64 %0, i64 %1, %struct.trapframe* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.trapframe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.trapframe* %2, %struct.trapframe** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.thread*, %struct.thread** @curthread, align 8
  %14 = icmp eq %struct.thread* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %18

16:                                               ; preds = %4
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi %struct.thread* [ @thread0, %15 ], [ %17, %16 ]
  store %struct.thread* %19, %struct.thread** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @GDB_BREAKPOINT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @GDB5_BREAKPOINT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @FAULT_USER, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = call i32 @ksiginfo_init_trap(%struct.TYPE_4__* %11)
  %33 = load i8*, i8** @SIGTRAP, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @TRAP_BRKPT, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %38, i32** %39, align 8
  %40 = load %struct.thread*, %struct.thread** %10, align 8
  %41 = call i32 @trapsignal(%struct.thread* %40, %struct.TYPE_4__* %11)
  store i32 0, i32* %5, align 4
  br label %93

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @FAULT_USER, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %43
  %48 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PSR_T, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %47
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @PTRACE_BREAKPOINT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load %struct.thread*, %struct.thread** %10, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PROC_LOCK(i32 %61)
  %63 = load %struct.thread*, %struct.thread** %10, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @_PHOLD(i32 %65)
  %67 = load %struct.thread*, %struct.thread** %10, align 8
  %68 = call i32 @ptrace_clear_single_step(%struct.thread* %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.thread*, %struct.thread** %10, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @_PRELE(i32 %71)
  %73 = load %struct.thread*, %struct.thread** %10, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PROC_UNLOCK(i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %58
  %80 = call i32 @ksiginfo_init_trap(%struct.TYPE_4__* %11)
  %81 = load i8*, i8** @SIGTRAP, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* @TRAP_TRACE, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = load i64, i64* %6, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %86, i32** %87, align 8
  %88 = load %struct.thread*, %struct.thread** %10, align 8
  %89 = call i32 @trapsignal(%struct.thread* %88, %struct.TYPE_4__* %11)
  store i32 0, i32* %5, align 4
  br label %93

90:                                               ; preds = %58
  br label %91

91:                                               ; preds = %90, %54, %47
  br label %92

92:                                               ; preds = %91, %43
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %79, %31
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @ksiginfo_init_trap(%struct.TYPE_4__*) #1

declare dso_local i32 @trapsignal(%struct.thread*, %struct.TYPE_4__*) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @_PHOLD(i32) #1

declare dso_local i32 @ptrace_clear_single_step(%struct.thread*) #1

declare dso_local i32 @_PRELE(i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
