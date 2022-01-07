; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_vm_machdep.c_cpu_set_user_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_vm_machdep.c_cpu_set_user_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, %struct.pcb* }
%struct.TYPE_2__ = type { i32 }
%struct.pcb = type { i8*, i8* }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PSR_M_32 = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@tpidrro_el0 = common dso_local global i32 0, align 4
@tpidr_el0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_set_user_tls(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 1
  %16 = load %struct.pcb*, %struct.pcb** %15, align 8
  store %struct.pcb* %16, %struct.pcb** %6, align 8
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PSR_M_32, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %13
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.pcb*, %struct.pcb** %6, align 8
  %28 = getelementptr inbounds %struct.pcb, %struct.pcb* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.pcb*, %struct.pcb** %6, align 8
  %31 = getelementptr inbounds %struct.pcb, %struct.pcb* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = load %struct.thread*, %struct.thread** @curthread, align 8
  %34 = icmp eq %struct.thread* %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load i32, i32* @tpidrro_el0, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @WRITE_SPECIALREG(i32 %36, i8* %37)
  %39 = load i32, i32* @tpidr_el0, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @WRITE_SPECIALREG(i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %35, %25
  br label %55

43:                                               ; preds = %13
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.pcb*, %struct.pcb** %6, align 8
  %46 = getelementptr inbounds %struct.pcb, %struct.pcb* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = load %struct.thread*, %struct.thread** @curthread, align 8
  %49 = icmp eq %struct.thread* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @tpidr_el0, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @WRITE_SPECIALREG(i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %55

55:                                               ; preds = %54, %42
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @WRITE_SPECIALREG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
