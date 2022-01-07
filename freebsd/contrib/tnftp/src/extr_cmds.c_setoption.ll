; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_setoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_setoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8* }

@code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"usage: %s [option value]\0A\00", align 1
@optiontab = common dso_local global %struct.option* null, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%-*s\09%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPTIONINDENT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setoption(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.option*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* @code, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %11, %2
  %15 = load i8**, i8*** %4, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @UPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %59

19:                                               ; preds = %11, %8
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load %struct.option*, %struct.option** @optiontab, align 8
  store %struct.option* %23, %struct.option** %5, align 8
  br label %24

24:                                               ; preds = %46, %22
  %25 = load %struct.option*, %struct.option** %5, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load i32, i32* @ttyout, align 4
  %31 = load %struct.option*, %struct.option** %5, align 8
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.option*, %struct.option** %5, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.option*, %struct.option** %5, align 8
  %40 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %42 ]
  %45 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* inttoptr (i64 11 to i8*), i8* %33, i8* %44)
  br label %46

46:                                               ; preds = %43
  %47 = load %struct.option*, %struct.option** %5, align 8
  %48 = getelementptr inbounds %struct.option, %struct.option* %47, i32 1
  store %struct.option* %48, %struct.option** %5, align 8
  br label %24

49:                                               ; preds = %24
  br label %58

50:                                               ; preds = %19
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @set_option(i8* %53, i8* %56, i32 1)
  br label %58

58:                                               ; preds = %50, %49
  store i32 0, i32* @code, align 4
  br label %59

59:                                               ; preds = %58, %14
  ret void
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @set_option(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
