; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_thread_alive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_thread_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i32] [i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 65, i32 108, i32 105, i32 118, i32 101, i32 32, i32 104, i32 97, i32 110, i32 100, i32 108, i32 101, i32 0], align 4
@GDB_THREADALIVE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i32] [i32 87, i32 114, i32 105, i32 116, i32 101, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 77, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 100, i32 97, i32 116, i32 97, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @thread_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_alive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @GDB_THREADALIVE, align 4
  %7 = call i32 @gethandle(i8* bitcast ([19 x i32]* @.str to i8*), i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @WaitForSingleObject(i32 %8, i32 0)
  %10 = load i64, i64* @WAIT_OBJECT_0, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @GDB_THREADALIVE, align 4
  %17 = call i32 @putresult(i8* bitcast ([24 x i32]* @.str.1 to i8*), i32 %14, i32 %15, i32 %16, i32* %4, i32 4)
  ret void
}

declare dso_local i32 @gethandle(i8*, i32, i32) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @putresult(i8*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
