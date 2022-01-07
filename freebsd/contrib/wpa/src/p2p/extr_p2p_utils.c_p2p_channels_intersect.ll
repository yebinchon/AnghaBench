; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_intersect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, i64 }

@P2P_MAX_REG_CLASSES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_channels_intersect(%struct.p2p_channels* %0, %struct.p2p_channels* %1, %struct.p2p_channels* %2) #0 {
  %4 = alloca %struct.p2p_channels*, align 8
  %5 = alloca %struct.p2p_channels*, align 8
  %6 = alloca %struct.p2p_channels*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.p2p_reg_class*, align 8
  %10 = alloca %struct.p2p_reg_class*, align 8
  store %struct.p2p_channels* %0, %struct.p2p_channels** %4, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %5, align 8
  store %struct.p2p_channels* %2, %struct.p2p_channels** %6, align 8
  %11 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %12 = call i32 @os_memset(%struct.p2p_channels* %11, i32 0, i32 16)
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %83, %3
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %16 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %13
  %20 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %21 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %20, i32 0, i32 1
  %22 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %22, i64 %23
  store %struct.p2p_reg_class* %24, %struct.p2p_reg_class** %9, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %79, %19
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %28 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %25
  %32 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %33 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %32, i32 0, i32 1
  %34 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %34, i64 %35
  store %struct.p2p_reg_class* %36, %struct.p2p_reg_class** %10, align 8
  %37 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %9, align 8
  %38 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %41 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %79

45:                                               ; preds = %31
  %46 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %9, align 8
  %47 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %48 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %49 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %48, i32 0, i32 1
  %50 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %49, align 8
  %51 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %52 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %50, i64 %53
  %55 = call i32 @p2p_reg_class_intersect(%struct.p2p_reg_class* %46, %struct.p2p_reg_class* %47, %struct.p2p_reg_class* %54)
  %56 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %57 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %56, i32 0, i32 1
  %58 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %57, align 8
  %59 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %60 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %58, i64 %61
  %63 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %45
  %67 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %68 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %72 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @P2P_MAX_REG_CLASSES, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %86

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %45
  br label %79

79:                                               ; preds = %78, %44
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %25

82:                                               ; preds = %25
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %13

86:                                               ; preds = %76, %13
  ret void
}

declare dso_local i32 @os_memset(%struct.p2p_channels*, i32, i32) #1

declare dso_local i32 @p2p_reg_class_intersect(%struct.p2p_reg_class*, %struct.p2p_reg_class*, %struct.p2p_reg_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
