; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_filter.c_be_filter_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_filter.c_be_filter_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%union.bufferevent_ctrl_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, %union.bufferevent_ctrl_data*)* }
%struct.bufferevent_filtered = type { %struct.TYPE_4__* }

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
  switch i32 %9, label %57 [
    i32 129, label %10
    i32 128, label %18
    i32 130, label %56
    i32 131, label %56
  ]

10:                                               ; preds = %3
  %11 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %12 = call %struct.bufferevent_filtered* @upcast(%struct.bufferevent* %11)
  store %struct.bufferevent_filtered* %12, %struct.bufferevent_filtered** %8, align 8
  %13 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %8, align 8
  %14 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %17 = bitcast %union.bufferevent_ctrl_data* %16 to %struct.TYPE_4__**
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %17, align 8
  store i32 0, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %20 = call %struct.bufferevent_filtered* @upcast(%struct.bufferevent* %19)
  store %struct.bufferevent_filtered* %20, %struct.bufferevent_filtered** %8, align 8
  %21 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %8, align 8
  %22 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %18
  %26 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %8, align 8
  %27 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %25
  %33 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %8, align 8
  %34 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_4__*, i32, %union.bufferevent_ctrl_data*)*, i32 (%struct.TYPE_4__*, i32, %union.bufferevent_ctrl_data*)** %38, align 8
  %40 = icmp ne i32 (%struct.TYPE_4__*, i32, %union.bufferevent_ctrl_data*)* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %32
  %42 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %8, align 8
  %43 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_4__*, i32, %union.bufferevent_ctrl_data*)*, i32 (%struct.TYPE_4__*, i32, %union.bufferevent_ctrl_data*)** %47, align 8
  %49 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %8, align 8
  %50 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %54 = call i32 %48(%struct.TYPE_4__* %51, i32 %52, %union.bufferevent_ctrl_data* %53)
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %32, %25, %18
  br label %56

56:                                               ; preds = %3, %3, %55
  br label %57

57:                                               ; preds = %3, %56
  store i32 -1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %41, %10
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.bufferevent_filtered* @upcast(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
