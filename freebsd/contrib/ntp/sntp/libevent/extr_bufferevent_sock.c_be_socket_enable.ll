; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_be_socket_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_be_socket_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, i32 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_socket_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_socket_enable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = load i16, i16* @EV_READ, align 2
  %9 = sext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 3
  %15 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %16 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %15, i32 0, i32 2
  %17 = call i32 @be_socket_add(i32* %14, i32* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %38

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i16, i16* %5, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @EV_WRITE, align 2
  %25 = sext i16 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %30 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %29, i32 0, i32 1
  %31 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %32 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %31, i32 0, i32 0
  %33 = call i32 @be_socket_add(i32* %30, i32* %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %38

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %21
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %35, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @be_socket_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
