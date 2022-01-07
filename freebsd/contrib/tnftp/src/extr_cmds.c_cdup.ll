; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_cdup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_cdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CDUP\00", align 1
@ERROR = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"CDUP command not recognized, trying XCUP.\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"XCUP\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@dirchange = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdup(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @UPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 -1, i32* @code, align 4
  br label %35

13:                                               ; preds = %2
  %14 = call i32 @command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ERROR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32, i32* @code, align 4
  %20 = icmp eq i32 %19, 500
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i64, i64* @verbose, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @ttyout, align 4
  %26 = call i32 @fputs(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = call i32 @command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %18, %13
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @COMPLETE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  store i32 1, i32* @dirchange, align 4
  %34 = call i32 (...) @updateremotecwd()
  br label %35

35:                                               ; preds = %8, %33, %29
  ret void
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i32 @command(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @updateremotecwd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
