; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_set_test_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_set_test_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_rs = common dso_local global i64 0, align 8
@use_async = common dso_local global i32 0, align 4
@flags = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i64 0, align 8
@echo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"nonblock\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @set_test_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_test_opt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %18 [
    i32 115, label %12
    i32 97, label %13
    i32 98, label %14
    i32 110, label %15
    i32 101, label %17
  ]

12:                                               ; preds = %7
  store i64 0, i64* @use_rs, align 8
  br label %19

13:                                               ; preds = %7
  store i32 1, i32* @use_async, align 4
  br label %19

14:                                               ; preds = %7
  store i64 0, i64* @flags, align 8
  br label %19

15:                                               ; preds = %7
  %16 = load i64, i64* @MSG_DONTWAIT, align 8
  store i64 %16, i64* @flags, align 8
  br label %19

17:                                               ; preds = %7
  store i32 1, i32* @echo, align 4
  br label %19

18:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %53

19:                                               ; preds = %17, %15, %14, %13, %12
  br label %52

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %21, i32 6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i64 0, i64* @use_rs, align 8
  br label %51

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 5)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 1, i32* @use_async, align 4
  br label %50

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 5)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i64 0, i64* @flags, align 8
  br label %49

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %36, i32 8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @MSG_DONTWAIT, align 8
  store i64 %40, i64* @flags, align 8
  br label %48

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %42, i32 4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 1, i32* @echo, align 4
  br label %47

46:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %53

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %24
  br label %52

52:                                               ; preds = %51, %19
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %46, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
