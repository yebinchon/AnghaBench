; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_opt_dequote.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_opt_dequote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"missing start quote\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"missing end quote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8**)* @opt_dequote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @opt_dequote(i8** %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 34
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  store i8* null, i8** %3, align 8
  br label %82

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %22, 1
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  store i8* null, i8** %3, align 8
  br label %82

28:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 34
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %64

41:                                               ; preds = %39
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 34
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %56

56:                                               ; preds = %53, %47, %41
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  %59 = load i8, i8* %57, align 1
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %63, align 1
  br label %29

64:                                               ; preds = %39
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %70, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @free(i8* %71)
  store i8* null, i8** %3, align 8
  br label %82

73:                                               ; preds = %64
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8**, i8*** %4, align 8
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %7, align 8
  store i8* %81, i8** %3, align 8
  br label %82

82:                                               ; preds = %73, %69, %26, %16
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
