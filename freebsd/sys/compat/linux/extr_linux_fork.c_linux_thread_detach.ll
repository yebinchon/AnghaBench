; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_fork.c_linux_thread_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_fork.c_linux_thread_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sys_futex_args = type { i32*, i32, i64, i32*, i32*, i32 }
%struct.linux_emuldata = type { i32*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"thread_detach: emuldata not found.\0A\00", align 1
@thread_detach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"thread(%d)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"thread(%d) %p\00", align 1
@LINUX_FUTEX_WAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"futex stuff in thread_detach failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_thread_detach(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.linux_sys_futex_args, align 8
  %4 = alloca %struct.linux_emuldata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = call %struct.linux_emuldata* @em_find(%struct.thread* %7)
  store %struct.linux_emuldata* %8, %struct.linux_emuldata** %4, align 8
  %9 = load %struct.linux_emuldata*, %struct.linux_emuldata** %4, align 8
  %10 = icmp ne %struct.linux_emuldata* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @thread_detach, align 4
  %14 = load %struct.linux_emuldata*, %struct.linux_emuldata** %4, align 8
  %15 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @LINUX_CTR1(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = load %struct.linux_emuldata*, %struct.linux_emuldata** %4, align 8
  %20 = call i32 @release_futexes(%struct.thread* %18, %struct.linux_emuldata* %19)
  %21 = load %struct.linux_emuldata*, %struct.linux_emuldata** %4, align 8
  %22 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %1
  %27 = load i32, i32* @thread_detach, align 4
  %28 = load %struct.linux_emuldata*, %struct.linux_emuldata** %4, align 8
  %29 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @LINUX_CTR2(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @suword32(i32* %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %55

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds %struct.linux_sys_futex_args, %struct.linux_sys_futex_args* %3, i32 0, i32 0
  store i32* %39, i32** %40, align 8
  %41 = load i32, i32* @LINUX_FUTEX_WAKE, align 4
  %42 = getelementptr inbounds %struct.linux_sys_futex_args, %struct.linux_sys_futex_args* %3, i32 0, i32 5
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.linux_sys_futex_args, %struct.linux_sys_futex_args* %3, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.linux_sys_futex_args, %struct.linux_sys_futex_args* %3, i32 0, i32 4
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.linux_sys_futex_args, %struct.linux_sys_futex_args* %3, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.linux_sys_futex_args, %struct.linux_sys_futex_args* %3, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.thread*, %struct.thread** %2, align 8
  %48 = call i32 @linux_sys_futex(%struct.thread* %47, %struct.linux_sys_futex_args* %3)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.thread*, %struct.thread** %2, align 8
  %53 = call i32 @linux_msg(%struct.thread* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %38
  br label %55

55:                                               ; preds = %37, %54, %1
  ret void
}

declare dso_local %struct.linux_emuldata* @em_find(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LINUX_CTR1(i32, i8*, i32) #1

declare dso_local i32 @release_futexes(%struct.thread*, %struct.linux_emuldata*) #1

declare dso_local i32 @LINUX_CTR2(i32, i8*, i32, i32*) #1

declare dso_local i32 @suword32(i32*, i32) #1

declare dso_local i32 @linux_sys_futex(%struct.thread*, %struct.linux_sys_futex_args*) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
