; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_module_tests.c_wpas_blacklist_module_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_module_tests.c_wpas_blacklist_module_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"111111\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"222222\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"333333\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"444444\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"xxxxxx\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"blacklist module test failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wpas_blacklist_module_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_blacklist_module_tests() #0 {
  %1 = alloca %struct.wpa_supplicant, align 4
  %2 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  %3 = call i32 @os_memset(%struct.wpa_supplicant* %1, i32 0, i32 4)
  %4 = call i32 @wpa_blacklist_clear(%struct.wpa_supplicant* %1)
  %5 = call i32* @wpa_blacklist_get(%struct.wpa_supplicant* null, i32* null)
  %6 = icmp ne i32* %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %0
  %8 = call i32* @wpa_blacklist_get(%struct.wpa_supplicant* null, i32* bitcast ([7 x i8]* @.str to i32*))
  %9 = icmp ne i32* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = call i32* @wpa_blacklist_get(%struct.wpa_supplicant* %1, i32* null)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i32* @wpa_blacklist_get(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str to i32*))
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %7, %0
  br label %93

17:                                               ; preds = %13
  %18 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* null, i32* null)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* null, i32* bitcast ([7 x i8]* @.str to i32*))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* null)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %17
  br label %93

27:                                               ; preds = %23
  %28 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* null, i32* null)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* null, i32* bitcast ([7 x i8]* @.str to i32*))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* %1, i32* null)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str to i32*))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30, %27
  br label %93

40:                                               ; preds = %36
  %41 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %91, label %43

43:                                               ; preds = %40
  %44 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %91, label %46

46:                                               ; preds = %43
  %47 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %46
  %50 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.3 to i32*))
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %91, label %52

52:                                               ; preds = %49
  %53 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.4 to i32*))
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %52
  %56 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.3 to i32*))
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %91, label %58

58:                                               ; preds = %55
  %59 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.5 to i32*))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %58
  %62 = call i32* @wpa_blacklist_get(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.5 to i32*))
  %63 = icmp ne i32* %62, null
  br i1 %63, label %91, label %64

64:                                               ; preds = %61
  %65 = call i32* @wpa_blacklist_get(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %66 = icmp eq i32* %65, null
  br i1 %66, label %91, label %67

67:                                               ; preds = %64
  %68 = call i32* @wpa_blacklist_get(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %69 = icmp eq i32* %68, null
  br i1 %69, label %91, label %70

70:                                               ; preds = %67
  %71 = call i32* @wpa_blacklist_get(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.4 to i32*))
  %72 = icmp eq i32* %71, null
  br i1 %72, label %91, label %73

73:                                               ; preds = %70
  %74 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %73
  %77 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = call i64 @wpa_blacklist_del(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.4 to i32*))
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = call i64 @wpa_blacklist_add(%struct.wpa_supplicant* %1, i32* bitcast ([7 x i8]* @.str.3 to i32*))
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40
  br label %93

92:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %91, %39, %26, %16
  %94 = call i32 @wpa_blacklist_clear(%struct.wpa_supplicant* %1)
  %95 = load i32, i32* %2, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @MSG_ERROR, align 4
  %99 = call i32 @wpa_printf(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @os_memset(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpa_blacklist_clear(%struct.wpa_supplicant*) #1

declare dso_local i32* @wpa_blacklist_get(%struct.wpa_supplicant*, i32*) #1

declare dso_local i64 @wpa_blacklist_add(%struct.wpa_supplicant*, i32*) #1

declare dso_local i64 @wpa_blacklist_del(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
