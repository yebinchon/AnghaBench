; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_parse_cert_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_parse_cert_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Invalid relative certificate life %s\00", align 1
@cert_valid_to = common dso_local global i32 0, align 4
@cert_valid_from = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid certificate life specification %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid from time \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"forever\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid to time \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Empty certificate validity interval\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_cert_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cert_times(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32 @time(i32* null)
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 58)
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i32 @convtime(i8* %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* @cert_valid_to, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 59
  %30 = sdiv i32 %29, 60
  %31 = mul nsw i32 %30, 60
  store i32 %31, i32* @cert_valid_from, align 4
  br label %119

32:                                               ; preds = %12, %1
  %33 = load i8*, i8** %2, align 8
  %34 = call i8* @xstrdup(i8* %33)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 58)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %39, %32
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 0, i8* %53, align 1
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 43
  br i1 %63, label %64, label %68

64:                                               ; preds = %59, %52
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @parse_relative_time(i8* %65, i32 %66)
  store i32 %67, i32* @cert_valid_from, align 4
  br label %82

68:                                               ; preds = %59
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* @cert_valid_from, align 4
  br label %81

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  %75 = call i64 @parse_absolute_time(i8* %74, i32* @cert_valid_from)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80, %72
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 45
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 43
  br i1 %91, label %92, label %96

92:                                               ; preds = %87, %82
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @parse_relative_time(i8* %93, i32 %94)
  store i32 %95, i32* @cert_valid_to, align 4
  br label %110

96:                                               ; preds = %87
  %97 = load i8*, i8** %4, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 -1, i32* @cert_valid_to, align 4
  br label %109

101:                                              ; preds = %96
  %102 = load i8*, i8** %4, align 8
  %103 = call i64 @parse_absolute_time(i8* %102, i32* @cert_valid_to)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %105, %101
  br label %109

109:                                              ; preds = %108, %100
  br label %110

110:                                              ; preds = %109, %92
  %111 = load i32, i32* @cert_valid_to, align 4
  %112 = load i32, i32* @cert_valid_from, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i8*, i8** %3, align 8
  %118 = call i32 @free(i8* %117)
  br label %119

119:                                              ; preds = %116, %24
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @convtime(i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @parse_relative_time(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @parse_absolute_time(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
