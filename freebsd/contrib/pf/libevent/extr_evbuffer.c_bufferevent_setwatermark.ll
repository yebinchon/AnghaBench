; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_setwatermark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_setwatermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_setwatermark(%struct.bufferevent* %0, i16 signext %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i16 %1, i16* %6, align 2
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i16, i16* %6, align 2
  %10 = sext i16 %9 to i32
  %11 = load i16, i16* @EV_READ, align 2
  %12 = sext i16 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %22 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %15, %4
  %25 = load i16, i16* %6, align 2
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* @EV_WRITE, align 2
  %28 = sext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %38 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  br label %40

40:                                               ; preds = %31, %24
  %41 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %42 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %45 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @EVBUFFER_LENGTH(i32 %46)
  %48 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %49 = call i32 @bufferevent_read_pressure_cb(i32 %43, i32 0, i32 %47, %struct.bufferevent* %48)
  ret void
}

declare dso_local i32 @bufferevent_read_pressure_cb(i32, i32, i32, %struct.bufferevent*) #1

declare dso_local i32 @EVBUFFER_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
