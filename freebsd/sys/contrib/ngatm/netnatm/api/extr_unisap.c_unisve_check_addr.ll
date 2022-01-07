; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_check_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_check_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unisve_addr = type { i64, i64, i64, i32 }

@UNISVE_ABSENT = common dso_local global i64 0, align 8
@UNISVE_OK = common dso_local global i32 0, align 4
@UNISVE_ANY = common dso_local global i64 0, align 8
@UNISVE_PRESENT = common dso_local global i64 0, align 8
@UNISVE_ERROR_BAD_TAG = common dso_local global i32 0, align 4
@UNI_ADDR_INTERNATIONAL = common dso_local global i64 0, align 8
@UNI_ADDR_E164 = common dso_local global i64 0, align 8
@UNISVE_ERROR_TYPE_PLAN_CONFLICT = common dso_local global i32 0, align 4
@UNISVE_ERROR_ADDR_LEN = common dso_local global i32 0, align 4
@UNI_ADDR_UNKNOWN = common dso_local global i64 0, align 8
@UNI_ADDR_ATME = common dso_local global i64 0, align 8
@UNISVE_ERROR_BAD_ADDR_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_check_addr(%struct.unisve_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unisve_addr*, align 8
  store %struct.unisve_addr* %0, %struct.unisve_addr** %3, align 8
  %4 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %5 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UNISVE_ABSENT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @UNISVE_OK, align 4
  store i32 %10, i32* %2, align 4
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %13 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UNISVE_ANY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @UNISVE_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %11
  %20 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %21 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UNISVE_PRESENT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @UNISVE_ERROR_BAD_TAG, align 4
  store i32 %26, i32* %2, align 4
  br label %81

27:                                               ; preds = %19
  %28 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %29 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UNI_ADDR_INTERNATIONAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %35 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UNI_ADDR_E164, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @UNISVE_ERROR_TYPE_PLAN_CONFLICT, align 4
  store i32 %40, i32* %2, align 4
  br label %81

41:                                               ; preds = %33
  %42 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %43 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %48 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 15
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @UNISVE_ERROR_ADDR_LEN, align 4
  store i32 %52, i32* %2, align 4
  br label %81

53:                                               ; preds = %46
  br label %79

54:                                               ; preds = %27
  %55 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %56 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UNI_ADDR_UNKNOWN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %62 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UNI_ADDR_ATME, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @UNISVE_ERROR_TYPE_PLAN_CONFLICT, align 4
  store i32 %67, i32* %2, align 4
  br label %81

68:                                               ; preds = %60
  %69 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %70 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 19
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @UNISVE_ERROR_ADDR_LEN, align 4
  store i32 %74, i32* %2, align 4
  br label %81

75:                                               ; preds = %68
  br label %78

76:                                               ; preds = %54
  %77 = load i32, i32* @UNISVE_ERROR_BAD_ADDR_TYPE, align 4
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %53
  %80 = load i32, i32* @UNISVE_OK, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %76, %73, %66, %51, %39, %25, %17, %9
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
