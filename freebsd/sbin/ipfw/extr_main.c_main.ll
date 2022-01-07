; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_OK = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pathname: %s\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"usage: ipfw [options]\0Ado \22ipfw -h\22 or \22man ipfw\22 for details\00", align 1
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = load i8**, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %9, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 47
  br i1 %18, label %19, label %43

19:                                               ; preds = %8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @R_OK, align 4
  %27 = call i64 @access(i8* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @ipfw_readfile(i32 %30, i8** %31)
  br label %42

33:                                               ; preds = %19
  %34 = load i32, i32* @EX_USAGE, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @err(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %33, %29
  br label %52

43:                                               ; preds = %8, %2
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = call i64 @ipfw_main(i32 %44, i8** %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EX_USAGE, align 4
  %50 = call i32 @errx(i32 %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, i32* @EX_OK, align 4
  ret i32 %53
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @ipfw_readfile(i32, i8**) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @ipfw_main(i32, i8**) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
