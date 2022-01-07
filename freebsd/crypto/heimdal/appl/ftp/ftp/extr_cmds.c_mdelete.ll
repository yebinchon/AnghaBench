; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_mdelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_mdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"remote-files\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"usage: %s remote-files\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mname = common dso_local global i8* null, align 8
@mflag = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@mabort = common dso_local global i32 0, align 4
@jabort = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DELE %s\00", align 1
@fromatty = common dso_local global i64 0, align 8
@interactive = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Continue with\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mdelete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdelete(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i32 -1, i32* @code, align 4
  br label %70

18:                                               ; preds = %10, %2
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @mname, align 8
  store i32 1, i32* @mflag, align 4
  %22 = load i32, i32* @SIGINT, align 4
  %23 = load i32, i32* @mabort, align 4
  %24 = call i32 @signal(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @jabort, align 4
  %26 = call i32 @setjmp(i32 %25) #3
  br label %27

27:                                               ; preds = %65, %36, %18
  %28 = load i8**, i8*** %4, align 8
  %29 = call i8* @remglob(i8** %28, i32 0)
  store i8* %29, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* @mflag, align 4
  br label %27

37:                                               ; preds = %31
  %38 = load i32, i32* @mflag, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @confirm(i8* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @mflag, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @fromatty, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* @interactive, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* @interactive, align 4
  %57 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @mflag, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @mflag, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* @interactive, align 4
  br label %64

64:                                               ; preds = %62, %52, %47
  br label %65

65:                                               ; preds = %64, %40, %37
  br label %27

66:                                               ; preds = %27
  %67 = load i32, i32* @SIGINT, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @signal(i32 %67, i32 %68)
  store i32 0, i32* @mflag, align 4
  br label %70

70:                                               ; preds = %66, %13
  ret void
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i8* @remglob(i8**, i32) #1

declare dso_local i64 @confirm(i8*, i8*) #1

declare dso_local i32 @command(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
