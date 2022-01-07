; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/libtelnet/extr_genget.c_isprefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/libtelnet/extr_genget.c_isprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isprefix(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %8, align 1
  br label %20

20:                                               ; preds = %31, %14
  %21 = load i8, i8* %7, align 1
  %22 = call i64 @tolower(i8 zeroext %21)
  %23 = load i8, i8* %8, align 1
  %24 = call i64 @tolower(i8 zeroext %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %38

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %7, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %8, align 1
  br label %20

38:                                               ; preds = %30, %20
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %63

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  br label %61

55:                                               ; preds = %44
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi i64 [ %54, %49 ], [ %60, %55 ]
  br label %63

63:                                               ; preds = %61, %43
  %64 = phi i64 [ 0, %43 ], [ %62, %61 ]
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
