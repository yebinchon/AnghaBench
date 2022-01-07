; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"usage: %s username [password [account]]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@CONTINUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Account: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ACCT %s\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Login failed.\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@connected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = bitcast [1 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 0, i64 1, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @UPRINTF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 -1, i32* @code, align 4
  br label %111

30:                                               ; preds = %21
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @CONTINUE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call i8* @getpass(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %45, %41
  br label %52

48:                                               ; preds = %38
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @memset(i8* %55, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %52, %30
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @CONTINUE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = call i8* @getpass(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8* %73, i8** %5, align 8
  br label %74

74:                                               ; preds = %72, %68
  br label %79

75:                                               ; preds = %63
  %76 = load i8**, i8*** %4, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 3
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %5, align 8
  br label %79

79:                                               ; preds = %75, %74
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = call i32 @memset(i8* %82, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %79, %59
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @COMPLETE, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @ttyout, align 4
  %92 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  br label %111

93:                                               ; preds = %86
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i8**, i8*** %4, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 3
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %5, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = call i32 @memset(i8* %105, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %99, %96, %93
  store i32 -1, i32* @connected, align 4
  %110 = call i32 (...) @getremoteinfo()
  br label %111

111:                                              ; preds = %109, %90, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @another(i32*, i8***, i8*) #2

declare dso_local i32 @UPRINTF(i8*, i8*) #2

declare dso_local i32 @command(i8*, i8*) #2

declare dso_local i8* @getpass(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i32 @getremoteinfo(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
