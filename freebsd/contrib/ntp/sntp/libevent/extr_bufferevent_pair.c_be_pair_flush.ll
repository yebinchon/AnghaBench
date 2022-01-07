; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_be_pair_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_be_pair_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_pair = type { i32 }

@BEV_NORMAL = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@BEV_FINISHED = common dso_local global i32 0, align 4
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16, i32)* @be_pair_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_pair_flush(%struct.bufferevent* %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent_pair*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %11 = call %struct.bufferevent_pair* @upcast(%struct.bufferevent* %10)
  store %struct.bufferevent_pair* %11, %struct.bufferevent_pair** %8, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %13 = call i32 @incref_and_lock(%struct.bufferevent* %12)
  %14 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %15 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %21 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.bufferevent* @downcast(i32 %22)
  store %struct.bufferevent* %23, %struct.bufferevent** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @BEV_NORMAL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %66

28:                                               ; preds = %19
  %29 = load i16, i16* %6, align 2
  %30 = sext i16 %29 to i32
  %31 = load i16, i16* @EV_READ, align 2
  %32 = sext i16 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %37 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %38 = call i32 @be_pair_transfer(%struct.bufferevent* %36, %struct.bufferevent* %37, i32 1)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i16, i16* %6, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* @EV_WRITE, align 2
  %43 = sext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %48 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %49 = call i32 @be_pair_transfer(%struct.bufferevent* %47, %struct.bufferevent* %48, i32 1)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @BEV_FINISHED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %56 = load i16, i16* %6, align 2
  %57 = sext i16 %56 to i32
  %58 = load i16, i16* @BEV_EVENT_EOF, align 2
  %59 = sext i16 %58 to i32
  %60 = or i32 %57, %59
  %61 = trunc i32 %60 to i16
  %62 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %55, i16 signext %61, i32 0)
  br label %63

63:                                               ; preds = %54, %50
  %64 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %65 = call i32 @decref_and_unlock(%struct.bufferevent* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %27, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.bufferevent_pair* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @incref_and_lock(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent* @downcast(i32) #1

declare dso_local i32 @be_pair_transfer(%struct.bufferevent*, %struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i16 signext, i32) #1

declare dso_local i32 @decref_and_unlock(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
