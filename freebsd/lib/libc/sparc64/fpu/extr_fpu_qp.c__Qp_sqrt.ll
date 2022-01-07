; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu_qp.c__Qp_sqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu_qp.c__Qp_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.fpn = type { i32 }

@FSR_AEXC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Qp_sqrt(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fpemu, align 8
  %6 = alloca %struct.fpn*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 1
  call void asm sideeffect "stx %fsr, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %7) #2, !srcloc !2
  %8 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 31
  %13 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 2
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__fpu_qtof(%struct.TYPE_2__* %17, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = call %struct.fpn* @__fpu_sqrt(%struct.fpemu* %5)
  store %struct.fpn* %33, %struct.fpn** %6, align 8
  %34 = load %struct.fpn*, %struct.fpn** %6, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @__fpu_ftoq(%struct.fpemu* %5, %struct.fpn* %34, i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FSR_AEXC_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %5, i32 0, i32 1
  call void asm sideeffect "ldx $0, %fsr", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %46) #2, !srcloc !3
  ret void
}

declare dso_local i32 @__fpu_qtof(%struct.TYPE_2__*, i32, i32, i32, i32) #1

declare dso_local %struct.fpn* @__fpu_sqrt(%struct.fpemu*) #1

declare dso_local i32 @__fpu_ftoq(%struct.fpemu*, %struct.fpn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 600}
!3 = !{i32 892}
