; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i8*, i8*, i8*, i8*, i8*, i32 }

@DBG_CONTINUE = common dso_local global i64 0, align 8
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@current_event = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@EXCEPTION_DEBUG_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Cannot continue with signal %d here.\0A\00", align 1
@last_sig = common dso_local global i32 0, align 4
@DBG_EXCEPTION_NOT_HANDLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Can only continue with recieved signal %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"gdb: child_resume (pid=%d, step=%d, sig=%d);\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PS_REGNUM = common dso_local global i32 0, align 4
@FLAG_TRACE_BIT = common dso_local global i32 0, align 4
@debug_registers_changed = common dso_local global i64 0, align 8
@dr = common dso_local global i8** null, align 8
@xlate = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @DBG_CONTINUE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @PIDGET(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @current_event, i32 0, i32 0), align 8
  %18 = load i64, i64* @EXCEPTION_DEBUG_EVENT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @DEBUG_EXCEPT(i8* %23)
  br label %37

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @last_sig, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @DBG_EXCEPTION_NOT_HANDLED, align 8
  store i64 %30, i64* %8, align 8
  br label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @last_sig, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @DEBUG_EXCEPT(i8* %34)
  br label %36

36:                                               ; preds = %31, %29
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* @TARGET_SIGNAL_0, align 4
  store i32 %39, i32* @last_sig, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @DEBUG_EXEC(i8* %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @current_event, i32 0, i32 1), align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = call %struct.TYPE_12__* @thread_rec(i32 %46, i32 %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %7, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %115

51:                                               ; preds = %38
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* @PS_REGNUM, align 4
  %56 = call i32 @child_fetch_inferior_registers(i32 %55)
  %57 = load i32, i32* @FLAG_TRACE_BIT, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %54, %51
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %63
  %70 = load i64, i64* @debug_registers_changed, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %69
  %73 = load i8**, i8*** @dr, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  store i8* %75, i8** %78, align 8
  %79 = load i8**, i8*** @dr, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  store i8* %81, i8** %84, align 8
  %85 = load i8**, i8*** @dr, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  store i8* %87, i8** %90, align 8
  %91 = load i8**, i8*** @dr, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 3
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  store i8* %93, i8** %96, align 8
  %97 = load i8**, i8*** @dr, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 7
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %72, %69
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = call i32 @SetThreadContext(i32 %106, %struct.TYPE_15__* %108)
  %110 = call i32 @CHECK(i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %103, %63
  br label %115

115:                                              ; preds = %114, %38
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @child_continue(i64 %116, i32 %117)
  ret void
}

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @DEBUG_EXCEPT(i8*) #1

declare dso_local i32 @DEBUG_EXEC(i8*) #1

declare dso_local %struct.TYPE_12__* @thread_rec(i32, i32) #1

declare dso_local i32 @child_fetch_inferior_registers(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @SetThreadContext(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @child_continue(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
