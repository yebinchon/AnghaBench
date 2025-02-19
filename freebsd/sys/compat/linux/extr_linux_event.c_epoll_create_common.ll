; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_create_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_create_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@EPOLL_DEF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32)* @epoll_create_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epoll_create_common(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @kern_kqueue(%struct.thread* %7, i32 %8, i32* null)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = load i32, i32* @EPOLL_DEF_SZ, align 4
  %17 = call i32 @epoll_fd_install(%struct.thread* %15, i32 %16, i32 0)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @kern_kqueue(%struct.thread*, i32, i32*) #1

declare dso_local i32 @epoll_fd_install(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
