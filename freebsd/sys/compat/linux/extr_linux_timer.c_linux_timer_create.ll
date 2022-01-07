; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_timer.c_linux_timer_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_timer.c_linux_timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_timer_create_args = type { i32, i32, i32* }
%struct.l_sigevent = type { i32 }
%struct.sigevent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_timer_create(%struct.thread* %0, %struct.linux_timer_create_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_timer_create_args*, align 8
  %6 = alloca %struct.l_sigevent, align 4
  %7 = alloca %struct.sigevent, align 4
  %8 = alloca %struct.sigevent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_timer_create_args* %1, %struct.linux_timer_create_args** %5, align 8
  %12 = load %struct.linux_timer_create_args*, %struct.linux_timer_create_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_timer_create_args, %struct.linux_timer_create_args* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.sigevent* null, %struct.sigevent** %8, align 8
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.linux_timer_create_args*, %struct.linux_timer_create_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_timer_create_args, %struct.linux_timer_create_args* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @copyin(i32* %20, %struct.l_sigevent* %6, i32 4)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %17
  %27 = call i32 @linux_convert_l_sigevent(%struct.l_sigevent* %6, %struct.sigevent* %7)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %26
  store %struct.sigevent* %7, %struct.sigevent** %8, align 8
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.linux_timer_create_args*, %struct.linux_timer_create_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_timer_create_args, %struct.linux_timer_create_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @linux_to_native_clockid(i32* %9, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %33
  %43 = load %struct.thread*, %struct.thread** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.sigevent*, %struct.sigevent** %8, align 8
  %46 = call i32 @kern_ktimer_create(%struct.thread* %43, i32 %44, %struct.sigevent* %45, i32* %11, i32 -1)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.linux_timer_create_args*, %struct.linux_timer_create_args** %5, align 8
  %51 = getelementptr inbounds %struct.linux_timer_create_args, %struct.linux_timer_create_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @copyout(i32* %11, i32 %52, i32 4)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.thread*, %struct.thread** %4, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @kern_ktimer_delete(%struct.thread* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %40, %30, %24
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @copyin(i32*, %struct.l_sigevent*, i32) #1

declare dso_local i32 @linux_convert_l_sigevent(%struct.l_sigevent*, %struct.sigevent*) #1

declare dso_local i32 @linux_to_native_clockid(i32*, i32) #1

declare dso_local i32 @kern_ktimer_create(%struct.thread*, i32, %struct.sigevent*, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @kern_ktimer_delete(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
