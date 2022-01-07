; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_dprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_dprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gauge_percent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"XXX\0A%s%s%s%s\0AXXX\0A%i\0A\00", align 1
@use_color = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"\\Zn\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dprompt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dprompt_dprint(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @gauge_percent, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %14, 100
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %9, align 4
  store i32 %17, i32* @gauge_percent, align 4
  br label %18

18:                                               ; preds = %16, %13, %4
  %19 = load i32, i32* %5, align 4
  %20 = load i64, i64* @use_color, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i8*, i8** %6, align 8
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %28 ]
  %31 = load i32, i32* @dprompt, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i8* [ %35, %34 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %36 ]
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dprintf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %30, i32 %31, i8* %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @fsync(i32 %41)
  ret void
}

declare dso_local i32 @dprintf(i32, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
