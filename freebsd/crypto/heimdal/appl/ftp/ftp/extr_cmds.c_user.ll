; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"usage: %s username [password] [account]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@CONTINUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Account: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ACCT %s\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Login failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %13
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 -1, i32* @code, align 4
  br label %95

24:                                               ; preds = %16
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CONTINUE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %37 = call i32 @UI_UTIL_read_pw_string(i8* %36, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %32
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %24
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CONTINUE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fflush(i32 %57)
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %60 = load i32, i32* @stdin, align 4
  %61 = call i32 @fgets(i8* %59, i32 79, i32 %60)
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %63 = call i64 @strcspn(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 3
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %55, %52
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %70, %48
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @COMPLETE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @stdout, align 4
  %83 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %95

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i8**, i8*** %4, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %19, %81, %90, %87, %84
  ret void
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @command(i8*, i8*) #1

declare dso_local i32 @UI_UTIL_read_pw_string(i8*, i32, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
