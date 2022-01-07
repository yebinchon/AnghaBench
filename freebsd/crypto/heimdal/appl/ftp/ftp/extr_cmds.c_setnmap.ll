; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_setnmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_setnmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mapflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Nmap off.\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mapout\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Usage: %s [mapin mapout]\0A\00", align 1
@altarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Usage: %s missing space\0A\00", align 1
@proxy = common dso_local global i64 0, align 8
@mapin = common dso_local global i32 0, align 4
@MaxPathLen = common dso_local global i32 0, align 4
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
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  store i32 0, i32* @mapflag, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @mapflag, align 4
  store i32 %10, i32* @code, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 -1, i32* @code, align 4
  br label %65

22:                                               ; preds = %14, %11
  store i32 1, i32* @mapflag, align 4
  store i32 1, i32* @code, align 4
  %23 = load i8*, i8** @altarg, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 32)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  store i32 -1, i32* @code, align 4
  br label %65

32:                                               ; preds = %22
  %33 = load i64, i64* @proxy, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %42, %35
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %36

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** @altarg, align 8
  %45 = load i8*, i8** @altarg, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 32)
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i8*, i8** %5, align 8
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* @mapin, align 4
  %50 = load i8*, i8** @altarg, align 8
  %51 = load i32, i32* @MaxPathLen, align 4
  %52 = call i32 @strlcpy(i32 %49, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %59, %47
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %53

60:                                               ; preds = %53
  %61 = load i32, i32* @mapout, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* @MaxPathLen, align 4
  %64 = call i32 @strlcpy(i32 %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %27, %17, %8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
