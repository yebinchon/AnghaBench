; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_trimdomain.c_isDISP.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_trimdomain.c_isDISP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @isDISP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isDISP(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strspn(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %43

17:                                               ; preds = %9
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @strspn(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i8*, i8** %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %33, %24
  br label %42

42:                                               ; preds = %41, %17
  br label %43

43:                                               ; preds = %42, %16
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @strspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
