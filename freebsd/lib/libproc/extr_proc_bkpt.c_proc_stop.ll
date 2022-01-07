; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_bkpt.c_proc_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_bkpt.c_proc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }

@SIGSTOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"kill %d\00", align 1
@WSTOPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"waitpid %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"waitpid: unexpected status 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc_handle*)* @proc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_stop(%struct.proc_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %3, align 8
  %5 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %6 = call i32 @proc_getpid(%struct.proc_handle* %5)
  %7 = load i32, i32* @SIGSTOP, align 4
  %8 = call i32 @kill(i32 %6, i32 %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %12 = call i32 @proc_getpid(%struct.proc_handle* %11)
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 -1, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %16 = call i32 @proc_getpid(%struct.proc_handle* %15)
  %17 = load i32, i32* @WSTOPPED, align 4
  %18 = call i32 @waitpid(i32 %16, i32* %4, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %22 = call i32 @proc_getpid(%struct.proc_handle* %21)
  %23 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %2, align 4
  br label %34

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @WIFSTOPPED(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DPRINTFX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %2, align 4
  br label %34

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28, %20, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i32 @DPRINTFX(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
