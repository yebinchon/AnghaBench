; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, i32 }

@EV_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_write(%struct.bufferevent* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %10 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @evbuffer_add(i32 %11, i8* %12, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %24 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EV_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 2
  %32 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bufferevent_add(i32* %31, i32 %34)
  br label %36

36:                                               ; preds = %29, %22, %19
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @evbuffer_add(i32, i8*, i64) #1

declare dso_local i32 @bufferevent_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
