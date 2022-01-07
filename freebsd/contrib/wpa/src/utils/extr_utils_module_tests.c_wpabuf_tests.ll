; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_wpabuf_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_wpabuf_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"wpabuf tests\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%d wpabuf test(s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wpabuf_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpabuf_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store i32 0, i32* %2, align 4
  %6 = load i32, i32* @MSG_INFO, align 4
  %7 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = call i8* @os_malloc(i32 100)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %0
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.wpabuf* @wpabuf_alloc_ext_data(i8* %12, i32 100)
  store %struct.wpabuf* %13, %struct.wpabuf** %4, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %15 = icmp ne %struct.wpabuf* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = call i64 @wpabuf_resize(%struct.wpabuf** %4, i32 100)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = call i32 @wpabuf_put(%struct.wpabuf* %23, i32 100)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %27 = call i32 @wpabuf_free(%struct.wpabuf* %26)
  br label %33

28:                                               ; preds = %11
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @os_free(i8* %31)
  br label %33

33:                                               ; preds = %28, %25
  br label %37

34:                                               ; preds = %0
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %33
  %38 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %38, %struct.wpabuf** %4, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %40 = icmp ne %struct.wpabuf* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %43 = call i32 @wpabuf_put(%struct.wpabuf* %42, i32 100)
  %44 = call i64 @wpabuf_resize(%struct.wpabuf** %4, i32 100)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %51 = call i32 @wpabuf_put(%struct.wpabuf* %50, i32 100)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %54 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %53, i32* null)
  store %struct.wpabuf* %54, %struct.wpabuf** %5, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %57 = icmp ne %struct.wpabuf* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %63 = call i32 @wpabuf_free(%struct.wpabuf* %62)
  br label %67

64:                                               ; preds = %37
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %61
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  %68 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %69 = call %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf* %68, i32 10)
  store %struct.wpabuf* %69, %struct.wpabuf** %4, align 8
  %70 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %71 = icmp ne %struct.wpabuf* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @MSG_ERROR, align 4
  %80 = load i32, i32* %2, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 -1, i32* %1, align 4
  br label %83

82:                                               ; preds = %75
  store i32 0, i32* %1, align 4
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_ext_data(i8*, i32) #1

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i32) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local %struct.wpabuf* @wpabuf_concat(%struct.wpabuf*, i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
