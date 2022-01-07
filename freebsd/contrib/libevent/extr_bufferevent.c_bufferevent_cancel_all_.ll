; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_cancel_all_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_cancel_all_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* }
%union.bufferevent_ctrl_data = type { i32 }

@BEV_CTRL_CANCEL_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @bufferevent_cancel_all_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_cancel_all_(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %union.bufferevent_ctrl_data, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %4 = call i32 @memset(%union.bufferevent_ctrl_data* %3, i32 0, i32 4)
  %5 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %6 = call i32 @BEV_LOCK(%struct.bufferevent* %5)
  %7 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %8 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)*, i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)** %10, align 8
  %12 = icmp ne i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %15 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)*, i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)** %17, align 8
  %19 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %20 = load i32, i32* @BEV_CTRL_CANCEL_ALL, align 4
  %21 = call i32 %18(%struct.bufferevent* %19, i32 %20, %union.bufferevent_ctrl_data* %3)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %24 = call i32 @BEV_UNLOCK(%struct.bufferevent* %23)
  ret void
}

declare dso_local i32 @memset(%union.bufferevent_ctrl_data*, i32, i32) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
