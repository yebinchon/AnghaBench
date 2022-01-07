; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_modehelp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_modehelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modelist = type { i8*, i8* }

@.str = private unnamed_addr constant [51 x i8] c"format is:  'mode Mode', where 'Mode' is one of:\0A\0A\00", align 1
@ModeList = common dso_local global %struct.modelist* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%-15s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @modehelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modehelp() #0 {
  %1 = alloca %struct.modelist*, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %3 = load %struct.modelist*, %struct.modelist** @ModeList, align 8
  store %struct.modelist* %3, %struct.modelist** %1, align 8
  br label %4

4:                                                ; preds = %32, %0
  %5 = load %struct.modelist*, %struct.modelist** %1, align 8
  %6 = getelementptr inbounds %struct.modelist, %struct.modelist* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load %struct.modelist*, %struct.modelist** %1, align 8
  %11 = getelementptr inbounds %struct.modelist, %struct.modelist* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load %struct.modelist*, %struct.modelist** %1, align 8
  %16 = getelementptr inbounds %struct.modelist, %struct.modelist* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.modelist*, %struct.modelist** %1, align 8
  %22 = getelementptr inbounds %struct.modelist, %struct.modelist* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.modelist*, %struct.modelist** %1, align 8
  %25 = getelementptr inbounds %struct.modelist, %struct.modelist* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %26)
  br label %30

28:                                               ; preds = %14
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %20
  br label %31

31:                                               ; preds = %30, %9
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.modelist*, %struct.modelist** %1, align 8
  %34 = getelementptr inbounds %struct.modelist, %struct.modelist* %33, i32 1
  store %struct.modelist* %34, %struct.modelist** %1, align 8
  br label %4

35:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
