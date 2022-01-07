; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bytes_to_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bytes_to_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.event_watermark, %struct.evbuffer* }
%struct.event_watermark = type { i64 }
%struct.evbuffer = type { i32 }

@READ_DEFAULT = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*)* @bytes_to_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytes_to_read(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent_openssl*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.event_watermark*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %3, align 8
  %8 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %9 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load %struct.evbuffer*, %struct.evbuffer** %11, align 8
  store %struct.evbuffer* %12, %struct.evbuffer** %4, align 8
  %13 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %14 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store %struct.event_watermark* %16, %struct.event_watermark** %5, align 8
  %17 = load i32, i32* @READ_DEFAULT, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %19 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

23:                                               ; preds = %1
  %24 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %25 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EV_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %74

33:                                               ; preds = %23
  %34 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %35 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %74

40:                                               ; preds = %33
  %41 = load %struct.event_watermark*, %struct.event_watermark** %5, align 8
  %42 = getelementptr inbounds %struct.event_watermark, %struct.event_watermark* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %47 = call i64 @evbuffer_get_length(%struct.evbuffer* %46)
  %48 = load %struct.event_watermark*, %struct.event_watermark** %5, align 8
  %49 = getelementptr inbounds %struct.event_watermark, %struct.event_watermark* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %74

53:                                               ; preds = %45
  %54 = load %struct.event_watermark*, %struct.event_watermark** %5, align 8
  %55 = getelementptr inbounds %struct.event_watermark, %struct.event_watermark* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %58 = call i64 @evbuffer_get_length(%struct.evbuffer* %57)
  %59 = sub nsw i64 %56, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %63

61:                                               ; preds = %40
  %62 = load i32, i32* @READ_DEFAULT, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %53
  %64 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %65 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %64, i32 0, i32 0
  %66 = call i32 @bufferevent_get_read_max_(%struct.TYPE_4__* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %52, %39, %32, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @bufferevent_get_read_max_(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
