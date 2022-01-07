; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_be_pair_wants_to_talk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_be_pair_wants_to_talk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_pair = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_pair*, %struct.bufferevent_pair*)* @be_pair_wants_to_talk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_pair_wants_to_talk(%struct.bufferevent_pair* %0, %struct.bufferevent_pair* %1) #0 {
  %3 = alloca %struct.bufferevent_pair*, align 8
  %4 = alloca %struct.bufferevent_pair*, align 8
  store %struct.bufferevent_pair* %0, %struct.bufferevent_pair** %3, align 8
  store %struct.bufferevent_pair* %1, %struct.bufferevent_pair** %4, align 8
  %5 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %6 = call %struct.TYPE_4__* @downcast(%struct.bufferevent_pair* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EV_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %4, align 8
  %14 = call %struct.TYPE_4__* @downcast(%struct.bufferevent_pair* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EV_READ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %4, align 8
  %22 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %28 = call %struct.TYPE_4__* @downcast(%struct.bufferevent_pair* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @evbuffer_get_length(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %20, %12, %2
  %34 = phi i1 [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local %struct.TYPE_4__* @downcast(%struct.bufferevent_pair*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
