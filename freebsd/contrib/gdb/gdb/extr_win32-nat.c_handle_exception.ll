; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_handle_exception.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.target_waitstatus = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i8* }

@current_event = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@TARGET_WAITKIND_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EXCEPTION_ACCESS_VIOLATION\00", align 1
@TARGET_SIGNAL_SEGV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"STATUS_STACK_OVERFLOW\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"STATUS_FLOAT_DENORMAL_OPERAND\00", align 1
@TARGET_SIGNAL_FPE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"EXCEPTION_ARRAY_BOUNDS_EXCEEDED\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"STATUS_FLOAT_INEXACT_RESULT\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"STATUS_FLOAT_INVALID_OPERATION\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"STATUS_FLOAT_OVERFLOW\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"STATUS_FLOAT_STACK_CHECK\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"STATUS_FLOAT_UNDERFLOW\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"STATUS_FLOAT_DIVIDE_BY_ZERO\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"STATUS_INTEGER_DIVIDE_BY_ZERO\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"STATUS_INTEGER_OVERFLOW\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"EXCEPTION_BREAKPOINT\00", align 1
@TARGET_SIGNAL_TRAP = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"DBG_CONTROL_C\00", align 1
@TARGET_SIGNAL_INT = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"DBG_CONTROL_BREAK\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"EXCEPTION_SINGLE_STEP\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"EXCEPTION_ILLEGAL_INSTRUCTION\00", align 1
@TARGET_SIGNAL_ILL = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [27 x i8] c"EXCEPTION_PRIV_INSTRUCTION\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"EXCEPTION_NONCONTINUABLE_EXCEPTION\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"gdb: unknown target exception 0x%08lx at 0x%08lx\0A\00", align 1
@TARGET_SIGNAL_UNKNOWN = common dso_local global i8* null, align 8
@exception_count = common dso_local global i32 0, align 4
@last_sig = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_waitstatus*)* @handle_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_exception(%struct.target_waitstatus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.target_waitstatus*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.target_waitstatus* %0, %struct.target_waitstatus** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @TARGET_WAITKIND_STOPPED, align 4
  %8 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %9 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @current_event, i32 0, i32 1), align 4
  %11 = call i32* @thread_rec(i32 %10, i32 -1)
  store i32* %11, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %127 [
    i32 144, label %13
    i32 128, label %19
    i32 137, label %25
    i32 143, label %31
    i32 135, label %37
    i32 134, label %43
    i32 133, label %49
    i32 132, label %55
    i32 131, label %61
    i32 136, label %67
    i32 130, label %73
    i32 129, label %79
    i32 142, label %85
    i32 145, label %91
    i32 146, label %97
    i32 138, label %103
    i32 141, label %109
    i32 139, label %115
    i32 140, label %121
  ]

13:                                               ; preds = %1
  %14 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** @TARGET_SIGNAL_SEGV, align 8
  %16 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %17 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  br label %139

19:                                               ; preds = %1
  %20 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** @TARGET_SIGNAL_SEGV, align 8
  %22 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %23 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  br label %139

25:                                               ; preds = %1
  %26 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %28 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %29 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  br label %139

31:                                               ; preds = %1
  %32 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %34 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %35 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  br label %139

37:                                               ; preds = %1
  %38 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %40 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %41 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  br label %139

43:                                               ; preds = %1
  %44 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %46 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %47 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %139

49:                                               ; preds = %1
  %50 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %51 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %52 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %53 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %139

55:                                               ; preds = %1
  %56 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %57 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %58 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %59 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  br label %139

61:                                               ; preds = %1
  %62 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %63 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %64 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %65 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  br label %139

67:                                               ; preds = %1
  %68 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %69 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %70 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %71 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  br label %139

73:                                               ; preds = %1
  %74 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %75 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %76 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %77 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  br label %139

79:                                               ; preds = %1
  %80 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %81 = load i8*, i8** @TARGET_SIGNAL_FPE, align 8
  %82 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %83 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  br label %139

85:                                               ; preds = %1
  %86 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %87 = load i8*, i8** @TARGET_SIGNAL_TRAP, align 8
  %88 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %89 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  br label %139

91:                                               ; preds = %1
  %92 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %93 = load i8*, i8** @TARGET_SIGNAL_INT, align 8
  %94 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %95 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  br label %139

97:                                               ; preds = %1
  %98 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %99 = load i8*, i8** @TARGET_SIGNAL_INT, align 8
  %100 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %101 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  br label %139

103:                                              ; preds = %1
  %104 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %105 = load i8*, i8** @TARGET_SIGNAL_TRAP, align 8
  %106 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %107 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  br label %139

109:                                              ; preds = %1
  %110 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %111 = load i8*, i8** @TARGET_SIGNAL_ILL, align 8
  %112 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %113 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  br label %139

115:                                              ; preds = %1
  %116 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %117 = load i8*, i8** @TARGET_SIGNAL_ILL, align 8
  %118 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %119 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  br label %139

121:                                              ; preds = %1
  %122 = call i32 @DEBUG_EXCEPTION_SIMPLE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %123 = load i8*, i8** @TARGET_SIGNAL_ILL, align 8
  %124 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %125 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  br label %139

127:                                              ; preds = %1
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @current_event, i32 0, i32 0, i32 0, i32 1), align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %146

131:                                              ; preds = %127
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %134 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i8*, i8** @TARGET_SIGNAL_UNKNOWN, align 8
  %136 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %137 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  br label %139

139:                                              ; preds = %131, %121, %115, %109, %103, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13
  %140 = load i32, i32* @exception_count, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* @exception_count, align 4
  %142 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %143 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** @last_sig, align 8
  store i32 1, i32* %2, align 4
  br label %146

146:                                              ; preds = %139, %130
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32* @thread_rec(i32, i32) #1

declare dso_local i32 @DEBUG_EXCEPTION_SIMPLE(i8*) #1

declare dso_local i32 @printf_unfiltered(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
