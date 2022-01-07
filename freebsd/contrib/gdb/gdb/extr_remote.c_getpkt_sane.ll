; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_getpkt_sane.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_getpkt_sane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@watchdog = common dso_local global i64 0, align 8
@remote_timeout = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Watchdog has expired.  Target detached.\0A\00", align 1
@remote_debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Timed out.\0A\00", align 1
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Packet received: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@remote_desc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Ignoring packet error, continuing...\0A\00", align 1
@MAX_TRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @getpkt_sane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getpkt_sane(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcpy(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i64, i64* @watchdog, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @watchdog, align 8
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i64 [ %20, %19 ], [ -1, %21 ]
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @remote_timeout, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %22
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %80, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 3
  br i1 %30, label %31, label %83

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @readchar(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @QUIT, align 4
  %43 = call i32 (...) @target_mourn_inferior()
  %44 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i64, i64* @remote_debug, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @gdb_stdlog, align 4
  %50 = call i32 @fputs_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %77

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 36
  br i1 %55, label %32, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @read_frame(i8* %57, i64 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i64, i64* @remote_debug, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* @gdb_stdlog, align 4
  %67 = call i32 @fprintf_unfiltered(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @gdb_stdlog, align 4
  %70 = call i32 @fputstr_unfiltered(i8* %68, i32 0, i32 %69)
  %71 = load i32, i32* @gdb_stdlog, align 4
  %72 = call i32 @fprintf_unfiltered(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %65, %62
  %74 = load i32, i32* @remote_desc, align 4
  %75 = call i32 @serial_write(i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 0, i32* %4, align 4
  br label %87

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i32, i32* @remote_desc, align 4
  %79 = call i32 @serial_write(i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %28

83:                                               ; preds = %28
  %84 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32, i32* @remote_desc, align 4
  %86 = call i32 @serial_write(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %73
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @target_mourn_inferior(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @read_frame(i8*, i64) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @fputstr_unfiltered(i8*, i32, i32) #1

declare dso_local i32 @serial_write(i32, i8*, i32) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
