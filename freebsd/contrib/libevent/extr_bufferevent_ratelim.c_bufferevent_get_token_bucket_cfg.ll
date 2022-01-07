; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bufferevent_get_token_bucket_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bufferevent_get_token_bucket_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev_token_bucket_cfg = type opaque
%struct.bufferevent = type { i32 }
%struct.bufferevent_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ev_token_bucket_cfg* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ev_token_bucket_cfg* @bufferevent_get_token_bucket_cfg(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_private*, align 8
  %4 = alloca %struct.ev_token_bucket_cfg*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %5 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %6 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %5)
  store %struct.bufferevent_private* %6, %struct.bufferevent_private** %3, align 8
  %7 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %8 = call i32 @BEV_LOCK(%struct.bufferevent* %7)
  %9 = load %struct.bufferevent_private*, %struct.bufferevent_private** %3, align 8
  %10 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.bufferevent_private*, %struct.bufferevent_private** %3, align 8
  %15 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %17, align 8
  store %struct.ev_token_bucket_cfg* %18, %struct.ev_token_bucket_cfg** %4, align 8
  br label %20

19:                                               ; preds = %1
  store %struct.ev_token_bucket_cfg* null, %struct.ev_token_bucket_cfg** %4, align 8
  br label %20

20:                                               ; preds = %19, %13
  %21 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %22 = call i32 @BEV_UNLOCK(%struct.bufferevent* %21)
  %23 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %4, align 8
  ret %struct.ev_token_bucket_cfg* %23
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
