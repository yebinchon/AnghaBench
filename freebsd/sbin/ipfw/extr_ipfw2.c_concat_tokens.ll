; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_concat_tokens.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_concat_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._s_x = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @concat_tokens(i8* %0, i64 %1, %struct._s_x* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._s_x*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._s_x*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct._s_x* %2, %struct._s_x** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct._s_x*, %struct._s_x** %8, align 8
  store %struct._s_x* %13, %struct._s_x** %10, align 8
  br label %14

14:                                               ; preds = %51, %4
  %15 = load %struct._s_x*, %struct._s_x** %10, align 8
  %16 = getelementptr inbounds %struct._s_x, %struct._s_x* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %12, align 8
  %25 = sub i64 %23, %24
  %26 = load i64, i64* %12, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %31

29:                                               ; preds = %19
  %30 = load i8*, i8** %9, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %28 ], [ %30, %29 ]
  %33 = load %struct._s_x*, %struct._s_x** %10, align 8
  %34 = getelementptr inbounds %struct._s_x, %struct._s_x* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @snprintf(i8* %22, i64 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32, i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %12, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %5, align 8
  br label %56

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load %struct._s_x*, %struct._s_x** %10, align 8
  %53 = getelementptr inbounds %struct._s_x, %struct._s_x* %52, i32 1
  store %struct._s_x* %53, %struct._s_x** %10, align 8
  br label %14

54:                                               ; preds = %14
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
