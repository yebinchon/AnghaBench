; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_blli_id3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_blli_id3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unisve_blli_id3 = type { i64, i64, i64, i64, i64, i64 }

@UNI_BLLI_L3_USER = common dso_local global i64 0, align 8
@UNI_BLLI_L3_TR9577 = common dso_local global i64 0, align 8
@UNI_BLLI_L3_SNAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_overlap_blli_id3(%struct.unisve_blli_id3* %0, %struct.unisve_blli_id3* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unisve_blli_id3*, align 8
  %5 = alloca %struct.unisve_blli_id3*, align 8
  store %struct.unisve_blli_id3* %0, %struct.unisve_blli_id3** %4, align 8
  store %struct.unisve_blli_id3* %1, %struct.unisve_blli_id3** %5, align 8
  %6 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %7 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %5, align 8
  %8 = call i32 @COMMON_OVERLAP(%struct.unisve_blli_id3* %6, %struct.unisve_blli_id3* %7)
  %9 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %10 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %5, align 8
  %13 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

17:                                               ; preds = %2
  %18 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %19 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNI_BLLI_L3_USER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %25 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %5, align 8
  %28 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %95

32:                                               ; preds = %17
  %33 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %34 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UNI_BLLI_L3_TR9577, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %94

38:                                               ; preds = %32
  %39 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %40 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %5, align 8
  %45 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %95

49:                                               ; preds = %43, %38
  %50 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %51 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %49
  %55 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %5, align 8
  %56 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %93, label %59

59:                                               ; preds = %54
  %60 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %61 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %5, align 8
  %64 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %69 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UNI_BLLI_L3_SNAP, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %95

74:                                               ; preds = %67
  %75 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %76 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %5, align 8
  %79 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %4, align 8
  %84 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.unisve_blli_id3*, %struct.unisve_blli_id3** %5, align 8
  %87 = getelementptr inbounds %struct.unisve_blli_id3, %struct.unisve_blli_id3* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %95

91:                                               ; preds = %82, %74
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %54, %49
  store i32 0, i32* %3, align 4
  br label %95

94:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %93, %90, %73, %48, %23, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @COMMON_OVERLAP(%struct.unisve_blli_id3*, %struct.unisve_blli_id3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
