; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_addlists.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_addlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i8**)* @addlists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @addlists(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i8** null, i8*** %3, align 8
  br label %44

13:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i8** @enlist(i8** %22, i8* %27, i32 %33)
  store i8** %34, i8*** %4, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = icmp eq i8** %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %42

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %14

42:                                               ; preds = %37, %14
  %43 = load i8**, i8*** %4, align 8
  store i8** %43, i8*** %3, align 8
  br label %44

44:                                               ; preds = %42, %12
  %45 = load i8**, i8*** %3, align 8
  ret i8** %45
}

declare dso_local i8** @enlist(i8**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
