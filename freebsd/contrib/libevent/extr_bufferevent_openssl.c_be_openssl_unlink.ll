; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_be_openssl_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_be_openssl_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"BEV_OPT_CLOSE_ON_FREE set on an bufferevent with too few references\00", align 1
@be_openssl_eventcb = common dso_local global i64 0, align 8
@BEV_SUSPEND_FILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @be_openssl_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_openssl_unlink(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_openssl*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %4 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %5 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %4)
  store %struct.bufferevent_openssl* %5, %struct.bufferevent_openssl** %3, align 8
  %6 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %7 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %15 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %20 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = call %struct.TYPE_9__* @BEV_UPCAST(%struct.TYPE_8__* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @event_warnx(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %33

28:                                               ; preds = %18
  %29 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %30 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i32 @bufferevent_free(%struct.TYPE_8__* %31)
  br label %33

33:                                               ; preds = %28, %26
  br label %34

34:                                               ; preds = %33, %13
  br label %60

35:                                               ; preds = %1
  %36 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %37 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %42 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @be_openssl_eventcb, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %50 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @bufferevent_setcb(%struct.TYPE_8__* %51, i32* null, i32* null, i32* null, i32* null)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %55 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i32, i32* @BEV_SUSPEND_FILT_READ, align 4
  %58 = call i32 @bufferevent_unsuspend_read_(%struct.TYPE_8__* %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %35
  br label %60

60:                                               ; preds = %59, %34
  ret void
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local %struct.TYPE_9__* @BEV_UPCAST(%struct.TYPE_8__*) #1

declare dso_local i32 @event_warnx(i8*) #1

declare dso_local i32 @bufferevent_free(%struct.TYPE_8__*) #1

declare dso_local i32 @bufferevent_setcb(%struct.TYPE_8__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bufferevent_unsuspend_read_(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
