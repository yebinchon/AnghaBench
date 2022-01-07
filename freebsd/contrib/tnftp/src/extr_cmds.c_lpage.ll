; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_lpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_lpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"local-file\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"usage: %s local-file\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"pager\00", align 1
@DEFAULTPAGER = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpage(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17, %11, %2
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @UPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 -1, i32* @code, align 4
  br label %66

25:                                               ; preds = %17, %14
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @globulize(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* @code, align 4
  br label %66

32:                                               ; preds = %25
  %33 = call i8* @getoptionvalue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @EMPTYSTRING(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** @DEFAULTPAGER, align 8
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = add nsw i32 %41, %43
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i8* @ftp_malloc(i64 %47)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @strlcpy(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @strlcat(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @strlcat(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @system(i8* %60)
  store i32 0, i32* @code, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %39, %31, %20
  ret void
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i8* @globulize(i8*) #1

declare dso_local i8* @getoptionvalue(i8*) #1

declare dso_local i64 @EMPTYSTRING(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ftp_malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
