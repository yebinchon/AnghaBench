; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb*, %struct.TYPE_2__* }
%struct.pcb = type { i32, i64, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@L1_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_activate(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vmspace_pmap(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.pcb*, %struct.pcb** %14, align 8
  store %struct.pcb* %15, %struct.pcb** %4, align 8
  %16 = call i32 (...) @critical_enter()
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.pcb*, %struct.pcb** %4, align 8
  %19 = call i32 @pmap_set_pcb_pagedir(i32 %17, %struct.pcb* %18)
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = load %struct.thread*, %struct.thread** @curthread, align 8
  %22 = icmp eq %struct.thread* %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %1
  %24 = call i32 asm sideeffect "mrc p15, 0, $0, c2, c0, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %24, i32* %6, align 4
  %25 = call i32 asm sideeffect "mrc p15, 0, $0, c3, c0, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @L1_TABLE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.pcb*, %struct.pcb** %4, align 8
  %33 = getelementptr inbounds %struct.pcb, %struct.pcb* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.pcb*, %struct.pcb** %4, align 8
  %40 = getelementptr inbounds %struct.pcb, %struct.pcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (...) @critical_exit()
  br label %68

45:                                               ; preds = %37, %23
  %46 = load %struct.pcb*, %struct.pcb** %4, align 8
  %47 = getelementptr inbounds %struct.pcb, %struct.pcb* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.pcb*, %struct.pcb** %4, align 8
  %52 = getelementptr inbounds %struct.pcb, %struct.pcb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.pcb*, %struct.pcb** %4, align 8
  %55 = getelementptr inbounds %struct.pcb, %struct.pcb* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.pcb*, %struct.pcb** %4, align 8
  %59 = getelementptr inbounds %struct.pcb, %struct.pcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cpu_domains(i32 %60)
  %62 = load %struct.pcb*, %struct.pcb** %4, align 8
  %63 = getelementptr inbounds %struct.pcb, %struct.pcb* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @cpu_setttb(i64 %64)
  br label %66

66:                                               ; preds = %57, %1
  %67 = call i32 (...) @critical_exit()
  br label %68

68:                                               ; preds = %66, %43
  ret void
}

declare dso_local i32 @vmspace_pmap(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @pmap_set_pcb_pagedir(i32, %struct.pcb*) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @cpu_domains(i32) #1

declare dso_local i32 @cpu_setttb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 885}
!3 = !{i32 950}
