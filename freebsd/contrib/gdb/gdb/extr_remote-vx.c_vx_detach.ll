; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Argument given to VxWorks \22detach\22.\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Detaching pid %s.\0A\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@PTRACE_DETACH = common dso_local global i32 0, align 4
@rpcerr = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Detaching VxWorks process\00", align 1
@null_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vx_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_detach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @inferior_ptid, align 4
  %18 = call i64 @PIDGET(i32 %17)
  %19 = call i32 @local_hex_string(i64 %18)
  %20 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = bitcast %struct.TYPE_5__* %5 to i8*
  %29 = call i32 @memset(i8* %28, i8 signext 0, i32 8)
  %30 = bitcast %struct.TYPE_6__* %6 to i8*
  %31 = call i32 @memset(i8* %30, i8 signext 0, i32 8)
  %32 = load i32, i32* @inferior_ptid, align 4
  %33 = call i64 @PIDGET(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @PTRACE_DETACH, align 4
  %36 = call i32 @net_ptrace_clnt_call(i32 %35, %struct.TYPE_5__* %5, %struct.TYPE_6__* %6)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i8*, i8** @rpcerr, align 8
  %41 = call i32 @error(i8* %40)
  br label %42

42:                                               ; preds = %39, %27
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* @errno, align 4
  %49 = call i32 @perror_with_name(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @null_ptid, align 4
  store i32 %51, i32* @inferior_ptid, align 4
  %52 = call i32 (...) @pop_target()
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @local_hex_string(i64) #1

declare dso_local i64 @PIDGET(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @net_ptrace_clnt_call(i32, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @pop_target(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
