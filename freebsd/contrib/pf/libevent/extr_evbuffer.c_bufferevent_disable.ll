; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i16, i32, i32 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_disable(%struct.bufferevent* %0, i16 signext %1) #0 {
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
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 2
  %15 = call i32 @event_del(i32* %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %43

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i16, i16* %5, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* @EV_WRITE, align 2
  %23 = sext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %28 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %27, i32 0, i32 1
  %29 = call i32 @event_del(i32* %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %43

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i16, i16* %5, align 2
  %35 = sext i16 %34 to i32
  %36 = xor i32 %35, -1
  %37 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %38 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %37, i32 0, i32 0
  %39 = load i16, i16* %38, align 4
  %40 = sext i16 %39 to i32
  %41 = and i32 %40, %36
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %38, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %33, %31, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @event_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
