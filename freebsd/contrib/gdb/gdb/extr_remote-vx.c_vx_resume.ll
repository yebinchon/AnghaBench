; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@minus_one_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@stop_signal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot send signals to VxWorks processes\00", align 1
@PC_REGNUM = common dso_local global i32 0, align 4
@stop_pc = common dso_local global i32 0, align 4
@PTRACE_CONT = common dso_local global i32 0, align 4
@rpcerr = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Resuming remote process\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @vx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @minus_one_ptid, align 4
  %13 = call i64 @ptid_equal(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @inferior_ptid, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @stop_signal, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20, %17
  %27 = load i32, i32* @PC_REGNUM, align 4
  %28 = call i32 @read_register(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @stop_pc, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = bitcast %struct.TYPE_5__* %8 to i8*
  %35 = call i32 @memset(i8* %34, i8 signext 0, i32 8)
  %36 = bitcast %struct.TYPE_6__* %9 to i8*
  %37 = call i32 @memset(i8* %36, i8 signext 0, i32 8)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @PIDGET(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = call i32 (...) @net_step()
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @PTRACE_CONT, align 4
  %49 = call i32 @net_ptrace_clnt_call(i32 %48, %struct.TYPE_5__* %8, %struct.TYPE_6__* %9)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** @rpcerr, align 8
  %55 = call i32 @error(i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @errno, align 4
  %63 = call i32 @perror_with_name(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %56
  ret void
}

declare dso_local i64 @ptid_equal(i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @read_register(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @net_step(...) #1

declare dso_local i32 @net_ptrace_clnt_call(i32, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
