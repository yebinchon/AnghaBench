; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_ppoll.c_ppoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_ppoll.c_ppoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32 }
%struct.timespec = type { i32 }

@__libc_interposing = common dso_local global i64* null, align 8
@INTERPOS_ppoll = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppoll(%struct.pollfd* %0, i32 %1, %struct.timespec* noalias %2, i32* noalias %3) #0 {
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32*, align 8
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i64*, i64** @__libc_interposing, align 8
  %10 = load i64, i64* @INTERPOS_ppoll, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32 (%struct.pollfd*, i32, %struct.timespec*, i32*)*
  %14 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.timespec*, %struct.timespec** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 %13(%struct.pollfd* %14, i32 %15, %struct.timespec* %16, i32* %17)
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
