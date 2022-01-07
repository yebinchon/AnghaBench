; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb.c_ddb_readfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb.c_ddb_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fopen: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@MAXARG = common dso_local global i32 0, align 4
@WHITESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddb_readfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @BUFSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @EX_UNAVAILABLE, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @err(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16, %1
  br label %21

21:                                               ; preds = %84, %54, %20
  %22 = load i32, i32* @BUFSIZ, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @fgets(i8* %12, i32 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %27 = call i64 @strlen(i8* %12)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %12, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %12, i64 %36
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %34, %26
  %39 = call i64 @strspn(i8* %12, i32 ptrtoint ([3 x i8]* @.str.2 to i32))
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i8, i8* %12, i64 %40
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %41, i8** %42, align 16
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %44 = load i8*, i8** %43, align 16
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %50 = load i8*, i8** %49, align 16
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %38
  br label %21

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %59 = load i8*, i8** %58, align 16
  %60 = call i64 @strcspn(i8* %59, i32 ptrtoint ([3 x i8]* @.str.2 to i32))
  store i64 %60, i64* %8, align 8
  %61 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %62 = load i8*, i8** %61, align 16
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %66 = load i8*, i8** %65, align 16
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = call i64 @strspn(i8* %68, i32 ptrtoint ([3 x i8]* @.str.2 to i32))
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  %71 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* %70, i8** %71, align 8
  %72 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %73 = load i8*, i8** %72, align 16
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 0, i8* %75, align 1
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %55
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %55
  %85 = load i32, i32* %6, align 4
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %87 = call i32 @ddb_main(i32 %85, i8** %86)
  br label %21

88:                                               ; preds = %21
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %91)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strspn(i8*, i32) #2

declare dso_local i64 @strcspn(i8*, i32) #2

declare dso_local i32 @ddb_main(i32, i8**) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
