; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_set_handshake_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_set_handshake_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32, i32, i32, i32, i32 }

@be_openssl_handshakecb = common dso_local global i32 0, align 4
@be_openssl_eventcb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@be_openssl_handshakeeventcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*, i32)* @set_handshake_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_openssl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %10 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %15 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @be_openssl_handshakecb, align 4
  %18 = load i32, i32* @be_openssl_handshakecb, align 4
  %19 = load i32, i32* @be_openssl_eventcb, align 4
  %20 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %21 = call i32 @bufferevent_setcb(i64 %16, i32 %17, i32 %18, i32 %19, %struct.bufferevent_openssl* %20)
  %22 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %23 = call i32 @do_handshake(%struct.bufferevent_openssl* %22)
  store i32 %23, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %26 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.bufferevent* %27, %struct.bufferevent** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %32 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %37 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %36, i32 0, i32 3
  %38 = call i32 @event_get_fd(i32* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %30, %24
  %40 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %41 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %46 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %45, i32 0, i32 3
  %47 = call i32 @event_del(i32* %46)
  %48 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %49 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %48, i32 0, i32 1
  %50 = call i32 @event_del(i32* %49)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %53 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %52, i32 0, i32 3
  %54 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %55 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @EV_READ, align 4
  %59 = load i32, i32* @EV_PERSIST, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EV_FINALIZE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @be_openssl_handshakeeventcb, align 4
  %64 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %65 = call i32 @event_assign(i32* %53, i32 %56, i32 %57, i32 %62, i32 %63, %struct.bufferevent_openssl* %64)
  %66 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %67 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %66, i32 0, i32 1
  %68 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %69 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @EV_WRITE, align 4
  %73 = load i32, i32* @EV_PERSIST, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @EV_FINALIZE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @be_openssl_handshakeeventcb, align 4
  %78 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %79 = call i32 @event_assign(i32* %67, i32 %70, i32 %71, i32 %76, i32 %77, %struct.bufferevent_openssl* %78)
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %51
  %83 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %84 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %83, i32 0, i32 3
  %85 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %86 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %85, i32 0, i32 2
  %87 = call i32 @bufferevent_add_event_(i32* %84, i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %89 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %88, i32 0, i32 1
  %90 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %91 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %90, i32 0, i32 0
  %92 = call i32 @bufferevent_add_event_(i32* %89, i32* %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %94 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %82, %51
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br label %101

101:                                              ; preds = %98, %95
  %102 = phi i1 [ true, %95 ], [ %100, %98 ]
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 -1, i32 0
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %13
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @bufferevent_setcb(i64, i32, i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i32 @do_handshake(%struct.bufferevent_openssl*) #1

declare dso_local i32 @event_get_fd(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
