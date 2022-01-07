; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_fetch.c_auto_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_fetch.c_auto_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@toplevel = common dso_local global i32 0, align 4
@connected = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@lostpeer = common dso_local global i32 0, align 4
@redirect_loop = common dso_local global i64 0, align 8
@anonftp = common dso_local global i32 0, align 4
@outfile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auto_fetch(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store volatile i32 0, i32* %7, align 4
  store volatile i32 0, i32* %6, align 4
  %8 = load i32, i32* @toplevel, align 4
  %9 = call i64 @sigsetjmp(i32 %8, i32 1) #3
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i64, i64* @connected, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @disconnect(i32 0, i32* null)
  br label %16

16:                                               ; preds = %14, %11
  %17 = load volatile i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load volatile i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store volatile i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load volatile i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %93

24:                                               ; preds = %2
  %25 = load i32, i32* @SIGINT, align 4
  %26 = load i32, i32* @intr, align 4
  %27 = call i32 @xsignal(i32 %25, i32 %26)
  %28 = load i32, i32* @SIGPIPE, align 4
  %29 = load i32, i32* @lostpeer, align 4
  %30 = call i32 @xsignal(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %80, %24
  %32 = load volatile i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load volatile i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %83

40:                                               ; preds = %38
  %41 = load i8**, i8*** %5, align 8
  %42 = load volatile i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32* @strchr(i8* %45, i8 signext 58)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %83

49:                                               ; preds = %40
  store i64 0, i64* @redirect_loop, align 8
  %50 = load i32, i32* @anonftp, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 2, i32* @anonftp, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i8**, i8*** %5, align 8
  %55 = load volatile i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @go_fetch(i8* %58)
  store volatile i32 %59, i32* %7, align 4
  %60 = load i8*, i8** @outfile, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  %63 = load i8*, i8** @outfile, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i8*, i8** @outfile, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 124
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i8* null, i8** @outfile, align 8
  br label %73

73:                                               ; preds = %72, %66, %62, %53
  %74 = load volatile i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load volatile i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store volatile i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79
  %81 = load volatile i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store volatile i32 %82, i32* %6, align 4
  br label %31

83:                                               ; preds = %48, %38
  %84 = load i64, i64* @connected, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load volatile i32, i32* %7, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @disconnect(i32 0, i32* null)
  br label %91

91:                                               ; preds = %89, %86, %83
  %92 = load volatile i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %22
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #1

declare dso_local i32 @disconnect(i32, i32*) #2

declare dso_local i32 @xsignal(i32, i32) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @go_fetch(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
