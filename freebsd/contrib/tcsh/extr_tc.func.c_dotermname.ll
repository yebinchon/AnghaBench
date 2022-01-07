; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_dotermname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_dotermname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@STRstatus = common dso_local global i32 0, align 4
@STR1 = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@STR0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dotermname(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2048 x i8], align 16
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %7 = load %struct.command*, %struct.command** %4, align 8
  %8 = call i32 @USE(%struct.command* %7)
  %9 = load i32**, i32*** %3, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %20

15:                                               ; preds = %2
  %16 = load i32**, i32*** %3, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i8* @short2str(i32* %18)
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i8* [ %14, %13 ], [ %19, %15 ]
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @STRstatus, align 4
  %26 = load i32, i32* @STR1, align 4
  %27 = load i32, i32* @VAR_READWRITE, align 4
  %28 = call i32 @setcopy(i32 %25, i32 %26, i32 %27)
  br label %46

29:                                               ; preds = %20
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @tgetent(i8* %30, i8* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @STRstatus, align 4
  %38 = load i32, i32* @STR0, align 4
  %39 = load i32, i32* @VAR_READWRITE, align 4
  %40 = call i32 @setcopy(i32 %37, i32 %38, i32 %39)
  br label %46

41:                                               ; preds = %29
  %42 = load i32, i32* @STRstatus, align 4
  %43 = load i32, i32* @STR1, align 4
  %44 = load i32, i32* @VAR_READWRITE, align 4
  %45 = call i32 @setcopy(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %24, %41, %34
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @short2str(i32*) #1

declare dso_local i32 @setcopy(i32, i32, i32) #1

declare dso_local i32 @tgetent(i8*, i8*) #1

declare dso_local i32 @xprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
