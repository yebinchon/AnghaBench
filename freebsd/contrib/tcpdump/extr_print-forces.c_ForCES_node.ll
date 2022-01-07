; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_ForCES_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_ForCES_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"FE\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"CE\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AllMulticast\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"AllCEsBroadcast\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"AllFEsBroadcast\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"AllBroadcast\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ForCESreserved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ForCES_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ForCES_node(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 1073741823
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %34

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 1073741824
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp sle i32 %11, 2147483647
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %34

14:                                               ; preds = %10, %7
  %15 = load i32, i32* %3, align 4
  %16 = icmp uge i32 %15, -1073741824
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp ule i32 %18, -17
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %34

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, -3
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, -2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %32, %28, %24, %20, %13, %6
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
