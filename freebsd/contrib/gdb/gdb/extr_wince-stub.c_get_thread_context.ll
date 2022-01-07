; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_get_thread_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_get_thread_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i32] [i32 71, i32 101, i32 116, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 32, i32 104, i32 97, i32 110, i32 100, i32 108, i32 101, i32 0], align 4
@GDB_GETTHREADCONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 71, i32 101, i32 116, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 32, i32 102, i32 108, i32 97, i32 103, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [22 x i32] [i32 71, i32 101, i32 116, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 32, i32 100, i32 97, i32 116, i32 97, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @get_thread_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_thread_context(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GDB_GETTHREADCONTEXT, align 4
  %8 = call i32 @gethandle(i8* bitcast ([24 x i32]* @.str to i8*), i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 4)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @GDB_GETTHREADCONTEXT, align 4
  %12 = call i32 @getdword(i8* bitcast ([23 x i32]* @.str.1 to i8*), i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @GetThreadContext(i32 %14, %struct.TYPE_5__* %3)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @GDB_GETTHREADCONTEXT, align 4
  %19 = call i32 @putresult(i8* bitcast ([22 x i32]* @.str.2 to i8*), i64 %16, i32 %17, i32 %18, %struct.TYPE_5__* %3, i32 4)
  ret void
}

declare dso_local i32 @gethandle(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @getdword(i8*, i32, i32) #1

declare dso_local i64 @GetThreadContext(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @putresult(i8*, i64, i32, i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
