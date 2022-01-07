; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_send_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_send_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sendlist = type { i8*, i8* }

@Sendlist = common dso_local global %struct.sendlist* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%-15s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @send_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_help() #0 {
  %1 = alloca %struct.sendlist*, align 8
  %2 = load %struct.sendlist*, %struct.sendlist** @Sendlist, align 8
  store %struct.sendlist* %2, %struct.sendlist** %1, align 8
  br label %3

3:                                                ; preds = %22, %0
  %4 = load %struct.sendlist*, %struct.sendlist** %1, align 8
  %5 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = load %struct.sendlist*, %struct.sendlist** %1, align 8
  %10 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.sendlist*, %struct.sendlist** %1, align 8
  %15 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.sendlist*, %struct.sendlist** %1, align 8
  %18 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %19)
  br label %21

21:                                               ; preds = %13, %8
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.sendlist*, %struct.sendlist** %1, align 8
  %24 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %23, i32 1
  store %struct.sendlist* %24, %struct.sendlist** %1, align 8
  br label %3

25:                                               ; preds = %3
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
