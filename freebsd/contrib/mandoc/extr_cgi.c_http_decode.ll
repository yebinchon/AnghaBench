; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_http_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_http_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @http_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_decode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [3 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 2
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %65, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 0, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 37, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  store i8 %22, i8* %23, align 1
  %24 = sext i8 %22 to i32
  %25 = icmp eq i32 0, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %72

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 1
  store i8 %30, i8* %31, align 1
  %32 = sext i8 %30 to i32
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %72

35:                                               ; preds = %27
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %6)
  %38 = icmp ne i32 1, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %72

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 0, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %72

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %5, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %49, i8** %3, align 8
  br label %64

50:                                               ; preds = %14
  %51 = load i8*, i8** %3, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 43, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %60

56:                                               ; preds = %50
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i32 [ 32, %55 ], [ %59, %56 ]
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %5, align 8
  store i8 %62, i8* %63, align 1
  br label %64

64:                                               ; preds = %60, %44
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %9

70:                                               ; preds = %9
  %71 = load i8*, i8** %5, align 8
  store i8 0, i8* %71, align 1
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %43, %39, %34, %26
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
