; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_valid_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_valid_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@valid_domain.errbuf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"empty domain name\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"domain name \22%.100s\22 starts with invalid character\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"domain name \22%.100s\22 contains consecutive separators\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"domain name \22%.100s\22 contains invalid characters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_domain(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %9, align 8
  store i8 0, i8* %11, align 1
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @strlcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @valid_domain.errbuf, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 256)
  br label %105

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @isalpha(i8 signext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @isdigit(i8 signext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @valid_domain.errbuf, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %105

33:                                               ; preds = %24, %18
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %83, %33
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call signext i8 @tolower(i8 signext %42)
  store i8 %43, i8* %10, align 1
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i8, i8* %10, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %47, i8* %50, align 1
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i8, i8* %11, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 46
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i8, i8* %10, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @valid_domain.errbuf, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %105

62:                                               ; preds = %55, %51
  %63 = load i8, i8* %10, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 46
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i8, i8* %10, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 45
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i8, i8* %10, align 1
  %72 = call i32 @isalnum(i8 signext %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load i8, i8* %10, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 95
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @valid_domain.errbuf, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %105

81:                                               ; preds = %74, %70, %66, %62
  %82 = load i8, i8* %10, align 1
  store i8 %82, i8* %11, align 1
  br label %83

83:                                               ; preds = %81
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %34

86:                                               ; preds = %34
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 46
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i8*, i8** %5, align 8
  %96 = load i64, i64* %9, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8 0, i8* %98, align 1
  br label %99

99:                                               ; preds = %94, %86
  %100 = load i8**, i8*** %7, align 8
  %101 = icmp ne i8** %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i8**, i8*** %7, align 8
  store i8* null, i8** %103, align 8
  br label %104

104:                                              ; preds = %102, %99
  store i32 1, i32* %4, align 4
  br label %111

105:                                              ; preds = %78, %59, %30, %16
  %106 = load i8**, i8*** %7, align 8
  %107 = icmp ne i8** %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @valid_domain.errbuf, i64 0, i64 0), i8** %109, align 8
  br label %110

110:                                              ; preds = %108, %105
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %104
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @isalnum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
