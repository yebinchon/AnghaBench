; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_pipe2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_pipe2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_pipe2_args = type { i32, i32 }

@LINUX_O_NONBLOCK = common dso_local global i32 0, align 4
@LINUX_O_CLOEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_pipe2(%struct.thread* %0, %struct.linux_pipe2_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_pipe2_args*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_pipe2_args* %1, %struct.linux_pipe2_args** %5, align 8
  %9 = load %struct.linux_pipe2_args*, %struct.linux_pipe2_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_pipe2_args, %struct.linux_pipe2_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LINUX_O_NONBLOCK, align 4
  %13 = load i32, i32* @LINUX_O_CLOEXEC, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %21 = load %struct.linux_pipe2_args*, %struct.linux_pipe2_args** %5, align 8
  %22 = getelementptr inbounds %struct.linux_pipe2_args, %struct.linux_pipe2_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LINUX_O_NONBLOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @O_NONBLOCK, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.linux_pipe2_args*, %struct.linux_pipe2_args** %5, align 8
  %33 = getelementptr inbounds %struct.linux_pipe2_args, %struct.linux_pipe2_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LINUX_O_CLOEXEC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @O_CLOEXEC, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.thread*, %struct.thread** %4, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @kern_pipe(%struct.thread* %43, i32* %44, i32 %45, i32* null, i32* null)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %70

51:                                               ; preds = %42
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %53 = load %struct.linux_pipe2_args*, %struct.linux_pipe2_args** %5, align 8
  %54 = getelementptr inbounds %struct.linux_pipe2_args, %struct.linux_pipe2_args* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @copyout(i32* %52, i32 %55, i32 8)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @kern_close(%struct.thread* %60, i32 %62)
  %64 = load %struct.thread*, %struct.thread** %4, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @kern_close(%struct.thread* %64, i32 %66)
  br label %68

68:                                               ; preds = %59, %51
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %49, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @kern_pipe(%struct.thread*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @kern_close(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
