; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslresource.c_RsSmallAddressCheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslresource.c_RsSmallAddressCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@AslGbl_NoResourceChecking = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_NULL_DESCRIPTOR = common dso_local global i32 0, align 4
@ACPI_RESOURCE_NAME_IO = common dso_local global i64 0, align 8
@ASL_MSG_INVALID_MIN_MAX = common dso_local global i32 0, align 4
@ASL_MSG_INVALID_LENGTH = common dso_local global i32 0, align 4
@ACPI_RESOURCE_NAME_MEMORY24 = common dso_local global i64 0, align 8
@ACPI_UINT16_MAX = common dso_local global i64 0, align 8
@ASL_MSG_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RsSmallAddressCheck(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.TYPE_10__* %5, %struct.TYPE_10__* %6, %struct.TYPE_10__* %7, %struct.TYPE_10__* %8, %struct.TYPE_10__* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %20, align 8
  %21 = load i64, i64* @AslGbl_NoResourceChecking, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %111

24:                                               ; preds = %10
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ASL_ERROR, align 4
  %41 = load i32, i32* @ASL_MSG_NULL_DESCRIPTOR, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %43 = call i32 @AslError(i32 %40, i32 %41, %struct.TYPE_10__* %42, i32* null)
  br label %44

44:                                               ; preds = %39, %33
  br label %111

45:                                               ; preds = %30, %27, %24
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @ACPI_RESOURCE_NAME_IO, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @ASL_ERROR, align 4
  %55 = load i32, i32* @ASL_MSG_INVALID_MIN_MAX, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %57 = call i32 @AslError(i32 %54, i32 %55, %struct.TYPE_10__* %56, i32* null)
  br label %71

58:                                               ; preds = %49
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %12, align 8
  %62 = sub nsw i64 %60, %61
  %63 = add nsw i64 %62, 1
  %64 = icmp sgt i64 %59, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @ASL_ERROR, align 4
  %67 = load i32, i32* @ASL_MSG_INVALID_LENGTH, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %69 = call i32 @AslError(i32 %66, i32 %67, %struct.TYPE_10__* %68, i32* null)
  br label %70

70:                                               ; preds = %65, %58
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @ACPI_RESOURCE_NAME_MEMORY24, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i64, i64* %15, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* @ACPI_UINT16_MAX, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %15, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64, i64* %12, align 8
  %83 = shl i64 %82, 8
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = shl i64 %84, 8
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %81, %71
  br label %87

87:                                               ; preds = %86, %45
  %88 = load i64, i64* %15, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i64 1, i64* %15, align 8
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %15, align 8
  %94 = srem i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* @ASL_ERROR, align 4
  %98 = load i32, i32* @ASL_MSG_ALIGNMENT, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %100 = call i32 @AslError(i32 %97, i32 %98, %struct.TYPE_10__* %99, i32* null)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %15, align 8
  %104 = srem i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @ASL_ERROR, align 4
  %108 = load i32, i32* @ASL_MSG_ALIGNMENT, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %110 = call i32 @AslError(i32 %107, i32 %108, %struct.TYPE_10__* %109, i32* null)
  br label %111

111:                                              ; preds = %23, %44, %106, %101
  ret void
}

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
