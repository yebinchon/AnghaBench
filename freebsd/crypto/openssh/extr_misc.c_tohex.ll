; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_tohex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_tohex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"tohex: length > 65536\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tohex(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %13, 65536
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i8* @xstrdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %3, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = mul i64 %18, 2
  %20 = add i64 %19, 1
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i8* @xcalloc(i32 1, i64 %21)
  store i8* %22, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %38, %17
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snprintf(i8* %28, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @strlcat(i8* %34, i8* %35, i64 %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load i8*, i8** %8, align 8
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xcalloc(i32, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
