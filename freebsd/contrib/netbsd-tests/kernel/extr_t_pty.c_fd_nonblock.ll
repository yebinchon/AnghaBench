; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_pty.c_fd_nonblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_pty.c_fd_nonblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFL = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fcntl()\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fd_nonblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_nonblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @F_GETFL, align 4
  %6 = call i32 @fcntl(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  %10 = call i32 @err(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @F_SETFL, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @fcntl(i32 %12, i32 %13, i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @err(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %11
  ret void
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
