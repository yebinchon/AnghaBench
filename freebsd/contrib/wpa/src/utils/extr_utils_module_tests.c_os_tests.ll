; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_os_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_os_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"os tests\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"hwsim_test_env\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"test value\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"test value 2\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"/this-file-does-not-exists-hwsim\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"%d os test(s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @os_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = call i32 (i32, i8*, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = call i8* @os_calloc(i64 -1, i64 -1)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @os_free(i8* %13)
  br label %15

15:                                               ; preds = %10, %0
  %16 = call i8* @os_calloc(i64 2, i64 -1)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @os_free(i8* %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = call i8* @os_calloc(i64 -1, i64 2)
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @os_free(i8* %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = call i8* @os_realloc_array(i32* null, i64 -1, i64 -1)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @os_free(i8* %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = call i32 @os_sleep(i32 1, i32 1)
  %44 = call i64 @os_mktime(i32 1969, i32 1, i32 1, i32 1, i32 1, i32 1, i32* %4)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %85, label %46

46:                                               ; preds = %42
  %47 = call i64 @os_mktime(i32 1971, i32 0, i32 1, i32 1, i32 1, i32 1, i32* %4)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %85, label %49

49:                                               ; preds = %46
  %50 = call i64 @os_mktime(i32 1971, i32 13, i32 1, i32 1, i32 1, i32 1, i32* %4)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %49
  %53 = call i64 @os_mktime(i32 1971, i32 1, i32 0, i32 1, i32 1, i32 1, i32* %4)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %52
  %56 = call i64 @os_mktime(i32 1971, i32 1, i32 32, i32 1, i32 1, i32 1, i32* %4)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %55
  %59 = call i64 @os_mktime(i32 1971, i32 1, i32 1, i32 -1, i32 1, i32 1, i32* %4)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = call i64 @os_mktime(i32 1971, i32 1, i32 1, i32 24, i32 1, i32 1, i32* %4)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %61
  %65 = call i64 @os_mktime(i32 1971, i32 1, i32 1, i32 1, i32 -1, i32 1, i32* %4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = call i64 @os_mktime(i32 1971, i32 1, i32 1, i32 1, i32 60, i32 1, i32* %4)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = call i64 @os_mktime(i32 1971, i32 1, i32 1, i32 1, i32 1, i32 -1, i32* %4)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = call i64 @os_mktime(i32 1971, i32 1, i32 1, i32 1, i32 1, i32 61, i32* %4)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = call i64 @os_mktime(i32 1971, i32 1, i32 1, i32 1, i32 1, i32 1, i32* %4)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = call i64 @os_mktime(i32 2020, i32 1, i32 2, i32 3, i32 4, i32 5, i32* %4)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = call i64 @os_mktime(i32 2015, i32 12, i32 31, i32 23, i32 59, i32 59, i32* %4)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %42
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = call i64 @os_setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = call i64 @os_setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = call i64 @os_unsetenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %91, %88
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = call i64 @os_file_exists(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %2, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @MSG_ERROR, align 4
  %111 = load i32, i32* %2, align 4
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  store i32 -1, i32* %1, align 4
  br label %114

113:                                              ; preds = %106
  store i32 0, i32* %1, align 4
  br label %114

114:                                              ; preds = %113, %109
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_calloc(i64, i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_realloc_array(i32*, i64, i64) #1

declare dso_local i32 @os_sleep(i32, i32) #1

declare dso_local i64 @os_mktime(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @os_setenv(i8*, i8*, i32) #1

declare dso_local i64 @os_unsetenv(i8*) #1

declare dso_local i64 @os_file_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
