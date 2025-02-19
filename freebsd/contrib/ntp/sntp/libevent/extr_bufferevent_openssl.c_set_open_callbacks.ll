; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_set_open_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_set_open_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32, i32, i32, i32, i32 }

@be_openssl_readcb = common dso_local global i32 0, align 4
@be_openssl_writecb = common dso_local global i32 0, align 4
@be_openssl_eventcb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@be_openssl_readeventcb = common dso_local global i32 0, align 4
@be_openssl_writeeventcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*, i32)* @set_open_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_open_callbacks(%struct.bufferevent_openssl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_openssl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %12 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %17 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @be_openssl_readcb, align 4
  %20 = load i32, i32* @be_openssl_writecb, align 4
  %21 = load i32, i32* @be_openssl_eventcb, align 4
  %22 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %23 = call i32 @bufferevent_setcb(i64 %18, i32 %19, i32 %20, i32 %21, %struct.bufferevent_openssl* %22)
  store i32 0, i32* %3, align 4
  br label %121

24:                                               ; preds = %2
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %26 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.bufferevent* %27, %struct.bufferevent** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
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
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %46 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %45, i32 0, i32 3
  %47 = load i32, i32* @EV_READ, align 4
  %48 = call i32 @event_pending(i32* %46, i32 %47, i32* null)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %50 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %49, i32 0, i32 1
  %51 = load i32, i32* @EV_WRITE, align 4
  %52 = call i32 @event_pending(i32* %50, i32 %51, i32* null)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %54 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %53, i32 0, i32 3
  %55 = call i32 @event_del(i32* %54)
  %56 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %57 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %56, i32 0, i32 1
  %58 = call i32 @event_del(i32* %57)
  br label %59

59:                                               ; preds = %44, %39
  %60 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %61 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %60, i32 0, i32 3
  %62 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %63 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @EV_READ, align 4
  %67 = load i32, i32* @EV_PERSIST, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @EV_FINALIZE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @be_openssl_readeventcb, align 4
  %72 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %73 = call i32 @event_assign(i32* %61, i32 %64, i32 %65, i32 %70, i32 %71, %struct.bufferevent_openssl* %72)
  %74 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %75 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %74, i32 0, i32 1
  %76 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %77 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @EV_WRITE, align 4
  %81 = load i32, i32* @EV_PERSIST, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @EV_FINALIZE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @be_openssl_writeeventcb, align 4
  %86 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %87 = call i32 @event_assign(i32* %75, i32 %78, i32 %79, i32 %84, i32 %85, %struct.bufferevent_openssl* %86)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %59
  %91 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %92 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %91, i32 0, i32 3
  %93 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %94 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %93, i32 0, i32 2
  %95 = call i32 @bufferevent_add_event_(i32* %92, i32* %94)
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %90, %59
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %101 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %100, i32 0, i32 1
  %102 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %103 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %102, i32 0, i32 0
  %104 = call i32 @bufferevent_add_event_(i32* %101, i32* %103)
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i32, i32* %5, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %110 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i1 [ true, %111 ], [ %116, %114 ]
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 -1, i32 0
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @bufferevent_setcb(i64, i32, i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i32 @event_get_fd(i32*) #1

declare dso_local i32 @event_pending(i32*, i32, i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
