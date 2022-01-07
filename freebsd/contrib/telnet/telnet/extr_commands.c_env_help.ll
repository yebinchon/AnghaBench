; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_env_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_env_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envlist = type { i8*, i8* }

@EnvList = common dso_local global %struct.envlist* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%-15s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @env_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @env_help() #0 {
  %1 = alloca %struct.envlist*, align 8
  %2 = load %struct.envlist*, %struct.envlist** @EnvList, align 8
  store %struct.envlist* %2, %struct.envlist** %1, align 8
  br label %3

3:                                                ; preds = %31, %0
  %4 = load %struct.envlist*, %struct.envlist** %1, align 8
  %5 = getelementptr inbounds %struct.envlist, %struct.envlist* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = load %struct.envlist*, %struct.envlist** %1, align 8
  %10 = getelementptr inbounds %struct.envlist, %struct.envlist* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = load %struct.envlist*, %struct.envlist** %1, align 8
  %15 = getelementptr inbounds %struct.envlist, %struct.envlist* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.envlist*, %struct.envlist** %1, align 8
  %21 = getelementptr inbounds %struct.envlist, %struct.envlist* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.envlist*, %struct.envlist** %1, align 8
  %24 = getelementptr inbounds %struct.envlist, %struct.envlist* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %25)
  br label %29

27:                                               ; preds = %13
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  br label %30

30:                                               ; preds = %29, %8
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.envlist*, %struct.envlist** %1, align 8
  %33 = getelementptr inbounds %struct.envlist, %struct.envlist* %32, i32 1
  store %struct.envlist* %33, %struct.envlist** %1, align 8
  br label %3

34:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
