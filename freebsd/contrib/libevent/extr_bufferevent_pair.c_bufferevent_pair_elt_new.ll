; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_pair.c_bufferevent_pair_elt_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_pair.c_bufferevent_pair_elt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_pair = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.event_base = type { i32 }

@bufferevent_ops_pair = common dso_local global i32 0, align 4
@be_pair_outbuf_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufferevent_pair* (%struct.event_base*, i32)* @bufferevent_pair_elt_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufferevent_pair* @bufferevent_pair_elt_new(%struct.event_base* %0, i32 %1) #0 {
  %3 = alloca %struct.bufferevent_pair*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent_pair*, align 8
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.bufferevent_pair* @mm_calloc(i32 1, i32 4)
  store %struct.bufferevent_pair* %7, %struct.bufferevent_pair** %6, align 8
  %8 = icmp ne %struct.bufferevent_pair* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.bufferevent_pair* null, %struct.bufferevent_pair** %3, align 8
  br label %40

10:                                               ; preds = %2
  %11 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %12 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %11, i32 0, i32 0
  %13 = load %struct.event_base*, %struct.event_base** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @bufferevent_init_common_(%struct.TYPE_4__* %12, %struct.event_base* %13, i32* @bufferevent_ops_pair, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %19 = call i32 @mm_free(%struct.bufferevent_pair* %18)
  store %struct.bufferevent_pair* null, %struct.bufferevent_pair** %3, align 8
  br label %40

20:                                               ; preds = %10
  %21 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %22 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @be_pair_outbuf_cb, align 4
  %27 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %28 = call i32 @evbuffer_add_cb(i32 %25, i32 %26, %struct.bufferevent_pair* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %32 = call i32 @downcast(%struct.bufferevent_pair* %31)
  %33 = call i32 @bufferevent_free(i32 %32)
  store %struct.bufferevent_pair* null, %struct.bufferevent_pair** %3, align 8
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %36 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @bufferevent_init_generic_timeout_cbs_(%struct.TYPE_3__* %37)
  %39 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  store %struct.bufferevent_pair* %39, %struct.bufferevent_pair** %3, align 8
  br label %40

40:                                               ; preds = %34, %30, %17, %9
  %41 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  ret %struct.bufferevent_pair* %41
}

declare dso_local %struct.bufferevent_pair* @mm_calloc(i32, i32) #1

declare dso_local i64 @bufferevent_init_common_(%struct.TYPE_4__*, %struct.event_base*, i32*, i32) #1

declare dso_local i32 @mm_free(%struct.bufferevent_pair*) #1

declare dso_local i32 @evbuffer_add_cb(i32, i32, %struct.bufferevent_pair*) #1

declare dso_local i32 @bufferevent_free(i32) #1

declare dso_local i32 @downcast(%struct.bufferevent_pair*) #1

declare dso_local i32 @bufferevent_init_generic_timeout_cbs_(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
