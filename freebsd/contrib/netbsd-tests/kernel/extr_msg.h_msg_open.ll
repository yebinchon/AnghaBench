; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_msg.h_msg_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_msg.h_msg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_fds = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_fds*)* @msg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_open(%struct.msg_fds* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg_fds*, align 8
  store %struct.msg_fds* %0, %struct.msg_fds** %3, align 8
  %4 = load %struct.msg_fds*, %struct.msg_fds** %3, align 8
  %5 = getelementptr inbounds %struct.msg_fds, %struct.msg_fds* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @pipe(i32* %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.msg_fds*, %struct.msg_fds** %3, align 8
  %12 = getelementptr inbounds %struct.msg_fds, %struct.msg_fds* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @pipe(i32* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.msg_fds*, %struct.msg_fds** %3, align 8
  %18 = getelementptr inbounds %struct.msg_fds, %struct.msg_fds* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load %struct.msg_fds*, %struct.msg_fds** %3, align 8
  %24 = getelementptr inbounds %struct.msg_fds, %struct.msg_fds* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  store i32 -1, i32* %2, align 4
  br label %30

29:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %16, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
