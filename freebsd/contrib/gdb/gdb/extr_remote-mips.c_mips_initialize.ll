; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@mips_initialize_cleanups = common dso_local global i32 0, align 4
@mips_initializing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"internal error: mips_initialize called twice\00", align 1
@mips_wait_flag = common dso_local global i64 0, align 8
@mips_monitor = common dso_local global i64 0, align 8
@MON_IDT = common dso_local global i64 0, align 8
@mips_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\03\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\0D/E/E\0D\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Failed to initialize.\00", align 1
@mips_monitor_prompt = common dso_local global i32 0, align 4
@MON_LSI = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"set regsize 64\0D\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"set hostport tty0\0D\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"set brkcmd \22\22\0D\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"db *\0D\00", align 1
@BREAK_UNUSED = common dso_local global i32 0, align 4
@monitor_supports_breakpoints = common dso_local global i32 0, align 4
@mips_receive_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cleanup*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [7 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  %7 = load i32, i32* @mips_initialize_cleanups, align 4
  %8 = call %struct.cleanup* @make_cleanup(i32 %7, i32* null)
  store %struct.cleanup* %8, %struct.cleanup** %2, align 8
  %9 = load i32, i32* @mips_initializing, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %114

13:                                               ; preds = %0
  store i64 0, i64* @mips_wait_flag, align 8
  store i32 1, i32* @mips_initializing, align 4
  %14 = load i64, i64* @mips_monitor, align 8
  %15 = load i64, i64* @MON_IDT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %76, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 4
  br i1 %22, label %23, label %79

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  switch i32 %24, label %70 [
    i32 0, label %25
    i32 1, label %30
    i32 2, label %33
    i32 3, label %36
    i32 4, label %68
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @mips_desc, align 4
  %27 = call i32 @serial_flush_input(i32 %26)
  %28 = load i32, i32* @mips_desc, align 4
  %29 = call i32 @serial_write(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %70

30:                                               ; preds = %23
  %31 = load i32, i32* @mips_desc, align 4
  %32 = call i32 @serial_send_break(i32 %31)
  br label %70

33:                                               ; preds = %23
  %34 = load i32, i32* @mips_desc, align 4
  %35 = call i32 @serial_write(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %70

36:                                               ; preds = %23
  %37 = load i64, i64* @mips_monitor, align 8
  %38 = load i64, i64* @MON_IDT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* @mips_desc, align 4
  %42 = call i32 @serial_flush_output(i32 %41)
  %43 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %44 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @mips_desc, align 4
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %47 = call i32 @serial_write(i32 %45, i8* %46, i32 6)
  br label %67

48:                                               ; preds = %36
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %50 = call i32 @mips_make_srec(i8* %49, i8 signext 55, i32 0, i32* null, i32 0)
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %63, %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp sle i32 %52, 33
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32, i32* @mips_desc, align 4
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %57 = call i32 @serial_write(i32 %55, i8* %56, i32 8)
  %58 = load i32, i32* @mips_desc, align 4
  %59 = call i32 @serial_readchar(i32 %58, i32 0)
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %66

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %51

66:                                               ; preds = %61, %51
  br label %67

67:                                               ; preds = %66, %40
  br label %70

68:                                               ; preds = %23
  %69 = call i32 @mips_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %23, %67, %33, %30, %25
  %71 = load i32, i32* @mips_monitor_prompt, align 4
  %72 = call i64 @mips_expect(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %79

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %20

79:                                               ; preds = %74, %20
  %80 = load i64, i64* @mips_monitor, align 8
  %81 = load i64, i64* @MON_IDT, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = call i32 @mips_send_command(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %85 = load i64, i64* @mips_monitor, align 8
  %86 = load i64, i64* @MON_LSI, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @mips_send_command(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  br label %90

90:                                               ; preds = %88, %83
  %91 = call i32 @mips_send_command(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %92 = call i32 @mips_send_command(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  %93 = call i32 @mips_send_command(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  br label %94

94:                                               ; preds = %90, %79
  %95 = call i32 (...) @mips_enter_debug()
  %96 = load i64, i64* @mips_monitor, align 8
  %97 = load i64, i64* @MON_IDT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @BREAK_UNUSED, align 4
  %101 = call i64 @clear_breakpoint(i32 -1, i32 0, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99, %94
  %104 = load i64, i64* @mips_monitor, align 8
  %105 = load i64, i64* @MON_LSI, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %99
  store i32 1, i32* @monitor_supports_breakpoints, align 4
  br label %109

108:                                              ; preds = %103
  store i32 0, i32* @monitor_supports_breakpoints, align 4
  br label %109

109:                                              ; preds = %108, %107
  %110 = load %struct.cleanup*, %struct.cleanup** %2, align 8
  %111 = call i32 @do_cleanups(%struct.cleanup* %110)
  %112 = load i32, i32* @mips_receive_wait, align 4
  %113 = call i32 @mips_request(i8 signext 114, i32 0, i32 0, i32* %1, i32 %112, i32* null)
  br label %114

114:                                              ; preds = %109, %11
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @serial_flush_input(i32) #1

declare dso_local i32 @serial_write(i32, i8*, i32) #1

declare dso_local i32 @serial_send_break(i32) #1

declare dso_local i32 @serial_flush_output(i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @mips_make_srec(i8*, i8 signext, i32, i32*, i32) #1

declare dso_local i32 @serial_readchar(i32, i32) #1

declare dso_local i32 @mips_error(i8*) #1

declare dso_local i64 @mips_expect(i32) #1

declare dso_local i32 @mips_send_command(i8*, i32) #1

declare dso_local i32 @mips_enter_debug(...) #1

declare dso_local i64 @clear_breakpoint(i32, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @mips_request(i8 signext, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
