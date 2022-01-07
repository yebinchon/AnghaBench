; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_setchars.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_setchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@charnames = common dso_local global i8*** null, align 8
@charvars = common dso_local global i8** null, align 8
@_POSIX_VDISABLE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setchars() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %40, %0
  %4 = load i8***, i8**** @charnames, align 8
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8**, i8*** %4, i64 %6
  %8 = load i8**, i8*** %7, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %3
  %11 = load i8***, i8**** @charnames, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8**, i8*** %11, i64 %13
  %15 = load i8**, i8*** %14, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = load i8**, i8*** @charvars, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8 %26, i8* %31, align 1
  br label %39

32:                                               ; preds = %19, %10
  %33 = load i8, i8* @_POSIX_VDISABLE, align 1
  %34 = load i8**, i8*** @charvars, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8 %33, i8* %38, align 1
  br label %39

39:                                               ; preds = %32, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %3

43:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
