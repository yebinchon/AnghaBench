; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_kill_marshal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_kill_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.kill = type { i32, i32*, i64, i32, i32 }

@KILL_WEAPON = common dso_local global i32 0, align 4
@KILL_ACTION = common dso_local global i32 0, align 4
@KILL_HOW_OFTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kill_marshal(%struct.evbuffer* %0, %struct.kill* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.kill*, align 8
  %5 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.kill* %1, %struct.kill** %4, align 8
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = load i32, i32* @KILL_WEAPON, align 4
  %8 = load %struct.kill*, %struct.kill** %4, align 8
  %9 = getelementptr inbounds %struct.kill, %struct.kill* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @evtag_marshal_string(%struct.evbuffer* %6, i32 %7, i32 %10)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %13 = load i32, i32* @KILL_ACTION, align 4
  %14 = load %struct.kill*, %struct.kill** %4, align 8
  %15 = getelementptr inbounds %struct.kill, %struct.kill* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @evtag_marshal_string(%struct.evbuffer* %12, i32 %13, i32 %16)
  %18 = load %struct.kill*, %struct.kill** %4, align 8
  %19 = getelementptr inbounds %struct.kill, %struct.kill* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.kill*, %struct.kill** %4, align 8
  %26 = getelementptr inbounds %struct.kill, %struct.kill* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %31 = load i32, i32* @KILL_HOW_OFTEN, align 4
  %32 = load %struct.kill*, %struct.kill** %4, align 8
  %33 = getelementptr inbounds %struct.kill, %struct.kill* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @evtag_marshal_int(%struct.evbuffer* %30, i32 %31, i32 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %23

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i32 @evtag_marshal_string(%struct.evbuffer*, i32, i32) #1

declare dso_local i32 @evtag_marshal_int(%struct.evbuffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
