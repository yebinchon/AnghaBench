; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_udp_send_errno_needs_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_udp_send_errno_needs_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@errno = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@VERB_DETAIL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32)* @udp_send_errno_needs_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_send_errno_needs_log(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @errno, align 4
  switch i32 %6, label %13 [
    i32 128, label %7
    i32 131, label %7
    i32 130, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2
  %8 = load i64, i64* @verbosity, align 8
  %9 = load i64, i64* @VERB_ALGO, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %54

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %2, %12
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @errno, align 4
  %16 = load i32, i32* @EPERM, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* @verbosity, align 8
  %20 = load i64, i64* @VERB_DETAIL, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %54

23:                                               ; preds = %18, %14
  %24 = load i32, i32* @errno, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %29 = bitcast %struct.sockaddr* %28 to %struct.sockaddr_storage*
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @addr_is_ip4mapped(%struct.sockaddr_storage* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i64, i64* @verbosity, align 8
  %35 = load i64, i64* @VERB_DETAIL, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %54

38:                                               ; preds = %33, %27, %23
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @EACCES, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_storage*
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @addr_is_broadcast(%struct.sockaddr_storage* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i64, i64* @verbosity, align 8
  %50 = load i64, i64* @VERB_DETAIL, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %54

53:                                               ; preds = %48, %42, %38
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %37, %22, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @addr_is_ip4mapped(%struct.sockaddr_storage*, i32) #1

declare dso_local i64 @addr_is_broadcast(%struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
