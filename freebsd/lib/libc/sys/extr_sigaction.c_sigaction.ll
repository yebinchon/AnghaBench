; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_sigaction.c_sigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_sigaction.c_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }

@__libc_interposing = common dso_local global i64* null, align 8
@INTERPOS_sigaction = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sigaction(i32 %0, %struct.sigaction* %1, %struct.sigaction* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigaction*, align 8
  %6 = alloca %struct.sigaction*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sigaction* %1, %struct.sigaction** %5, align 8
  store %struct.sigaction* %2, %struct.sigaction** %6, align 8
  %7 = load i64*, i64** @__libc_interposing, align 8
  %8 = load i64, i64* @INTERPOS_sigaction, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32 (i32, %struct.sigaction*, %struct.sigaction*)*
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.sigaction*, %struct.sigaction** %5, align 8
  %14 = load %struct.sigaction*, %struct.sigaction** %6, align 8
  %15 = call i32 %11(i32 %12, %struct.sigaction* %13, %struct.sigaction* %14)
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
