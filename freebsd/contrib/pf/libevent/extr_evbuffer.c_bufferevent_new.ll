; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i8*, i32, i8*, i8*, i32, i32, i32*, i32* }

@EV_READ = common dso_local global i32 0, align 4
@bufferevent_readcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@bufferevent_writecb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent* @bufferevent_new(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bufferevent*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = call %struct.bufferevent* @calloc(i32 1, i32 64)
  store %struct.bufferevent* %13, %struct.bufferevent** %12, align 8
  %14 = icmp eq %struct.bufferevent* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store %struct.bufferevent* null, %struct.bufferevent** %6, align 8
  br label %69

16:                                               ; preds = %5
  %17 = call i8* (...) @evbuffer_new()
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %20 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %19, i32 0, i32 7
  store i32* %18, i32** %20, align 8
  %21 = icmp eq i32* %18, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %24 = call i32 @free(%struct.bufferevent* %23)
  store %struct.bufferevent* null, %struct.bufferevent** %6, align 8
  br label %69

25:                                               ; preds = %16
  %26 = call i8* (...) @evbuffer_new()
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %29 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %28, i32 0, i32 8
  store i32* %27, i32** %29, align 8
  %30 = icmp eq i32* %27, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @evbuffer_free(i32* %34)
  %36 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %37 = call i32 @free(%struct.bufferevent* %36)
  store %struct.bufferevent* null, %struct.bufferevent** %6, align 8
  br label %69

38:                                               ; preds = %25
  %39 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %40 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %39, i32 0, i32 6
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @EV_READ, align 4
  %43 = load i32, i32* @bufferevent_readcb, align 4
  %44 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %45 = call i32 @event_set(i32* %40, i32 %41, i32 %42, i32 %43, %struct.bufferevent* %44)
  %46 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %47 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %46, i32 0, i32 5
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @EV_WRITE, align 4
  %50 = load i32, i32* @bufferevent_writecb, align 4
  %51 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %52 = call i32 @event_set(i32* %47, i32 %48, i32 %49, i32 %50, %struct.bufferevent* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %55 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %58 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %61 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %64 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @EV_WRITE, align 4
  %66 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %67 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  store %struct.bufferevent* %68, %struct.bufferevent** %6, align 8
  br label %69

69:                                               ; preds = %38, %31, %22, %15
  %70 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  ret %struct.bufferevent* %70
}

declare dso_local %struct.bufferevent* @calloc(i32, i32) #1

declare dso_local i8* @evbuffer_new(...) #1

declare dso_local i32 @free(%struct.bufferevent*) #1

declare dso_local i32 @evbuffer_free(i32*) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, %struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
