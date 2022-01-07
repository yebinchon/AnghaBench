; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_pr_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_pr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pr_type.ttab = internal global [17 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [11 x i8] c"Echo Reply\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ICMP 1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ICMP 2\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Dest Unreachable\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Source Quench\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Redirect\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ICMP 6\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ICMP 7\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Echo\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ICMP 9\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ICMP 10\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Time Exceeded\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Param Problem\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Timestamp\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Timestamp Reply\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Info Request\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Info Reply\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"OUT-OF-RANGE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pr_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 16
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [17 x i8*], [17 x i8*]* @pr_type.ttab, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
