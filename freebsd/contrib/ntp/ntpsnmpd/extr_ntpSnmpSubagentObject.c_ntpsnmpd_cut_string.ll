; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpSnmpSubagentObject.c_ntpsnmpd_cut_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpsnmpd/extr_ntpSnmpSubagentObject.c_ntpsnmpd_cut_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntpsnmpd_cut_string(i8* %0, i8* %1, i8 signext %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ult i64 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %78

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %15, align 8
  store i64 0, i64* %13, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @memset(i8* %22, i32 0, i64 %23)
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %66, %19
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sle i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %69

35:                                               ; preds = %33
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* %9, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %65

47:                                               ; preds = %35
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %13, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %63, align 1
  br label %64

64:                                               ; preds = %55, %51, %47
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %25

69:                                               ; preds = %33
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %71, 1
  %73 = call i64 @min(i64 %70, i64 %72)
  store i64 %73, i64* %13, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i64, i64* %13, align 8
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %69, %18
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
