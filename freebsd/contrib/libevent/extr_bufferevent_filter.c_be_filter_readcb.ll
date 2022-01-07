; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_filter.c_be_filter_readcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_filter.c_be_filter_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_filtered = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @be_filter_readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_filter_readcb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent_filtered*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.bufferevent_filtered*
  store %struct.bufferevent_filtered* %8, %struct.bufferevent_filtered** %5, align 8
  %9 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %10 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %9)
  store %struct.bufferevent* %10, %struct.bufferevent** %6, align 8
  %11 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %12 = call i32 @BEV_LOCK(%struct.bufferevent* %11)
  %13 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @be_filter_read_nolock_(%struct.bufferevent* %13, i8* %14)
  %16 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %17 = call i32 @BEV_UNLOCK(%struct.bufferevent* %16)
  ret void
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @be_filter_read_nolock_(%struct.bufferevent*, i8*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
