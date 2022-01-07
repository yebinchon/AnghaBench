; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Killing pid %s.\0A\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@PTRACE_KILL = common dso_local global i32 0, align 4
@rpcerr = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Killing VxWorks process\00", align 1
@null_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vx_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_kill() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @inferior_ptid, align 4
  %5 = call i64 @PIDGET(i32 %4)
  %6 = call i32 @local_hex_string(i64 %5)
  %7 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = bitcast %struct.TYPE_5__* %1 to i8*
  %9 = call i32 @memset(i8* %8, i8 signext 0, i32 8)
  %10 = bitcast %struct.TYPE_6__* %2 to i8*
  %11 = call i32 @memset(i8* %10, i8 signext 0, i32 8)
  %12 = load i32, i32* @inferior_ptid, align 4
  %13 = call i64 @PIDGET(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @PTRACE_KILL, align 4
  %16 = call i32 @net_ptrace_clnt_call(i32 %15, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* @rpcerr, align 4
  %21 = call i32 @warning(i32 %20)
  br label %31

22:                                               ; preds = %0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @errno, align 4
  %29 = call i32 @perror_with_name(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* @null_ptid, align 4
  store i32 %32, i32* @inferior_ptid, align 4
  %33 = call i32 (...) @pop_target()
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @local_hex_string(i64) #1

declare dso_local i64 @PIDGET(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @net_ptrace_clnt_call(i32, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @warning(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @pop_target(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
