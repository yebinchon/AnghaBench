; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_process_one_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_process_one_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"header: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"HTTP/1.1 \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bad status %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Transfer-Encoding: chunked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32*)* @process_one_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_one_header(i8* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* @verb, align 4
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strncasecmp(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 9
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 50
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* @verb, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 9
  %29 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %23
  store i32 0, i32* %4, align 4
  br label %56

31:                                               ; preds = %17
  br label %55

32:                                               ; preds = %13
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strncasecmp(i8* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 16)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 16
  %43 = call i64 @atoi(i8* %42)
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %36
  br label %54

46:                                               ; preds = %32
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strncasecmp(i8* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 26)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64*, i64** %6, align 8
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %7, align 8
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %31
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
