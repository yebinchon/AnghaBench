; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/libtelnet/extr_genget.c_genget.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/libtelnet/extr_genget.c_genget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ambiguous = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @genget(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8** null, i8*** %4, align 8
  br label %47

14:                                               ; preds = %3
  store i8** null, i8*** %9, align 8
  %15 = load i8**, i8*** %6, align 8
  store i8** %15, i8*** %8, align 8
  br label %16

16:                                               ; preds = %38, %14
  %17 = load i8**, i8*** %8, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @isprefix(i8* %21, i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %38

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8**, i8*** %8, align 8
  store i8** %31, i8*** %4, align 8
  br label %47

32:                                               ; preds = %27
  %33 = load i8**, i8*** %9, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8** @ambiguous, i8*** %4, align 8
  br label %47

36:                                               ; preds = %32
  %37 = load i8**, i8*** %8, align 8
  store i8** %37, i8*** %9, align 8
  br label %38

38:                                               ; preds = %36, %26
  %39 = load i8**, i8*** %8, align 8
  %40 = bitcast i8** %39 to i8*
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to i8**
  store i8** %44, i8*** %8, align 8
  br label %16

45:                                               ; preds = %16
  %46 = load i8**, i8*** %9, align 8
  store i8** %46, i8*** %4, align 8
  br label %47

47:                                               ; preds = %45, %35, %30, %13
  %48 = load i8**, i8*** %4, align 8
  ret i8** %48
}

declare dso_local i32 @isprefix(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
