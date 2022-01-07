; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_tilde_expand_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_tilde_expand_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [42 x i8] c"tilde_expand_filename: ~username too long\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"tilde_expand_filename: No such user %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"tilde_expand_filename: No such uid %ld\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"tilde_expand_filename: Path too long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tilde_expand_filename(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca %struct.passwd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 126
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @xstrdup(i8* %18)
  store i8* %19, i8** %3, align 8
  br label %105

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 47)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %58

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %39, 127
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %31
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %52 = call %struct.passwd* @getpwnam(i8* %51)
  store %struct.passwd* %52, %struct.passwd** %10, align 8
  %53 = icmp eq %struct.passwd* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %56 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %43
  br label %66

58:                                               ; preds = %27, %20
  %59 = load i64, i64* %5, align 8
  %60 = call %struct.passwd* @getpwuid(i64 %59)
  store %struct.passwd* %60, %struct.passwd** %10, align 8
  %61 = icmp eq %struct.passwd* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %57
  %67 = load %struct.passwd*, %struct.passwd** %10, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %66
  %74 = load %struct.passwd*, %struct.passwd** %10, align 8
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 47
  br i1 %83, label %84, label %85

84:                                               ; preds = %73, %66
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %86

85:                                               ; preds = %73
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %4, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.passwd*, %struct.passwd** %10, align 8
  %94 = getelementptr inbounds %struct.passwd, %struct.passwd* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = call i64 @xasprintf(i8** %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %95, i8* %96, i8* %97)
  %99 = load i64, i64* @PATH_MAX, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %92
  %104 = load i8*, i8** %9, align 8
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %103, %17
  %106 = load i8*, i8** %3, align 8
  ret i8* %106
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xasprintf(i8**, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
