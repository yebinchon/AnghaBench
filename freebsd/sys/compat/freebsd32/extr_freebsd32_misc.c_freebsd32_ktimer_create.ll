; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_ktimer_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_ktimer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_ktimer_create_args = type { i32, i32, i32* }
%struct.sigevent32 = type { i32 }
%struct.sigevent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_ktimer_create(%struct.thread* %0, %struct.freebsd32_ktimer_create_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_ktimer_create_args*, align 8
  %6 = alloca %struct.sigevent32, align 4
  %7 = alloca %struct.sigevent, align 4
  %8 = alloca %struct.sigevent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_ktimer_create_args* %1, %struct.freebsd32_ktimer_create_args** %5, align 8
  %11 = load %struct.freebsd32_ktimer_create_args*, %struct.freebsd32_ktimer_create_args** %5, align 8
  %12 = getelementptr inbounds %struct.freebsd32_ktimer_create_args, %struct.freebsd32_ktimer_create_args* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.sigevent* null, %struct.sigevent** %8, align 8
  br label %32

16:                                               ; preds = %2
  store %struct.sigevent* %7, %struct.sigevent** %8, align 8
  %17 = load %struct.freebsd32_ktimer_create_args*, %struct.freebsd32_ktimer_create_args** %5, align 8
  %18 = getelementptr inbounds %struct.freebsd32_ktimer_create_args, %struct.freebsd32_ktimer_create_args* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @copyin(i32* %19, %struct.sigevent32* %6, i32 4)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %16
  %26 = call i32 @convert_sigevent32(%struct.sigevent32* %6, %struct.sigevent* %7)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load %struct.freebsd32_ktimer_create_args*, %struct.freebsd32_ktimer_create_args** %5, align 8
  %35 = getelementptr inbounds %struct.freebsd32_ktimer_create_args, %struct.freebsd32_ktimer_create_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sigevent*, %struct.sigevent** %8, align 8
  %38 = call i32 @kern_ktimer_create(%struct.thread* %33, i32 %36, %struct.sigevent* %37, i32* %10, i32 -1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.freebsd32_ktimer_create_args*, %struct.freebsd32_ktimer_create_args** %5, align 8
  %43 = getelementptr inbounds %struct.freebsd32_ktimer_create_args, %struct.freebsd32_ktimer_create_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @copyout(i32* %10, i32 %44, i32 4)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @kern_ktimer_delete(%struct.thread* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %41
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %29, %23
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @copyin(i32*, %struct.sigevent32*, i32) #1

declare dso_local i32 @convert_sigevent32(%struct.sigevent32*, %struct.sigevent*) #1

declare dso_local i32 @kern_ktimer_create(%struct.thread*, i32, %struct.sigevent*, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @kern_ktimer_delete(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
