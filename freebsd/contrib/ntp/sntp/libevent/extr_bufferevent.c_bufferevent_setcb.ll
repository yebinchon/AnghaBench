; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_setcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_setcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i8*, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_setcb(%struct.bufferevent* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %12 = call i32 @BEV_LOCK(%struct.bufferevent* %11)
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %15 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %21 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %24 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %26 = call i32 @BEV_UNLOCK(%struct.bufferevent* %25)
  ret void
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
