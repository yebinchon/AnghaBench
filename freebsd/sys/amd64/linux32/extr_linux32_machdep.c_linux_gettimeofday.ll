; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_gettimeofday_args = type { i32*, i32* }
%struct.timeval = type { i32, i32 }
%struct.timezone = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_gettimeofday(%struct.thread* %0, %struct.linux_gettimeofday_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_gettimeofday_args*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timezone, align 8
  %7 = alloca %struct.timezone, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_gettimeofday_args* %1, %struct.linux_gettimeofday_args** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.linux_gettimeofday_args*, %struct.linux_gettimeofday_args** %4, align 8
  %10 = getelementptr inbounds %struct.linux_gettimeofday_args, %struct.linux_gettimeofday_args* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = call i32 @microtime(%struct.timeval* %5)
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.timezone, %struct.timezone* %6, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.timezone, %struct.timezone* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load %struct.linux_gettimeofday_args*, %struct.linux_gettimeofday_args** %4, align 8
  %22 = getelementptr inbounds %struct.linux_gettimeofday_args, %struct.linux_gettimeofday_args* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @copyout(%struct.timezone* %6, i32* %23, i32 24)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %13, %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.linux_gettimeofday_args*, %struct.linux_gettimeofday_args** %4, align 8
  %30 = getelementptr inbounds %struct.linux_gettimeofday_args, %struct.linux_gettimeofday_args* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.timezone, %struct.timezone* %7, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.timezone, %struct.timezone* %7, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.linux_gettimeofday_args*, %struct.linux_gettimeofday_args** %4, align 8
  %37 = getelementptr inbounds %struct.linux_gettimeofday_args, %struct.linux_gettimeofday_args* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @copyout(%struct.timezone* %7, i32* %38, i32 24)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %33, %28, %25
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @copyout(%struct.timezone*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
