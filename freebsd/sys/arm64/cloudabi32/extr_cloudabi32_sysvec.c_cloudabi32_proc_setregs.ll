; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_proc_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_proc_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32, i32, i64* }
%struct.image_params = type { i32 }

@PSR_AARCH32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.image_params*, i64)* @cloudabi32_proc_setregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cloudabi32_proc_setregs(%struct.thread* %0, %struct.image_params* %1, i64 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  store %struct.trapframe* %10, %struct.trapframe** %7, align 8
  %11 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %12 = call i32 @memset(%struct.trapframe* %11, i32 0, i32 16)
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @roundup(i32 4, i32 4)
  %15 = add i64 %13, %14
  %16 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %17 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %15, i64* %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @STACKALIGN(i64 %20)
  %22 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 13
  store i64 %21, i64* %25, align 8
  %26 = load %struct.image_params*, %struct.image_params** %5, align 8
  %27 = getelementptr inbounds %struct.image_params, %struct.image_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %30 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @PSR_AARCH32, align 4
  %32 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %33 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @TO_PTR(i64 %37)
  %39 = call i32 @cpu_set_user_tls(%struct.thread* %36, i32 %38)
  ret void
}

declare dso_local i32 @memset(%struct.trapframe*, i32, i32) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i64 @STACKALIGN(i64) #1

declare dso_local i32 @cpu_set_user_tls(%struct.thread*, i32) #1

declare dso_local i32 @TO_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
