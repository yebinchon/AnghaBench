; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_us_to_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_us_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%dus\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%gms\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%gfs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @us_to_time(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %9, align 1
  br label %44

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sitofp i32 %15 to float
  %17 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %16)
  br label %43

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 1000
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sitofp i32 %23 to float
  %25 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %24)
  br label %42

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 1000000
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %32, 1.000000e+03
  %34 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), float %33)
  br label %41

35:                                               ; preds = %26
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %38, 1.000000e+06
  %40 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), float %39)
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42, %13
  br label %44

44:                                               ; preds = %43, %7
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
