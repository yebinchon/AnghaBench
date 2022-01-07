; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"remote-file\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"usage: %s remote-file\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"pager\00", align 1
@DEFAULTPAGER = common dso_local global i8* null, align 8
@hash = common dso_local global i32 0, align 4
@restart_point = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19, %13, %2
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @UPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 -1, i32* @code, align 4
  br label %62

27:                                               ; preds = %19, %16
  %28 = call i8* @getoptionvalue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @EMPTYSTRING(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** @DEFAULTPAGER, align 8
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i8* @ftp_malloc(i64 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 124, i8* %42, align 1
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, 1
  %48 = call i32 @strlcpy(i8* %44, i8* %45, i64 %47)
  %49 = load i32, i32* @hash, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @restart_point, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @verbose, align 4
  store i32 %51, i32* %7, align 4
  store i32 0, i32* @verbose, align 4
  store i32 0, i32* @restart_point, align 4
  store i32 0, i32* @hash, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @recvrequest(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %52, i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 0)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* @hash, align 4
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* @restart_point, align 4
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* @verbose, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %34, %22
  ret void
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i8* @getoptionvalue(i8*) #1

declare dso_local i64 @EMPTYSTRING(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ftp_malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
