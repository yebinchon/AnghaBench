; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/mips/gen/hardfloat/extr_fpsetround.c_fpsetround.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/mips/gen/hardfloat/extr_fpsetround.c_fpsetround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpsetround(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 asm "cfc1 $0,$$31", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, -4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 3
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  call void asm sideeffect "ctc1 $0,$$31", "r,~{dirflag},~{fpsr},~{flags}"(i32 %13) #2, !srcloc !3
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 3
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 243}
!3 = !{i32 334}
