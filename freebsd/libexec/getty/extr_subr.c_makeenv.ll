; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_makeenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_makeenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@makeenv.termbuf = internal global [128 x i8] c"TERM=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@TT = common dso_local global i64* null, align 8
@EV = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeenv(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %6 = load i8**, i8*** %2, align 8
  store i8** %6, i8*** %5, align 8
  %7 = load i64*, i64** @TT, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i64*, i64** @TT, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i64*, i64** @TT, align 8
  %15 = call i32 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @makeenv.termbuf, i64 0, i64 0), i64* %14, i32 128)
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %5, align 8
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @makeenv.termbuf, i64 0, i64 0), i8** %16, align 8
  br label %18

18:                                               ; preds = %13, %9, %1
  %19 = load i8*, i8** @EV, align 8
  store i8* %19, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %27, %21
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 44)
  store i8* %25, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i8 0, i8* %28, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %5, align 8
  store i8* %30, i8** %31, align 8
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %3, align 8
  br label %23

34:                                               ; preds = %23
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %5, align 8
  store i8* %39, i8** %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i8**, i8*** %5, align 8
  store i8* null, i8** %44, align 8
  ret void
}

declare dso_local i32 @strlcat(i8*, i64*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
