; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i16, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.bufferevent*, i16)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_disable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 0, i32* %5, align 4
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call i32 @BEV_LOCK(%struct.bufferevent* %6)
  %8 = load i16, i16* %4, align 2
  %9 = sext i16 %8 to i32
  %10 = xor i32 %9, -1
  %11 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %12 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = sext i16 %13 to i32
  %15 = and i32 %14, %10
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %12, align 8
  %17 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (%struct.bufferevent*, i16)*, i64 (%struct.bufferevent*, i16)** %20, align 8
  %22 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %23 = load i16, i16* %4, align 2
  %24 = call i64 %21(%struct.bufferevent* %22, i16 signext %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %29 = call i32 @BEV_UNLOCK(%struct.bufferevent* %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
