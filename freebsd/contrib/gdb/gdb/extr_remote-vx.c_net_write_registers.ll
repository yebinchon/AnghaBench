; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_write_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_write_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@rpcerr = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"writing %s registers\00", align 1
@PTRACE_SETREGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"general-purpose\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"floating-point\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_write_registers(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca [100 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = bitcast %struct.TYPE_8__* %8 to i8*
  %13 = call i32 @memset(i8* %12, i8 signext 0, i32 24)
  %14 = bitcast %struct.TYPE_9__* %9 to i8*
  %15 = call i32 @memset(i8* %14, i8 signext 0, i32 8)
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @inferior_ptid, align 4
  %21 = call i32 @PIDGET(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @DATA, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = ptrtoint %struct.TYPE_10__* %10 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @net_ptrace_clnt_call(i64 %29, %struct.TYPE_8__* %8, %struct.TYPE_9__* %9)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @rpcerr, align 4
  %35 = call i32 @error(i32 %34)
  br label %36

36:                                               ; preds = %33, %3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @errno, align 4
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @PTRACE_SETREGS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %51 = call i32 @perror_with_name(i8* %50)
  br label %52

52:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @net_ptrace_clnt_call(i64, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
