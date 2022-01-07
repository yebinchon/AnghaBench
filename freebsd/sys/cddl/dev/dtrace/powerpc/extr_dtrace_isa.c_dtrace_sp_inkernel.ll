; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_sp_inkernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_sp_inkernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }

@RETURN_OFFSET = common dso_local global i64 0, align 8
@OFFSET = common dso_local global i32 0, align 4
@trapexit = common dso_local global i32 0, align 4
@asttrapexit = common dso_local global i32 0, align 4
@FRAME_OFFSET = common dso_local global i64 0, align 8
@PSL_PR = common dso_local global i32 0, align 4
@RETURN_OFFSET64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @dtrace_sp_inkernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_sp_inkernel(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @INKERNEL(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 15
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %50

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @RETURN_OFFSET, align 8
  %17 = add i64 %15, %16
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %14
  store i32 0, i32* %2, align 4
  br label %50

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @OFFSET, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp eq i32 %30, ptrtoint (i32* @trapexit to i32)
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @OFFSET, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp eq i32 %35, ptrtoint (i32* @asttrapexit to i32)
  br i1 %36, label %37, label %49

37:                                               ; preds = %32, %27
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @FRAME_OFFSET, align 8
  %40 = add i64 %38, %39
  %41 = inttoptr i64 %40 to %struct.trapframe*
  store %struct.trapframe* %41, %struct.trapframe** %4, align 8
  %42 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PSL_PR, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %37, %26, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @INKERNEL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
