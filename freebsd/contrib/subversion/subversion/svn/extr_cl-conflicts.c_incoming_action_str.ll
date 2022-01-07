; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_incoming_action_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_incoming_action_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"incoming file edit\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"incoming file add\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"incoming file delete or move\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"incoming replace with file\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"incoming dir edit\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"incoming dir add\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"incoming dir delete or move\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"incoming replace with dir\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"incoming edit\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"incoming add\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"incoming delete or move\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"incoming replace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @incoming_action_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @incoming_action_str(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %40 [
    i32 135, label %7
    i32 133, label %7
    i32 136, label %18
    i32 134, label %29
    i32 132, label %29
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 131, label %11
    i32 130, label %13
    i32 128, label %15
  ]

9:                                                ; preds = %7
  %10 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %3, align 8
  br label %41

11:                                               ; preds = %7
  %12 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  br label %41

13:                                               ; preds = %7
  %14 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  br label %41

15:                                               ; preds = %7
  %16 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i8* %16, i8** %3, align 8
  br label %41

17:                                               ; preds = %7
  br label %40

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 131, label %22
    i32 130, label %24
    i32 128, label %26
  ]

20:                                               ; preds = %18
  %21 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i8* %21, i8** %3, align 8
  br label %41

22:                                               ; preds = %18
  %23 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i8* %23, i8** %3, align 8
  br label %41

24:                                               ; preds = %18
  %25 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  br label %41

26:                                               ; preds = %18
  %27 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i8* %27, i8** %3, align 8
  br label %41

28:                                               ; preds = %18
  br label %40

29:                                               ; preds = %2, %2
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %39 [
    i32 129, label %31
    i32 131, label %33
    i32 130, label %35
    i32 128, label %37
  ]

31:                                               ; preds = %29
  %32 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i8* %32, i8** %3, align 8
  br label %41

33:                                               ; preds = %29
  %34 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i8* %34, i8** %3, align 8
  br label %41

35:                                               ; preds = %29
  %36 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i8* %36, i8** %3, align 8
  br label %41

37:                                               ; preds = %29
  %38 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i8* %38, i8** %3, align 8
  br label %41

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %2, %39, %28, %17
  store i8* null, i8** %3, align 8
  br label %41

41:                                               ; preds = %40, %37, %35, %33, %31, %26, %24, %22, %20, %15, %13, %11, %9
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
