; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_vsyscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32, i32, i64, i32 }

@LINUX_VSYSCALL_START = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINUX_VSYSCALL_SZ = common dso_local global i32 0, align 4
@linux_vsyscall_vector = common dso_local global i32* null, align 8
@PSL_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @linux_vsyscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_vsyscall(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  store %struct.trapframe* %11, %struct.trapframe** %4, align 8
  %12 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @LINUX_VSYSCALL_START, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @__predict_true(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LINUX_VSYSCALL_SZ, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %2, align 4
  br label %79

32:                                               ; preds = %22
  %33 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %34 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LINUX_VSYSCALL_START, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* @LINUX_VSYSCALL_SZ, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** @linux_vsyscall_vector, align 8
  %42 = call i32 @nitems(i32* %41)
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %32
  %47 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @copyin(i8* %50, i32* %5, i32 4)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %79

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %59 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** @linux_vsyscall_vector, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 8
  store i64 %70, i64* %68, align 8
  %71 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %72 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PSL_T, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.thread*, %struct.thread** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @amd64_syscall(%struct.thread* %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %56, %54, %44, %30, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @copyin(i8*, i32*, i32) #1

declare dso_local i32 @amd64_syscall(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
