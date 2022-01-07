; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_utl.c_equal_nocase.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_utl.c_equal_nocase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32)* @equal_nocase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equal_nocase(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %10, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @skip_prefix(i8** %7, i64* %8, i64 %14, i32 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %84

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %76, %21
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %12, align 1
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %13, align 1
  %30 = load i8, i8* %12, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load i8, i8* %12, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %13, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = load i8, i8* %12, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sle i32 65, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i8, i8* %12, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp sle i32 %46, 90
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8, i8* %12, align 1
  %50 = zext i8 %49 to i32
  %51 = sub nsw i32 %50, 65
  %52 = add nsw i32 %51, 97
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %12, align 1
  br label %54

54:                                               ; preds = %48, %44, %40
  %55 = load i8, i8* %13, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sle i32 65, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i8, i8* %13, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sle i32 %60, 90
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i8, i8* %13, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %64, 65
  %66 = add nsw i32 %65, 97
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %13, align 1
  br label %68

68:                                               ; preds = %62, %58, %54
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %13, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %84

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %34
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %8, align 8
  br label %22

83:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %74, %33, %20
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @skip_prefix(i8**, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
