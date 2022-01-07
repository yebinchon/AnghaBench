; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_add_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_add_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i64, i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@thread_head = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@debug_registers_used = common dso_local global i64 0, align 8
@CONTEXT_DEBUG_REGISTERS = common dso_local global i64 0, align 8
@dr = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i32)* @child_add_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @child_add_thread(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call %struct.TYPE_8__* @thread_rec(i32 %7, i32 %8)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %6, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  br label %87

13:                                               ; preds = %2
  %14 = call i64 @xmalloc(i32 72)
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = call i32 @memset(%struct.TYPE_8__* %16, i32 0, i32 72)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @thread_head, i32 0, i32 0), align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @thread_head, i32 0, i32 0), align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pid_to_ptid(i32 %28)
  %30 = call i32 @add_thread(i32 %29)
  %31 = load i64, i64* @debug_registers_used, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %85

33:                                               ; preds = %13
  %34 = load i64, i64* @CONTEXT_DEBUG_REGISTERS, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @GetThreadContext(i32 %40, %struct.TYPE_10__* %42)
  %44 = call i32 @CHECK(i32 %43)
  %45 = load i8**, i8*** @dr, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 5
  store i8* %47, i8** %50, align 8
  %51 = load i8**, i8*** @dr, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 4
  store i8* %53, i8** %56, align 8
  %57 = load i8**, i8*** @dr, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  store i8* %59, i8** %62, align 8
  %63 = load i8**, i8*** @dr, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 3
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load i8**, i8*** @dr, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 7
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @SetThreadContext(i32 %77, %struct.TYPE_10__* %79)
  %81 = call i32 @CHECK(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %33, %13
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %3, align 8
  br label %87

87:                                               ; preds = %85, %11
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %88
}

declare dso_local %struct.TYPE_8__* @thread_rec(i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @add_thread(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @GetThreadContext(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SetThreadContext(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
