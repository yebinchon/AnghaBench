; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_readchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_readchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_readchar.state = internal global i32 0, align 4
@mips_monitor_prompt = common dso_local global i32* null, align 8
@watchdog = common dso_local global i32 0, align 4
@mips_desc = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Watchdog has expired.  Target detached.\0A\00", align 1
@SERIAL_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"End of file from remote\00", align 1
@SERIAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error reading from remote: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Read '%c' %d 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Timed out in read\0A\00", align 1
@mips_initializing = common dso_local global i32 0, align 4
@mips_exiting = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Reinitializing MIPS debugging mode\0A\00", align 1
@mips_need_reply = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"Remote board reset, debug protocol re-initialized.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_readchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_readchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32*, i32** @mips_monitor_prompt, align 8
  %7 = call i32 @strlen(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @watchdog, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @watchdog, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %11, %1
  %17 = load i32, i32* @mips_readchar.state, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* @mips_desc, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @serial_readchar(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 (...) @target_mourn_inferior()
  %33 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28, %21
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SERIAL_EOF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SERIAL_ERROR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @safe_strerror(i32 %45)
  %47 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @remote_debug, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @gdb_stdlog, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  br label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @gdb_stdlog, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 64
  br i1 %71, label %72, label %91

72:                                               ; preds = %69, %65
  %73 = load i32, i32* @mips_readchar.state, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32, i32* @mips_initializing, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @mips_exiting, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @remote_debug, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @gdb_stdlog, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %82
  store i64 0, i64* @mips_need_reply, align 8
  %89 = call i32 (...) @mips_initialize()
  store i32 0, i32* @mips_readchar.state, align 4
  %90 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %79, %76, %72, %69
  %92 = load i32, i32* %3, align 4
  %93 = load i32*, i32** @mips_monitor_prompt, align 8
  %94 = load i32, i32* @mips_readchar.state, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %92, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @mips_readchar.state, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @mips_readchar.state, align 4
  br label %103

102:                                              ; preds = %91
  store i32 0, i32* @mips_readchar.state, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @serial_readchar(i32, i32) #1

declare dso_local i32 @target_mourn_inferior(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @mips_error(i8*, ...) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @mips_initialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
