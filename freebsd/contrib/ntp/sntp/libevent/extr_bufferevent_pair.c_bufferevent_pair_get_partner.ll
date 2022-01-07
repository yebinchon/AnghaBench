; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_bufferevent_pair_get_partner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_bufferevent_pair_get_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_pair = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent* @bufferevent_pair_get_partner(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.bufferevent_pair*, align 8
  %5 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %5, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call %struct.bufferevent_pair* @upcast(%struct.bufferevent* %6)
  store %struct.bufferevent_pair* %7, %struct.bufferevent_pair** %4, align 8
  %8 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %4, align 8
  %9 = icmp ne %struct.bufferevent_pair* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.bufferevent* null, %struct.bufferevent** %2, align 8
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %13 = call i32 @incref_and_lock(%struct.bufferevent* %12)
  %14 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %4, align 8
  %15 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %4, align 8
  %20 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.bufferevent* @downcast(i64 %21)
  store %struct.bufferevent* %22, %struct.bufferevent** %5, align 8
  br label %23

23:                                               ; preds = %18, %11
  %24 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %25 = call i32 @decref_and_unlock(%struct.bufferevent* %24)
  %26 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  store %struct.bufferevent* %26, %struct.bufferevent** %2, align 8
  br label %27

27:                                               ; preds = %23, %10
  %28 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  ret %struct.bufferevent* %28
}

declare dso_local %struct.bufferevent_pair* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @incref_and_lock(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent* @downcast(i64) #1

declare dso_local i32 @decref_and_unlock(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
