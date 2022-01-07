; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_settimeofday.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_settimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_settimeofday_args = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.timeval = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_settimeofday(%struct.thread* %0, %struct.linux_settimeofday_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_settimeofday_args*, align 8
  %6 = alloca %struct.timezone, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca %struct.timezone, align 4
  %10 = alloca %struct.timezone*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_settimeofday_args* %1, %struct.linux_settimeofday_args** %5, align 8
  %12 = load %struct.linux_settimeofday_args*, %struct.linux_settimeofday_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_settimeofday_args, %struct.linux_settimeofday_args* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.linux_settimeofday_args*, %struct.linux_settimeofday_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_settimeofday_args, %struct.linux_settimeofday_args* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @copyin(i64 %19, %struct.timezone* %6, i32 8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.timezone, %struct.timezone* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.timezone, %struct.timezone* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  store %struct.timeval* %7, %struct.timeval** %8, align 8
  br label %33

32:                                               ; preds = %2
  store %struct.timeval* null, %struct.timeval** %8, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.linux_settimeofday_args*, %struct.linux_settimeofday_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_settimeofday_args, %struct.linux_settimeofday_args* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.linux_settimeofday_args*, %struct.linux_settimeofday_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_settimeofday_args, %struct.linux_settimeofday_args* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @copyin(i64 %41, %struct.timezone* %9, i32 8)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %38
  store %struct.timezone* %9, %struct.timezone** %10, align 8
  br label %49

48:                                               ; preds = %33
  store %struct.timezone* null, %struct.timezone** %10, align 8
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = load %struct.timeval*, %struct.timeval** %8, align 8
  %52 = load %struct.timezone*, %struct.timezone** %10, align 8
  %53 = call i32 @kern_settimeofday(%struct.thread* %50, %struct.timeval* %51, %struct.timezone* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %45, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @copyin(i64, %struct.timezone*, i32) #1

declare dso_local i32 @kern_settimeofday(%struct.thread*, %struct.timeval*, %struct.timezone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
