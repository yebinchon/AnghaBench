; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sleep.c___sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sleep.c___sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@__libc_interposing = common dso_local global i64* null, align 8
@INTERPOS_nanosleep = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @INT_MAX, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @INT_MAX, align 4
  %12 = sub i32 %10, %11
  %13 = load i32, i32* @INT_MAX, align 4
  %14 = call i32 @__sleep(i32 %13)
  %15 = add i32 %12, %14
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** @__libc_interposing, align 8
  %21 = load i64, i64* @INTERPOS_nanosleep, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32 (%struct.timespec*, %struct.timespec*)*
  %25 = call i32 %24(%struct.timespec* %4, %struct.timespec* %5)
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %42

28:                                               ; preds = %16
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = add i32 %36, %40
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %34, %32, %27, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
