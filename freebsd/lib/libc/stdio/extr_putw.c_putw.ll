; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_putw.c_putw.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_putw.c_putw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__suio = type { i32, i32, %struct.__siov* }
%struct.__siov = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putw(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.__suio, align 8
  %7 = alloca %struct.__siov, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = getelementptr inbounds %struct.__siov, %struct.__siov* %7, i32 0, i32 0
  store i32* %3, i32** %8, align 8
  %9 = getelementptr inbounds %struct.__siov, %struct.__siov* %7, i32 0, i32 1
  store i32 4, i32* %9, align 8
  %10 = getelementptr inbounds %struct.__suio, %struct.__suio* %6, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = getelementptr inbounds %struct.__suio, %struct.__suio* %6, i32 0, i32 2
  store %struct.__siov* %7, %struct.__siov** %11, align 8
  %12 = getelementptr inbounds %struct.__suio, %struct.__suio* %6, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @FLOCKFILE_CANCELSAFE(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @__sfvwrite(i32* %15, %struct.__suio* %6)
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @FLOCKFILE_CANCELSAFE(i32*) #1

declare dso_local i32 @__sfvwrite(i32*, %struct.__suio*) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
