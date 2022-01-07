; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_kevent.c_kevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_kevent.c_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }
%struct.timespec = type { i32 }

@__libc_interposing = common dso_local global i64* null, align 8
@INTERPOS_kevent = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kevent(i32 %0, %struct.kevent* %1, i32 %2, %struct.kevent* %3, i32 %4, %struct.timespec* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kevent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kevent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.kevent* %1, %struct.kevent** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.kevent* %3, %struct.kevent** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.timespec* %5, %struct.timespec** %12, align 8
  %13 = load i64*, i64** @__libc_interposing, align 8
  %14 = load i64, i64* @INTERPOS_kevent, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32 (i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*)*
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.kevent*, %struct.kevent** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.kevent*, %struct.kevent** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.timespec*, %struct.timespec** %12, align 8
  %24 = call i32 %17(i32 %18, %struct.kevent* %19, i32 %20, %struct.kevent* %21, i32 %22, %struct.timespec* %23)
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
