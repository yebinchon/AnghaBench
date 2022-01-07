; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_commands.c_command_echo.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_commands.c_command_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_echo(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %18 [
    i32 110, label %16
    i32 63, label %17
  ]

16:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %20

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %14, %17
  %19 = load i32, i32* @CMD_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %16
  br label %9

21:                                               ; preds = %9
  %22 = load i32, i32* @optind, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8** %25, i8*** %5, align 8
  %26 = load i32, i32* @optind, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i8* @unargv(i32 %29, i8** %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %34, %21
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* @CMD_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @unargv(i32, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
