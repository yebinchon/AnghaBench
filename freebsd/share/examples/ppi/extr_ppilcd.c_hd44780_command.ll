; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_hd44780_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_hd44780_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"hd44780: reset to %d lines, %s font,%s%s cursor\00", align 1
@hd_lines = common dso_local global i32 0, align 4
@hd_font = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"5x10\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"5x7\00", align 1
@hd_cursor = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@hd_blink = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" blinking\00", align 1
@HD_COMMAND = common dso_local global i32 0, align 4
@HD_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"unknown command %c\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"unknown command 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hd44780_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd44780_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %95 [
    i32 128, label %5
    i32 132, label %69
    i32 133, label %73
    i32 129, label %76
    i32 131, label %83
    i32 130, label %91
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @hd_lines, align 4
  %7 = load i32, i32* @hd_font, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %11 = load i32, i32* @hd_cursor, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %15 = load i32, i32* @hd_blink, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %19 = call i32 @debug(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %6, i8* %10, i8* %14, i8* %18)
  store i32 48, i32* %3, align 4
  %20 = load i32, i32* @hd_lines, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 8
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @hd_font, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @HD_COMMAND, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @hd44780_output(i32 %32, i32 %33)
  %35 = call i32 @usleep(i32 10000)
  %36 = load i32, i32* @HD_COMMAND, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @hd44780_output(i32 %36, i32 %37)
  %39 = call i32 @usleep(i32 1000)
  %40 = load i32, i32* @HD_COMMAND, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @hd44780_output(i32 %40, i32 %41)
  %43 = call i32 @usleep(i32 1000)
  store i32 8, i32* %3, align 4
  %44 = load i32, i32* @HD_COMMAND, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @hd44780_output(i32 %44, i32 %45)
  %47 = call i32 @usleep(i32 1000)
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, 4
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @hd_cursor, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, 2
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %31
  %56 = load i32, i32* @hd_blink, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @HD_COMMAND, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @hd44780_output(i32 %62, i32 %63)
  %65 = call i32 @usleep(i32 1000)
  %66 = load i32, i32* @HD_COMMAND, align 4
  %67 = call i32 @hd44780_output(i32 %66, i32 6)
  %68 = call i32 @usleep(i32 1000)
  br label %69

69:                                               ; preds = %1, %61
  %70 = load i32, i32* @HD_COMMAND, align 4
  %71 = call i32 @hd44780_output(i32 %70, i32 1)
  %72 = call i32 @usleep(i32 2000)
  br label %106

73:                                               ; preds = %1
  %74 = load i32, i32* @HD_DATA, align 4
  %75 = call i32 @hd44780_output(i32 %74, i32 16)
  br label %106

76:                                               ; preds = %1
  %77 = load i32, i32* @hd_lines, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @HD_COMMAND, align 4
  %81 = call i32 @hd44780_output(i32 %80, i32 192)
  br label %82

82:                                               ; preds = %79, %76
  br label %106

83:                                               ; preds = %1
  %84 = load i32, i32* @HD_COMMAND, align 4
  %85 = call i32 @hd44780_input(i32 %84)
  %86 = and i32 %85, 63
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* @HD_COMMAND, align 4
  %88 = load i32, i32* %3, align 4
  %89 = or i32 128, %88
  %90 = call i32 @hd44780_output(i32 %87, i32 %89)
  br label %106

91:                                               ; preds = %1
  %92 = load i32, i32* @HD_COMMAND, align 4
  %93 = call i32 @hd44780_output(i32 %92, i32 2)
  %94 = call i32 @usleep(i32 2000)
  br label %106

95:                                               ; preds = %1
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @isprint(i32 %96) #3
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  br label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %91, %83, %82, %73, %69
  %107 = call i32 @usleep(i32 40)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @hd44780_output(i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @hd44780_input(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
