; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_msg_marshal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_msg_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.msg = type { i32, i32*, i64, i32, i64, i32, i32 }

@MSG_FROM_NAME = common dso_local global i32 0, align 4
@MSG_TO_NAME = common dso_local global i32 0, align 4
@MSG_ATTACK = common dso_local global i32 0, align 4
@MSG_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_marshal(%struct.evbuffer* %0, %struct.msg* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.msg*, align 8
  %5 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.msg* %1, %struct.msg** %4, align 8
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = load i32, i32* @MSG_FROM_NAME, align 4
  %8 = load %struct.msg*, %struct.msg** %4, align 8
  %9 = getelementptr inbounds %struct.msg, %struct.msg* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @evtag_marshal_string(%struct.evbuffer* %6, i32 %7, i32 %10)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %13 = load i32, i32* @MSG_TO_NAME, align 4
  %14 = load %struct.msg*, %struct.msg** %4, align 8
  %15 = getelementptr inbounds %struct.msg, %struct.msg* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @evtag_marshal_string(%struct.evbuffer* %12, i32 %13, i32 %16)
  %18 = load %struct.msg*, %struct.msg** %4, align 8
  %19 = getelementptr inbounds %struct.msg, %struct.msg* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %24 = load i32, i32* @MSG_ATTACK, align 4
  %25 = load %struct.msg*, %struct.msg** %4, align 8
  %26 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @evtag_marshal_kill(%struct.evbuffer* %23, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.msg*, %struct.msg** %4, align 8
  %31 = getelementptr inbounds %struct.msg, %struct.msg* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.msg*, %struct.msg** %4, align 8
  %38 = getelementptr inbounds %struct.msg, %struct.msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %43 = load i32, i32* @MSG_RUN, align 4
  %44 = load %struct.msg*, %struct.msg** %4, align 8
  %45 = getelementptr inbounds %struct.msg, %struct.msg* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @evtag_marshal_run(%struct.evbuffer* %42, i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %35

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %29
  ret void
}

declare dso_local i32 @evtag_marshal_string(%struct.evbuffer*, i32, i32) #1

declare dso_local i32 @evtag_marshal_kill(%struct.evbuffer*, i32, i32) #1

declare dso_local i32 @evtag_marshal_run(%struct.evbuffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
