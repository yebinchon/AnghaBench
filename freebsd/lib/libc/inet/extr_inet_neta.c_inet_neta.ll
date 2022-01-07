; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_neta.c_inet_neta.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_neta.c_inet_neta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet_neta(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %52, %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, -16777216
  %18 = lshr i32 %17, 24
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %24, 5
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %66

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @SPRINTF(i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  store i8 46, i8* %41, align 1
  %43 = load i8*, i8** %6, align 8
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %40, %27
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %44, %15
  br label %12

53:                                               ; preds = %12
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %53
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %4, align 8
  br label %68

66:                                               ; preds = %60, %26
  %67 = load i32, i32* @EMSGSIZE, align 4
  store i32 %67, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i8*, i8** %4, align 8
  ret i8* %69
}

declare dso_local i32 @SPRINTF(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
