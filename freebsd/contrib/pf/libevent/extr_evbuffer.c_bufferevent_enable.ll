; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i16, i32, i32, i32, i32 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_enable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = load i16, i16* @EV_READ, align 2
  %9 = sext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 4
  %15 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %16 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bufferevent_add(i32* %14, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %48

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i16, i16* %5, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @EV_WRITE, align 2
  %26 = sext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 2
  %32 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bufferevent_add(i32* %31, i32 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %48

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i16, i16* %5, align 2
  %41 = sext i16 %40 to i32
  %42 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %43 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %42, i32 0, i32 0
  %44 = load i16, i16* %43, align 4
  %45 = sext i16 %44 to i32
  %46 = or i32 %45, %41
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %43, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %37, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @bufferevent_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
