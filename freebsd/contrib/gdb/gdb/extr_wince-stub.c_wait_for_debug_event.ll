; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_wait_for_debug_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_wait_for_debug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i32] [i32 87, i32 97, i32 105, i32 116, i32 70, i32 111, i32 114, i32 68, i32 101, i32 98, i32 117, i32 103, i32 69, i32 118, i32 101, i32 110, i32 116, i32 32, i32 109, i32 115, i32 0], align 4
@GDB_WAITFORDEBUGEVENT = common dso_local global i32 0, align 4
@wait_for_debug_event.skip_next = internal global i32 0, align 4
@OUTPUT_DEBUG_STRING_EVENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i32] [i32 87, i32 97, i32 105, i32 116, i32 70, i32 111, i32 114, i32 68, i32 101, i32 98, i32 117, i32 103, i32 69, i32 118, i32 101, i32 110, i32 116, i32 32, i32 101, i32 118, i32 101, i32 110, i32 116, i32 0], align 4
@DBG_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wait_for_debug_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_debug_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GDB_WAITFORDEBUGEVENT, align 4
  %8 = call i32 @getdword(i8* bitcast ([21 x i32]* @.str to i8*), i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @WaitForDebugEvent(%struct.TYPE_5__* %5, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OUTPUT_DEBUG_STRING_EVENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load i32, i32* @wait_for_debug_event.skip_next, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @wait_for_debug_event.skip_next, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @wait_for_debug_event.skip_next, align 4
  br label %32

22:                                               ; preds = %16
  %23 = call i32 @skip_message(%struct.TYPE_5__* %5)
  store i32 %23, i32* @wait_for_debug_event.skip_next, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %32

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @GDB_WAITFORDEBUGEVENT, align 4
  %31 = call i32 @putresult(i8* bitcast ([24 x i32]* @.str.1 to i8*), i32 %28, i32 %29, i32 %30, %struct.TYPE_5__* %5, i32 16)
  br label %39

32:                                               ; preds = %25, %19
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DBG_CONTINUE, align 4
  %38 = call i32 @ContinueDebugEvent(i32 %34, i32 %36, i32 %37)
  br label %9

39:                                               ; preds = %27
  ret void
}

declare dso_local i32 @getdword(i8*, i32, i32) #1

declare dso_local i32 @WaitForDebugEvent(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @skip_message(%struct.TYPE_5__*) #1

declare dso_local i32 @putresult(i8*, i32, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ContinueDebugEvent(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
