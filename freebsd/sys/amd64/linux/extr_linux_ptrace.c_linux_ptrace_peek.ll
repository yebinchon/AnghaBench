; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace_peek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }

@PT_READ_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i8*, i8*)* @linux_ptrace_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ptrace_peek(%struct.thread* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = load i32, i32* @PT_READ_I, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @kern_ptrace(%struct.thread* %10, i32 %11, i32 %12, i8* %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @copyout(i32* %20, i8* %21, i32 4)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.thread*, %struct.thread** %5, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local i32 @kern_ptrace(%struct.thread*, i32, i32, i8*, i32) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
