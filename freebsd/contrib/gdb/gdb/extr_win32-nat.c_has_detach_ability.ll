; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_has_detach_ability.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_has_detach_ability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@has_detach_ability.kernel32 = internal global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@DebugSetProcessKillOnExit = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"DebugSetProcessKillOnExit\00", align 1
@DebugActiveProcessStop = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"DebugActiveProcessStop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @has_detach_ability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_detach_ability() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @has_detach_ability.kernel32, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32* @LoadLibrary(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** @has_detach_ability.kernel32, align 8
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32*, i32** @has_detach_ability.kernel32, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load i8*, i8** @DebugSetProcessKillOnExit, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32*, i32** @has_detach_ability.kernel32, align 8
  %14 = call i8* @GetProcAddress(i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** @DebugSetProcessKillOnExit, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i8*, i8** @DebugActiveProcessStop, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** @has_detach_ability.kernel32, align 8
  %20 = call i8* @GetProcAddress(i32* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** @DebugActiveProcessStop, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i8*, i8** @DebugSetProcessKillOnExit, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i8*, i8** @DebugActiveProcessStop, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %1, align 4
  br label %30

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %28, %6
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32* @LoadLibrary(i8*) #1

declare dso_local i8* @GetProcAddress(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
