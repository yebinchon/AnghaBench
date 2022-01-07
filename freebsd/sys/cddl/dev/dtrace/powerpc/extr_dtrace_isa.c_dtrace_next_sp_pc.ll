; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_next_sp_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_next_sp_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i64*, i64 }

@RETURN_OFFSET = common dso_local global i64 0, align 8
@OFFSET = common dso_local global i64 0, align 8
@trapexit = common dso_local global i32 0, align 4
@asttrapexit = common dso_local global i32 0, align 4
@FRAME_OFFSET = common dso_local global i64 0, align 8
@RETURN_OFFSET64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64*)* @dtrace_next_sp_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_next_sp_pc(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.trapframe*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @RETURN_OFFSET, align 8
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to i64*
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = icmp eq i64 %16, ptrtoint (i32* @trapexit to i64)
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp eq i64 %21, ptrtoint (i32* @asttrapexit to i64)
  br i1 %22, label %23, label %46

23:                                               ; preds = %18, %3
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @FRAME_OFFSET, align 8
  %26 = add i64 %24, %25
  %27 = inttoptr i64 %26 to %struct.trapframe*
  store %struct.trapframe* %27, %struct.trapframe** %8, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i64*, i64** %6, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %42 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  br label %60

46:                                               ; preds = %18
  %47 = load i64*, i64** %5, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %4, align 8
  %51 = inttoptr i64 %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i64*, i64** %6, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %7, align 8
  %59 = load i64*, i64** %6, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %45, %57, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
