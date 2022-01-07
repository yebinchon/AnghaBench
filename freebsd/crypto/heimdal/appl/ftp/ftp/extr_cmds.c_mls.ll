; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_mls.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_mls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"remote-files\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"local-file\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"usage: %s remote-files local-file\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"output to local-file:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NLST\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@mname = common dso_local global i8* null, align 8
@mflag = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@mabort = common dso_local global i32 0, align 4
@jabort = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8
@interactive = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Continue with\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mls(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i8], align 1
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %24

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i32 -1, i32* @code, align 4
  br label %128

29:                                               ; preds = %20, %17
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  store i8* null, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %29
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 124
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = call i32 @globulize(i8** %10)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @confirm(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %49
  store i32 -1, i32* @code, align 4
  br label %128

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %44, %29
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 108
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  store i8* %67, i8** %8, align 8
  %68 = load i8**, i8*** %4, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** @mname, align 8
  store i32 1, i32* @mflag, align 4
  %71 = load i32, i32* @SIGINT, align 4
  %72 = load i32, i32* @mabort, align 4
  %73 = call i32 @signal(i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @jabort, align 4
  %75 = call i32 @setjmp(i32 %74) #3
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %76, align 1
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %121, %58
  %78 = load i32, i32* @mflag, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %3, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i1 [ false, %77 ], [ %84, %80 ]
  br i1 %86, label %87, label %124

87:                                               ; preds = %85
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 119, i32 97
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %92, i8* %93, align 1
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i8**, i8*** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %102 = call i32 @recvrequest(i8* %94, i8* %95, i8* %100, i8* %101, i32 0, i32 1)
  %103 = load i32, i32* @mflag, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %87
  %106 = load i64, i64* @fromatty, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i32, i32* @interactive, align 4
  store i32 %109, i32* %6, align 4
  store i32 1, i32* @interactive, align 4
  %110 = load i8**, i8*** %4, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @mflag, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @mflag, align 4
  br label %118

118:                                              ; preds = %115, %108
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* @interactive, align 4
  br label %120

120:                                              ; preds = %118, %105, %87
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %77

124:                                              ; preds = %85
  %125 = load i32, i32* @SIGINT, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @signal(i32 %125, i32 %126)
  store i32 0, i32* @mflag, align 4
  br label %128

128:                                              ; preds = %124, %56, %24
  ret void
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @globulize(i8**) #1

declare dso_local i64 @confirm(i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
