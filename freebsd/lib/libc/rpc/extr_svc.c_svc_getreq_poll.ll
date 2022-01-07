; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_getreq_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_getreq_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@POLLNVAL = common dso_local global i32 0, align 4
@svc_fd_lock = common dso_local global i32 0, align 4
@svc_fdset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_getreq_poll(%struct.pollfd* %0, i32 %1) #0 {
  %3 = alloca %struct.pollfd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pollfd*, align 8
  store %struct.pollfd* %0, %struct.pollfd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i64 %15
  store %struct.pollfd* %16, %struct.pollfd** %7, align 8
  %17 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @POLLNVAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = call i32 @rwlock_wrlock(i32* @svc_fd_lock)
  %32 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FD_CLR(i32 %34, i32* @svc_fdset)
  %36 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  br label %42

37:                                               ; preds = %21
  %38 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @svc_getreq_common(i32 %40)
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42, %12
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %8

47:                                               ; preds = %8
  ret void
}

declare dso_local i32 @rwlock_wrlock(i32*) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

declare dso_local i32 @rwlock_unlock(i32*) #1

declare dso_local i32 @svc_getreq_common(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
