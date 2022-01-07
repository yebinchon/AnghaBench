; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_msyslog.c_format_errmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_msyslog.c_format_errmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_errmsg(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %78, %52, %35, %4
  %17 = load i8*, i8** %12, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %12, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %10, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  %28 = icmp ult i8* %23, %27
  br label %29

29:                                               ; preds = %22, %16
  %30 = phi i1 [ false, %16 ], [ %28, %22 ]
  br i1 %30, label %31, label %79

31:                                               ; preds = %29
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 37
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8, i8* %10, align 1
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  store i8 %36, i8* %37, align 1
  br label %16

39:                                               ; preds = %31
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %12, align 8
  %42 = load i8, i8* %40, align 1
  store i8 %42, i8* %10, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 109
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %11, align 8
  store i8 37, i8* %46, align 1
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 0, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %79

52:                                               ; preds = %45
  %53 = load i8, i8* %10, align 1
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %11, align 8
  store i8 %53, i8* %54, align 1
  br label %16

56:                                               ; preds = %39
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %59 = call i32 @errno_to_str(i32 %57, i8* %58, i32 256)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %61 = call i64 @strlen(i8* %60)
  store i64 %61, i64* %13, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = icmp ult i8* %64, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  %75 = load i64, i64* %13, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %77, i8** %11, align 8
  br label %78

78:                                               ; preds = %70, %56
  br label %16

79:                                               ; preds = %51, %29
  %80 = load i8*, i8** %11, align 8
  store i8 0, i8* %80, align 1
  ret void
}

declare dso_local i32 @errno_to_str(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
