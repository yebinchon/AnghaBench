; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read = common dso_local global i32 0, align 4
@remin = common dso_local global i32 0, align 4
@iamremote = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@vwrite = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@errs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @response() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = load i32, i32* @read, align 4
  %8 = load i32, i32* @remin, align 4
  %9 = call i32 @atomicio(i32 %7, i32 %8, i8* %4, i32 1)
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @lostconn(i32 0)
  br label %14

14:                                               ; preds = %12, %0
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  store i8* %15, i8** %3, align 8
  %16 = load i8, i8* %4, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %19 [
    i32 0, label %18
    i32 1, label %23
    i32 2, label %23
  ]

18:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %70

19:                                               ; preds = %14
  %20 = load i8, i8* %4, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  store i8 %20, i8* %21, align 1
  br label %23

23:                                               ; preds = %14, %14, %19
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* @read, align 4
  %26 = load i32, i32* @remin, align 4
  %27 = call i32 @atomicio(i32 %25, i32 %26, i8* %2, i32 1)
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @lostconn(i32 0)
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i8, i8* %2, align 1
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  store i8 %33, i8* %34, align 1
  br label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 2047
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8, i8* %2, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %24, label %46

46:                                               ; preds = %44
  %47 = load i32, i32* @iamremote, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %54 = call i32 @snmprintf(i8* %52, i32 2048, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @vwrite, align 4
  %56 = load i32, i32* @STDERR_FILENO, align 4
  %57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %59 = call i32 @strlen(i8* %58)
  %60 = call i32 @atomicio(i32 %55, i32 %56, i8* %57, i32 %59)
  br label %61

61:                                               ; preds = %49, %46
  %62 = load i32, i32* @errs, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @errs, align 4
  %64 = load i8, i8* %4, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 -1, i32* %1, align 4
  br label %70

68:                                               ; preds = %61
  %69 = call i32 @exit(i32 1) #3
  unreachable

70:                                               ; preds = %67, %18
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @atomicio(i32, i32, i8*, i32) #1

declare dso_local i32 @lostconn(i32) #1

declare dso_local i32 @snmprintf(i8*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
