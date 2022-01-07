; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_std_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_std_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Unknown standard command.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @std_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_available(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (...) @std_list_available()
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @std_status_available()
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @std_load_available()
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @std_unload_available()
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %26
  %33 = call i32 @assert(i32 0)
  br label %34

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %30, %24, %18, %12, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @std_list_available(...) #1

declare dso_local i32 @std_status_available(...) #1

declare dso_local i32 @std_load_available(...) #1

declare dso_local i32 @std_unload_available(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
