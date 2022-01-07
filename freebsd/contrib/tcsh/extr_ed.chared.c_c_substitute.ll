; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_substitute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_substitute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Cursor = common dso_local global i8* null, align 8
@InputBuf = common dso_local global i8* null, align 8
@HIST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @c_substitute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_substitute() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @Cursor, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %4, i8** %1, align 8
  br label %5

5:                                                ; preds = %34, %0
  %6 = load i8*, i8** %1, align 8
  %7 = load i8*, i8** @InputBuf, align 8
  %8 = icmp ugt i8* %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load i8*, i8** %1, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 32
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load i8*, i8** %1, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 9
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i8*, i8** %1, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i8*, i8** %1, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @HIST, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br label %31

31:                                               ; preds = %24, %19, %14, %9, %5
  %32 = phi i1 [ false, %19 ], [ false, %14 ], [ false, %9 ], [ false, %5 ], [ %30, %24 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %1, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %1, align 8
  br label %5

37:                                               ; preds = %31
  %38 = load i8*, i8** %1, align 8
  %39 = load i8*, i8** @InputBuf, align 8
  %40 = icmp uge i8* %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i8, i8* @HIST, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8*, i8** %1, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @HIST, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %1, align 8
  %54 = call i32 @c_excl(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %45, %41, %37
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = call i32 (...) @Refresh()
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @c_excl(i8*) #1

declare dso_local i32 @Refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
