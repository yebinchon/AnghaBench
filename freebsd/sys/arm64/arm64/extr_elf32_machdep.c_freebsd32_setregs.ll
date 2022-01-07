; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_elf32_machdep.c_freebsd32_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_elf32_machdep.c_freebsd32_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32, i8*, i8** }
%struct.image_params = type { i8* }

@PSR_M_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.image_params*, i8*)* @freebsd32_setregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freebsd32_setregs(%struct.thread* %0, %struct.image_params* %1, i8* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  store %struct.trapframe* %10, %struct.trapframe** %7, align 8
  %11 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %12 = call i32 @memset(%struct.trapframe* %11, i32 0, i32 24)
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 2
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %13, i8** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 13
  store i8* %18, i8** %22, align 8
  %23 = load %struct.image_params*, %struct.image_params** %5, align 8
  %24 = getelementptr inbounds %struct.image_params, %struct.image_params* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %27 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %26, i32 0, i32 2
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 14
  store i8* %25, i8** %29, align 8
  %30 = load %struct.image_params*, %struct.image_params** %5, align 8
  %31 = getelementptr inbounds %struct.image_params, %struct.image_params* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %34 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @PSR_M_32, align 4
  %36 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local i32 @memset(%struct.trapframe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
