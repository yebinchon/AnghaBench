; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strerror.c_errstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strerror.c_errstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i64)* @errstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @errstr(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @EBUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 %14
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %19, i8** %9, align 8
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %5, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 0, %25
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %37, %27
  %30 = load i32, i32* %10, align 4
  %31 = urem i32 %30, 10
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [11 x i8], [11 x i8]* @.str, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %9, align 8
  store i8 %34, i8* %36, align 1
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = udiv i32 %38, 10
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %29, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %9, align 8
  store i8 45, i8* %46, align 1
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %9, align 8
  store i8 32, i8* %49, align 1
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %51, i8** %9, align 8
  store i8 58, i8* %51, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @strlcpy(i8* %52, i8* %53, i64 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @strlcat(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @strlcat(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
