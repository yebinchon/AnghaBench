; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_togglehelp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_togglehelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.togglelist = type { i8*, i8* }

@Togglelist = common dso_local global %struct.togglelist* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%-15s toggle %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%-15s %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"display help information\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @togglehelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @togglehelp() #0 {
  %1 = alloca %struct.togglelist*, align 8
  %2 = load %struct.togglelist*, %struct.togglelist** @Togglelist, align 8
  store %struct.togglelist* %2, %struct.togglelist** %1, align 8
  br label %3

3:                                                ; preds = %31, %0
  %4 = load %struct.togglelist*, %struct.togglelist** %1, align 8
  %5 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = load %struct.togglelist*, %struct.togglelist** %1, align 8
  %10 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = load %struct.togglelist*, %struct.togglelist** %1, align 8
  %15 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.togglelist*, %struct.togglelist** %1, align 8
  %21 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.togglelist*, %struct.togglelist** %1, align 8
  %24 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %25)
  br label %29

27:                                               ; preds = %13
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  br label %30

30:                                               ; preds = %29, %8
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.togglelist*, %struct.togglelist** %1, align 8
  %33 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %32, i32 1
  store %struct.togglelist* %33, %struct.togglelist** %1, align 8
  br label %3

34:                                               ; preds = %3
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
