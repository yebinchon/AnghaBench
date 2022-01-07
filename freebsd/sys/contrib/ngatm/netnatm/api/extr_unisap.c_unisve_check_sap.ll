; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_check_sap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_check_sap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_sap = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@UNI_ADDR_E164 = common dso_local global i64 0, align 8
@UNISVE_PRESENT = common dso_local global i64 0, align 8
@UNISVE_ERROR_ADDR_SEL_CONFLICT = common dso_local global i32 0, align 4
@UNI_ADDR_ATME = common dso_local global i64 0, align 8
@UNISVE_ABSENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_check_sap(%struct.uni_sap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uni_sap*, align 8
  %4 = alloca i32, align 4
  store %struct.uni_sap* %0, %struct.uni_sap** %3, align 8
  %5 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %6 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %5, i32 0, i32 1
  %7 = call i32 @unisve_check_addr(%struct.TYPE_4__* %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %11 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %10, i32 0, i32 0
  %12 = call i32 @unisve_check_selector(%struct.TYPE_3__* %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %16 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %15, i32 0, i32 4
  %17 = call i32 @unisve_check_blli_id2(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %21 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %20, i32 0, i32 3
  %22 = call i32 @unisve_check_blli_id3(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %26 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %25, i32 0, i32 2
  %27 = call i32 @unisve_check_bhli(i32* %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %19, %14, %9, %1
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %33 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UNI_ADDR_E164, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %40 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UNISVE_PRESENT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @UNISVE_ERROR_ADDR_SEL_CONFLICT, align 4
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %38
  br label %66

48:                                               ; preds = %31
  %49 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %50 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UNI_ADDR_ATME, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.uni_sap*, %struct.uni_sap** %3, align 8
  %57 = getelementptr inbounds %struct.uni_sap, %struct.uni_sap* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UNISVE_ABSENT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @UNISVE_ERROR_ADDR_SEL_CONFLICT, align 4
  store i32 %63, i32* %2, align 4
  br label %67

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %48
  br label %66

66:                                               ; preds = %65, %47
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %62, %45, %29
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @unisve_check_addr(%struct.TYPE_4__*) #1

declare dso_local i32 @unisve_check_selector(%struct.TYPE_3__*) #1

declare dso_local i32 @unisve_check_blli_id2(i32*) #1

declare dso_local i32 @unisve_check_blli_id3(i32*) #1

declare dso_local i32 @unisve_check_bhli(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
