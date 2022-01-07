; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_win32.c_os_gmtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_win32.c_os_gmtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_tm = type { i64, i64, i32, i32, i32, i32 }
%struct.tm = type { i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_gmtime(i32 %0, %struct.os_tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.os_tm*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.os_tm* %1, %struct.os_tm** %5, align 8
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = call %struct.tm* @gmtime(i32* %7)
  store %struct.tm* %9, %struct.tm** %6, align 8
  %10 = load %struct.tm*, %struct.tm** %6, align 8
  %11 = icmp eq %struct.tm* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.tm*, %struct.tm** %6, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.os_tm*, %struct.os_tm** %5, align 8
  %18 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tm*, %struct.tm** %6, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.os_tm*, %struct.os_tm** %5, align 8
  %23 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.tm*, %struct.tm** %6, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.os_tm*, %struct.os_tm** %5, align 8
  %28 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.tm*, %struct.tm** %6, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.os_tm*, %struct.os_tm** %5, align 8
  %33 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tm*, %struct.tm** %6, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.os_tm*, %struct.os_tm** %5, align 8
  %39 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.tm*, %struct.tm** %6, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1900
  %44 = load %struct.os_tm*, %struct.os_tm** %5, align 8
  %45 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %13, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.tm* @gmtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
