; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_set_test_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_set_test_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_async = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@verify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"nonblock\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @set_test_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_test_opt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %25 [
    i32 97, label %12
    i32 98, label %13
    i32 110, label %20
    i32 118, label %24
  ]

12:                                               ; preds = %7
  store i32 1, i32* @use_async, align 4
  br label %26

13:                                               ; preds = %7
  %14 = load i32, i32* @flags, align 4
  %15 = load i32, i32* @MSG_DONTWAIT, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load i32, i32* @MSG_WAITALL, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* @flags, align 4
  br label %26

20:                                               ; preds = %7
  %21 = load i32, i32* @MSG_DONTWAIT, align 4
  %22 = load i32, i32* @flags, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @flags, align 4
  br label %26

24:                                               ; preds = %7
  store i32 1, i32* @verify, align 4
  br label %26

25:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %62

26:                                               ; preds = %24, %20, %13, %12
  br label %61

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i32 5)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* @use_async, align 4
  br label %60

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 5)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @flags, align 4
  %38 = load i32, i32* @MSG_DONTWAIT, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @MSG_WAITALL, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* @flags, align 4
  br label %59

43:                                               ; preds = %32
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @MSG_DONTWAIT, align 4
  %49 = load i32, i32* @flags, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @flags, align 4
  br label %58

51:                                               ; preds = %43
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %52, i32 6)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 1, i32* @verify, align 4
  br label %57

56:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %62

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %26
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
