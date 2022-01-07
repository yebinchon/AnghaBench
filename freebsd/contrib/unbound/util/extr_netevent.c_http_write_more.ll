; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_write_more.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_write_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"http send r\00", align 1
@UB_EV_WRITE = common dso_local global i32 0, align 4
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comm_point*)* @http_write_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_write_more(i32 %0, %struct.comm_point* %1) #0 {
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
  %24 = call i32 @send(i32 %14, i8* %19, i64 %23, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %47

27:                                               ; preds = %2
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINTR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EAGAIN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i32 1, i32* %3, align 4
  br label %53

36:                                               ; preds = %31
  %37 = load i64, i64* @errno, align 8
  %38 = call i32 @strerror(i64 %37)
  %39 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %40 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %43 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @log_err_addr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38, i32* %41, i32 %45)
  store i32 0, i32* %3, align 4
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %49 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @sldns_buffer_skip(i32 %50, i32 %51)
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %36, %35
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @sldns_buffer_remaining(i32) #1

declare dso_local i32 @send(i32, i8*, i64, i32) #1

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
