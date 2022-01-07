; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace_getregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace_getregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ptrace_lwpinfo = type { i32 }
%struct.reg = type { i32 }
%struct.linux_pt_reg = type { i32, i32, i32 }

@PT_GETREGS = common dso_local global i32 0, align 4
@PT_LWPINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PT_LWPINFO failed with error %d\00", align 1
@PL_FLAG_SCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i8*)* @linux_ptrace_getregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ptrace_getregs(%struct.thread* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ptrace_lwpinfo, align 4
  %9 = alloca %struct.reg, align 4
  %10 = alloca %struct.linux_pt_reg, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = load i32, i32* @PT_GETREGS, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @kern_ptrace(%struct.thread* %12, i32 %13, i32 %14, %struct.reg* %9, i32 0)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %3
  %21 = call i32 @map_regs_to_linux(%struct.reg* %9, %struct.linux_pt_reg* %10)
  %22 = load %struct.thread*, %struct.thread** %5, align 8
  %23 = load i32, i32* @PT_LWPINFO, align 4
  %24 = load i32, i32* %6, align 4
  %25 = bitcast %struct.ptrace_lwpinfo* %8 to %struct.reg*
  %26 = call i32 @kern_ptrace(%struct.thread* %22, i32 %23, i32 %24, %struct.reg* %25, i32 4)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.thread*, %struct.thread** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @linux_msg(%struct.thread* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PL_FLAG_SCE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.linux_pt_reg, %struct.linux_pt_reg* %10, i32 0, i32 0
  store i32 -38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.linux_pt_reg, %struct.linux_pt_reg* %10, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.linux_pt_reg, %struct.linux_pt_reg* %10, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @copyout(%struct.linux_pt_reg* %10, i8* %46, i32 12)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %29, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @kern_ptrace(%struct.thread*, i32, i32, %struct.reg*, i32) #1

declare dso_local i32 @map_regs_to_linux(%struct.reg*, %struct.linux_pt_reg*) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*, i32) #1

declare dso_local i32 @copyout(%struct.linux_pt_reg*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
