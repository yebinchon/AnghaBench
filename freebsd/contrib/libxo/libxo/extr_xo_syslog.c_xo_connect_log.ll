; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_syslog.c_xo_connect_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_syslog.c_xo_connect_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }

@xo_logfile = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@xo_status = common dso_local global i64 0, align 8
@NOCONN = common dso_local global i64 0, align 8
@CONNDEF = common dso_local global i64 0, align 8
@CONNPRIV = common dso_local global i64 0, align 8
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@_PATH_LOG = common dso_local global i32 0, align 4
@_PATH_LOG_PRIV = common dso_local global i32 0, align 4
@_PATH_OLDLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xo_connect_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_connect_log() #0 {
  %1 = alloca %struct.sockaddr_un, align 4
  %2 = alloca i32, align 4
  br i1 true, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @xo_syslog_open()
  br label %33

5:                                                ; preds = %0
  %6 = load i32, i32* @xo_logfile, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @AF_UNIX, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* @xo_logfile, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %33

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %5
  %17 = load i32, i32* @xo_logfile, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i64, i64* @xo_status, align 8
  %21 = load i64, i64* @NOCONN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32, i32* @AF_UNIX, align 4
  %25 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i64, i64* @xo_status, align 8
  %27 = load i64, i64* @NOCONN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @xo_logfile, align 4
  %31 = call i32 @close(i32 %30)
  store i32 -1, i32* @xo_logfile, align 4
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %3, %14, %32, %19, %16
  ret void
}

declare dso_local i32 @xo_syslog_open(...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
