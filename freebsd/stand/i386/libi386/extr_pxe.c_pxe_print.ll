; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@pxe_call = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s devices:\00", align 1
@pxedisk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"    %s0:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"    %s:%s\00", align 1
@rootip = common dso_local global i32 0, align 4
@rootpath = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pxe_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxe_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32*, i32** @pxe_call, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

7:                                                ; preds = %1
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pxedisk, i32 0, i32 0), align 8
  %9 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %25

13:                                               ; preds = %7
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pxedisk, i32 0, i32 0), align 8
  %15 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @rootip, align 4
  %20 = call i8* @inet_ntoa(i32 %19)
  %21 = load i8*, i8** @rootpath, align 8
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %20, i8* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %12, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @pager_output(i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
