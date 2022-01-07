; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_names_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_names_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kex_names_cat(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strdup(i8* %20)
  store i8* %21, i8** %3, align 8
  br label %105

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %22
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** %3, align 8
  br label %105

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = icmp sgt i32 %35, 1048576
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* null, i8** %3, align 8
  br label %105

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %40, %42
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %11, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @strdup(i8* %46)
  store i8* %47, i8** %8, align 8
  store i8* %47, i8** %7, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %11, align 8
  %51 = call i8* @calloc(i32 1, i64 %50)
  store i8* %51, i8** %6, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %38
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  store i8* null, i8** %3, align 8
  br label %105

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @strlcpy(i8* %57, i8* %58, i64 %59)
  %61 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %99, %56
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %101

72:                                               ; preds = %70
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i8* @match_list(i8* %73, i8* %74, i32* null)
  store i8* %75, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @free(i8* %78)
  br label %99

80:                                               ; preds = %72
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @strlcat(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %11, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @strlcat(i8* %87, i8* %88, i64 %89)
  %91 = load i64, i64* %11, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86, %80
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @free(i8* %96)
  store i8* null, i8** %3, align 8
  br label %105

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %77
  %100 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %100, i8** %9, align 8
  br label %62

101:                                              ; preds = %70
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8*, i8** %6, align 8
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %101, %93, %53, %37, %30, %19
  %106 = load i8*, i8** %3, align 8
  ret i8* %106
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @match_list(i8*, i8*, i32*) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
