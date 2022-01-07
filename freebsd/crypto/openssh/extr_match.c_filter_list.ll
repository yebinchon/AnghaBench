; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_match.c_filter_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_match.c_filter_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @filter_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @filter_list(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i8* @malloc(i64 %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strdup(i8* %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %3
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @free(i8* %30)
  store i8* null, i8** %4, align 8
  br label %72

32:                                               ; preds = %24
  %33 = load i8*, i8** %10, align 8
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %9, align 8
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %67, %32
  %36 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @match_pattern_list(i8* %39, i8* %40, i32 0)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %67

53:                                               ; preds = %50, %44
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @strlcat(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @strlcat(i8* %63, i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %50, %47
  br label %35

68:                                               ; preds = %35
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %68, %27
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_pattern_list(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
