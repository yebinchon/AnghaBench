; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"ContinueDebugEvent (cpid=%ld, ctid=%ld, %s);\0A\00", align 1
@current_event = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DBG_CONTINUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"DBG_CONTINUE\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"DBG_EXCEPTION_NOT_HANDLED\00", align 1
@thread_head = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@debug_registers_changed = common dso_local global i64 0, align 8
@CONTEXT_DEBUG_REGISTERS = common dso_local global i64 0, align 8
@dr = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @child_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @child_continue(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 0), align 4
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @DBG_CONTINUE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @DEBUG_EVENTS(i8* %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 1), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 0), align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @ContinueDebugEvent(i32 %16, i32 %17, i64 %18)
  store i64 %19, i64* %7, align 8
  store i64 0, i64* %3, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %111

22:                                               ; preds = %2
  store %struct.TYPE_5__* @thread_head, %struct.TYPE_5__** %6, align 8
  br label %23

23:                                               ; preds = %109, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %6, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %110

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %109

38:                                               ; preds = %31, %28
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %109

43:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ResumeThread(i32 %53)
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i64, i64* @debug_registers_changed, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %58
  %64 = load i64, i64* @CONTEXT_DEBUG_REGISTERS, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load i8**, i8*** @dr, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 5
  store i8* %70, i8** %73, align 8
  %74 = load i8**, i8*** @dr, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i8* %76, i8** %79, align 8
  %80 = load i8**, i8*** @dr, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  %86 = load i8**, i8*** @dr, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 3
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load i8**, i8*** @dr, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 7
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = call i32 @SetThreadContext(i32 %100, %struct.TYPE_7__* %102)
  %104 = call i32 @CHECK(i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %63, %58
  br label %109

109:                                              ; preds = %108, %38, %31
  br label %23

110:                                              ; preds = %23
  br label %111

111:                                              ; preds = %110, %2
  store i64 0, i64* @debug_registers_changed, align 8
  %112 = load i64, i64* %7, align 8
  ret i64 %112
}

declare dso_local i32 @DEBUG_EVENTS(i8*) #1

declare dso_local i64 @ContinueDebugEvent(i32, i32, i64) #1

declare dso_local i32 @ResumeThread(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @SetThreadContext(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
