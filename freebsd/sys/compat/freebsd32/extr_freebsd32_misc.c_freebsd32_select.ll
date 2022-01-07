; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_select_args = type { i32, i32, i32, i32, i32* }
%struct.timeval32 = type { i32 }
%struct.timeval = type { i32 }

@tv_sec = common dso_local global i32 0, align 4
@tv_usec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_select(%struct.thread* %0, %struct.freebsd32_select_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_select_args*, align 8
  %6 = alloca %struct.timeval32, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_select_args* %1, %struct.freebsd32_select_args** %5, align 8
  %10 = load %struct.freebsd32_select_args*, %struct.freebsd32_select_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_select_args, %struct.freebsd32_select_args* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.freebsd32_select_args*, %struct.freebsd32_select_args** %5, align 8
  %16 = getelementptr inbounds %struct.freebsd32_select_args, %struct.freebsd32_select_args* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @copyin(i32* %17, %struct.timeval32* %6, i32 4)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %14
  %24 = load i32, i32* @tv_sec, align 4
  %25 = getelementptr inbounds %struct.timeval32, %struct.timeval32* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CP(i32 %26, i32 %28, i32 %24)
  %30 = load i32, i32* @tv_usec, align 4
  %31 = getelementptr inbounds %struct.timeval32, %struct.timeval32* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CP(i32 %32, i32 %34, i32 %30)
  store %struct.timeval* %7, %struct.timeval** %8, align 8
  br label %37

36:                                               ; preds = %2
  store %struct.timeval* null, %struct.timeval** %8, align 8
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = load %struct.freebsd32_select_args*, %struct.freebsd32_select_args** %5, align 8
  %40 = getelementptr inbounds %struct.freebsd32_select_args, %struct.freebsd32_select_args* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.freebsd32_select_args*, %struct.freebsd32_select_args** %5, align 8
  %43 = getelementptr inbounds %struct.freebsd32_select_args, %struct.freebsd32_select_args* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.freebsd32_select_args*, %struct.freebsd32_select_args** %5, align 8
  %46 = getelementptr inbounds %struct.freebsd32_select_args, %struct.freebsd32_select_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.freebsd32_select_args*, %struct.freebsd32_select_args** %5, align 8
  %49 = getelementptr inbounds %struct.freebsd32_select_args, %struct.freebsd32_select_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.timeval*, %struct.timeval** %8, align 8
  %52 = call i32 @kern_select(%struct.thread* %38, i32 %41, i32 %44, i32 %47, i32 %50, %struct.timeval* %51, i32 32)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %37, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @copyin(i32*, %struct.timeval32*, i32) #1

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @kern_select(%struct.thread*, i32, i32, i32, i32, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
