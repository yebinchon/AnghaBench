; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_read_more.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_read_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"read (in http r)\00", align 1
@UB_EV_READ = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i64 0, align 8
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comm_point*)* @http_read_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_read_more(i32 %0, %struct.comm_point* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.comm_point*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.comm_point* %1, %struct.comm_point** %5, align 8
  %7 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %8 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @sldns_buffer_remaining(i32 %9)
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @log_assert(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %16 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @sldns_buffer_current(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %21 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @sldns_buffer_remaining(i32 %22)
  %24 = call i32 @recv(i32 %14, i8* %19, i64 %23, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EINTR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @EAGAIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store i32 1, i32* %3, align 4
  br label %58

40:                                               ; preds = %35
  %41 = load i64, i64* @errno, align 8
  %42 = call i32 @strerror(i64 %41)
  %43 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @log_err_addr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %42, i32* %45, i32 %49)
  store i32 0, i32* %3, align 4
  br label %58

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %54 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @sldns_buffer_skip(i32 %55, i32 %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %40, %39, %27
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @sldns_buffer_remaining(i32) #1

declare dso_local i32 @recv(i32, i8*, i64, i32) #1

declare dso_local i64 @sldns_buffer_current(i32) #1

declare dso_local i32 @log_err_addr(i8*, i32, i32*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @sldns_buffer_skip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
