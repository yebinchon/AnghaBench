; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_setnmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_setnmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mapflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Nmap off.\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mapout\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"usage: %s [mapin mapout]\0A\00", align 1
@altarg = common dso_local global i8* null, align 8
@proxy = common dso_local global i64 0, align 8
@mapin = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@mapout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setnmap(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  store i32 0, i32* @mapflag, align 4
  %9 = load i32, i32* @ttyout, align 4
  %10 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @mapflag, align 4
  store i32 %11, i32* @code, align 4
  br label %64

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %18, %12
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @UPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i32 -1, i32* @code, align 4
  br label %64

29:                                               ; preds = %21
  store i32 1, i32* @mapflag, align 4
  store i32 1, i32* @code, align 4
  %30 = load i8*, i8** @altarg, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 32)
  store i8* %31, i8** %5, align 8
  %32 = load i64, i64* @proxy, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %41, %34
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %35

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** @altarg, align 8
  %44 = load i8*, i8** @altarg, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 32)
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %42, %29
  %47 = load i8*, i8** %5, align 8
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* @mapin, align 4
  %49 = load i8*, i8** @altarg, align 8
  %50 = load i32, i32* @MAXPATHLEN, align 4
  %51 = call i32 @strlcpy(i32 %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %58, %46
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %52

59:                                               ; preds = %52
  %60 = load i32, i32* @mapout, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @MAXPATHLEN, align 4
  %63 = call i32 @strlcpy(i32 %60, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %24, %8
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
