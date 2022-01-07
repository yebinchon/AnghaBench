; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD_SETSIZE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"select() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @tls_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_loop(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @SSL_get_fd(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @PJDLOG_ASSERT(i32 %12)
  br label %14

14:                                               ; preds = %58, %38, %2
  %15 = call i32 @FD_ZERO(i32* %5)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @FD_SET(i32 %16, i32* %5)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @FD_SET(i32 %18, i32* %5)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @MAX(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i64, i64* @FD_SETSIZE, align 8
  %26 = trunc i64 %25 to i32
  %27 = icmp sle i32 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @PJDLOG_ASSERT(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @select(i32 %31, i32* %5, i32* null, i32* null, i32* null)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %14
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %14

39:                                               ; preds = %34
  %40 = load i32, i32* @EX_TEMPFAIL, align 4
  %41 = call i32 @pjdlog_exit(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %14
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @FD_ISSET(i32 %43, i32* %5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @tcp_recv_ssl_send(i32 %47, i32* %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @FD_ISSET(i32 %51, i32* %5)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @ssl_recv_tcp_send(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %14
}

declare dso_local i32 @SSL_get_fd(i32*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pjdlog_exit(i32, i8*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @tcp_recv_ssl_send(i32, i32*) #1

declare dso_local i32 @ssl_recv_tcp_send(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
