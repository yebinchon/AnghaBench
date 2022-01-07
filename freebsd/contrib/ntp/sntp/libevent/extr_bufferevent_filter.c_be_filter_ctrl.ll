; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%union.bufferevent_ctrl_data = type { i32 }
%struct.bufferevent_filtered = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* @be_filter_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_filter_ctrl(%struct.bufferevent* %0, i32 %1, %union.bufferevent_ctrl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.bufferevent_ctrl_data*, align 8
  %8 = alloca %struct.bufferevent_filtered*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.bufferevent_ctrl_data* %2, %union.bufferevent_ctrl_data** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %19 [
    i32 129, label %10
    i32 130, label %18
    i32 128, label %18
    i32 131, label %18
  ]

10:                                               ; preds = %3
  %11 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %12 = call %struct.bufferevent_filtered* @upcast(%struct.bufferevent* %11)
  store %struct.bufferevent_filtered* %12, %struct.bufferevent_filtered** %8, align 8
  %13 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %8, align 8
  %14 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %17 = bitcast %union.bufferevent_ctrl_data* %16 to i32*
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %20

18:                                               ; preds = %3, %3, %3
  br label %19

19:                                               ; preds = %3, %18
  store i32 -1, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local %struct.bufferevent_filtered* @upcast(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
