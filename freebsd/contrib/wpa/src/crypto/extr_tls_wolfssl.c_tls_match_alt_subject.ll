; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_match_alt_subject.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_match_alt_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"EMAIL:\00", align 1
@GEN_EMAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DNS:\00", align 1
@GEN_DNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"URI:\00", align 1
@GEN_URI = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"TLS: Invalid altSubjectName match '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @tls_match_alt_subject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_match_alt_subject(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  br label %11

11:                                               ; preds = %90, %2
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @os_strncmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @GEN_EMAIL, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 6
  store i8* %18, i8** %7, align 8
  br label %41

19:                                               ; preds = %11
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @os_strncmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @GEN_DNS, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  store i8* %26, i8** %7, align 8
  br label %40

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @os_strncmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @GEN_URI, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  store i8* %34, i8** %7, align 8
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  store i32 0, i32* %3, align 4
  br label %94

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %15
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @os_strchr(i8* %42, i8 signext 59)
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %63, %41
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i64 @os_strncmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i64 @os_strncmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i64 @os_strncmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52, %47
  br label %67

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i8* @os_strchr(i8* %65, i8 signext 59)
  store i8* %66, i8** %8, align 8
  br label %44

67:                                               ; preds = %62, %44
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  store i64 %75, i64* %9, align 8
  br label %79

76:                                               ; preds = %67
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @os_strlen(i8* %77)
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @tls_match_alt_subject_component(i32* %80, i32 %81, i8* %82, i64 %83)
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %94

87:                                               ; preds = %79
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %7, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %11, label %93

93:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %86, %35
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @tls_match_alt_subject_component(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
