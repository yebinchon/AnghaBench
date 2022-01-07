; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@remin = common dso_local global i32 0, align 4
@iamremote = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@errs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @response() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @BUFSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @remin, align 4
  %13 = call i32 @read(i32 %12, i8* %4, i32 1)
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @lostconn(i32 0)
  br label %18

18:                                               ; preds = %16, %0
  store i8* %11, i8** %3, align 8
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %22 [
    i32 0, label %21
    i32 1, label %26
    i32 2, label %26
  ]

21:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %70

22:                                               ; preds = %18
  %23 = load i8, i8* %4, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  store i8 %23, i8* %24, align 1
  br label %26

26:                                               ; preds = %18, %18, %22
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* @remin, align 4
  %29 = call i32 @read(i32 %28, i8* %2, i32 1)
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @lostconn(i32 0)
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i8, i8* %2, align 1
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  store i8 %35, i8* %36, align 1
  br label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @BUFSIZ, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %11, i64 %41
  %43 = icmp ult i8* %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8, i8* %2, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 10
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i1 [ false, %38 ], [ %47, %44 ]
  br i1 %49, label %27, label %50

50:                                               ; preds = %48
  %51 = load i32, i32* @iamremote, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @STDERR_FILENO, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = ptrtoint i8* %11 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @write(i32 %54, i8* %11, i32 %59)
  br label %61

61:                                               ; preds = %53, %50
  %62 = load i32, i32* @errs, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @errs, align 4
  %64 = load i8, i8* %4, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %70

68:                                               ; preds = %61
  %69 = call i32 @exit(i32 1) #4
  unreachable

70:                                               ; preds = %67, %21
  %71 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @lostconn(i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
