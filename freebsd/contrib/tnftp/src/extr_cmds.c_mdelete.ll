; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_mdelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_mdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"remote-files\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"usage: %s [remote-files]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@mintr = common dso_local global i32 0, align 4
@jabort = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DELE %s\00", align 1
@COMPLETE = common dso_local global i64 0, align 8
@dirchange = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8
@interactive = common dso_local global i32 0, align 4

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
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13, %2
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @UPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  store i32 -1, i32* @code, align 4
  br label %84

21:                                               ; preds = %13, %10
  store i32 1, i32* @mflag, align 4
  %22 = load i32, i32* @SIGINT, align 4
  %23 = load i32, i32* @mintr, align 4
  %24 = call i32 @xsignal(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @jabort, align 4
  %26 = call i64 @sigsetjmp(i32 %25, i32 1) #3
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @mabort(i8* %31)
  br label %33

33:                                               ; preds = %28, %21
  br label %34

34:                                               ; preds = %79, %43, %33
  %35 = load i8**, i8*** %4, align 8
  %36 = call i8* @remglob(i8** %35, i32 0, i32* null)
  store i8* %36, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* @mflag, align 4
  br label %34

44:                                               ; preds = %38
  %45 = load i32, i32* @mflag, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %44
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @confirm(i8* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i64, i64* @COMPLETE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* @dirchange, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, i32* @mflag, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @fromatty, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i32, i32* @interactive, align 4
  store i32 %67, i32* %6, align 4
  store i32 1, i32* @interactive, align 4
  %68 = load i8**, i8*** %4, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @confirm(i8* %70, i8* null)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @mflag, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @mflag, align 4
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* @interactive, align 4
  br label %78

78:                                               ; preds = %76, %63, %60
  br label %79

79:                                               ; preds = %78, %47, %44
  br label %34

80:                                               ; preds = %34
  %81 = load i32, i32* @SIGINT, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @xsignal(i32 %81, i32 %82)
  store i32 0, i32* @mflag, align 4
  br label %84

84:                                               ; preds = %80, %16
  ret void
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i32 @xsignal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @mabort(i8*) #1

declare dso_local i8* @remglob(i8**, i32, i32*) #1

declare dso_local i64 @confirm(i8*, i8*) #1

declare dso_local i64 @command(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
