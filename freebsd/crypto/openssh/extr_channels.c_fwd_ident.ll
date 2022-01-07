; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_fwd_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_fwd_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORWARD_ADM = common dso_local global i32 0, align 4
@FORWARD_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"admin local\00", align 1
@FORWARD_REMOTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"admin remote\00", align 1
@FORWARD_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"user local\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"user remote\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Unknown forward permission list %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @fwd_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fwd_ident(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FORWARD_ADM, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FORWARD_LOCAL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %42

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FORWARD_REMOTE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %42

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FORWARD_USER, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @FORWARD_LOCAL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FORWARD_REMOTE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %42

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34, %29, %18, %13
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @fatal(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
