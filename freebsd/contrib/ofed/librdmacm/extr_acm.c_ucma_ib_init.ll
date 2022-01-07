; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_ib_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_ib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@ucma_ib_init.init = internal global i32 0, align 4
@acm_lock = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@server_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucma_ib_init() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ucma_ib_init.init, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %48

6:                                                ; preds = %0
  %7 = call i32 @pthread_mutex_lock(i32* @acm_lock)
  %8 = load i32, i32* @ucma_ib_init.init, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %46

11:                                               ; preds = %6
  %12 = call i32 (...) @ucma_set_server_port()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %45

15:                                               ; preds = %11
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = load i32, i32* @SOCK_CLOEXEC, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IPPROTO_TCP, align 4
  %21 = call i32 @socket(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* @sock, align 4
  %22 = load i32, i32* @sock, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %45

25:                                               ; preds = %15
  %26 = call i32 @memset(%struct.sockaddr_in* %1, i32 0, i32 12)
  %27 = load i32, i32* @AF_INET, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @INADDR_LOOPBACK, align 4
  %30 = call i32 @htobe32(i32 %29)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @server_port, align 4
  %34 = call i32 @htobe16(i32 %33)
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @sock, align 4
  %37 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %38 = call i32 @connect(i32 %36, %struct.sockaddr* %37, i32 12)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @sock, align 4
  %43 = call i32 @close(i32 %42)
  store i32 -1, i32* @sock, align 4
  br label %44

44:                                               ; preds = %41, %25
  br label %45

45:                                               ; preds = %44, %24, %14
  store i32 1, i32* @ucma_ib_init.init, align 4
  br label %46

46:                                               ; preds = %45, %10
  %47 = call i32 @pthread_mutex_unlock(i32* @acm_lock)
  br label %48

48:                                               ; preds = %46, %5
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @ucma_set_server_port(...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
