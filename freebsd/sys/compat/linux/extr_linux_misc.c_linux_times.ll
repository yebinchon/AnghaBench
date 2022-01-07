; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.proc* }
%struct.proc = type { i32 }
%struct.linux_times_args = type { i32* }
%struct.timeval = type { i32 }
%struct.l_times_argv = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_times(%struct.thread* %0, %struct.linux_times_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_times_args*, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca %struct.l_times_argv, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_times_args* %1, %struct.linux_times_args** %5, align 8
  %14 = load %struct.linux_times_args*, %struct.linux_times_args** %5, align 8
  %15 = getelementptr inbounds %struct.linux_times_args, %struct.linux_times_args* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %2
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 1
  %21 = load %struct.proc*, %struct.proc** %20, align 8
  store %struct.proc* %21, %struct.proc** %12, align 8
  %22 = load %struct.proc*, %struct.proc** %12, align 8
  %23 = call i32 @PROC_LOCK(%struct.proc* %22)
  %24 = load %struct.proc*, %struct.proc** %12, align 8
  %25 = call i32 @PROC_STATLOCK(%struct.proc* %24)
  %26 = load %struct.proc*, %struct.proc** %12, align 8
  %27 = call i32 @calcru(%struct.proc* %26, %struct.timeval* %7, %struct.timeval* %8)
  %28 = load %struct.proc*, %struct.proc** %12, align 8
  %29 = call i32 @PROC_STATUNLOCK(%struct.proc* %28)
  %30 = load %struct.proc*, %struct.proc** %12, align 8
  %31 = call i32 @calccru(%struct.proc* %30, %struct.timeval* %9, %struct.timeval* %10)
  %32 = load %struct.proc*, %struct.proc** %12, align 8
  %33 = call i32 @PROC_UNLOCK(%struct.proc* %32)
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @CONVTCK(i32 %35)
  %37 = getelementptr inbounds %struct.l_times_argv, %struct.l_times_argv* %11, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @CONVTCK(i32 %39)
  %41 = getelementptr inbounds %struct.l_times_argv, %struct.l_times_argv* %11, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @CONVTCK(i32 %43)
  %45 = getelementptr inbounds %struct.l_times_argv, %struct.l_times_argv* %11, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @CONVTCK(i32 %47)
  %49 = getelementptr inbounds %struct.l_times_argv, %struct.l_times_argv* %11, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load %struct.linux_times_args*, %struct.linux_times_args** %5, align 8
  %51 = getelementptr inbounds %struct.linux_times_args, %struct.linux_times_args* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @copyout(%struct.l_times_argv* %11, i32* %52, i32 32)
  store i32 %53, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %18
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %68

57:                                               ; preds = %18
  br label %58

58:                                               ; preds = %57, %2
  %59 = call i32 @microuptime(%struct.timeval* %6)
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @CONVTCK(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.thread*, %struct.thread** %4, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %58, %55
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_STATLOCK(%struct.proc*) #1

declare dso_local i32 @calcru(%struct.proc*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @PROC_STATUNLOCK(%struct.proc*) #1

declare dso_local i32 @calccru(%struct.proc*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i8* @CONVTCK(i32) #1

declare dso_local i32 @copyout(%struct.l_times_argv*, i32*, i32) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
