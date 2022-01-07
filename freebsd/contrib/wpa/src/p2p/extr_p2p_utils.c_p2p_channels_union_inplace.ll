; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_union_inplace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_union_inplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64 }

@P2P_MAX_REG_CLASSES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_channels_union_inplace(%struct.p2p_channels* %0, %struct.p2p_channels* %1) #0 {
  %3 = alloca %struct.p2p_channels*, align 8
  %4 = alloca %struct.p2p_channels*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.p2p_reg_class*, align 8
  %8 = alloca %struct.p2p_reg_class*, align 8
  %9 = alloca %struct.p2p_reg_class*, align 8
  %10 = alloca %struct.p2p_reg_class*, align 8
  store %struct.p2p_channels* %0, %struct.p2p_channels** %3, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %4, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %51, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %14 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %19 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %18, i32 0, i32 1
  %20 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %20, i64 %21
  store %struct.p2p_reg_class* %22, %struct.p2p_reg_class** %7, align 8
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %47, %17
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %26 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %31 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %30, i32 0, i32 1
  %32 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %32, i64 %33
  store %struct.p2p_reg_class* %34, %struct.p2p_reg_class** %8, align 8
  %35 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %36 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %8, align 8
  %39 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %47

43:                                               ; preds = %29
  %44 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %7, align 8
  %45 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %8, align 8
  %46 = call i32 @p2p_op_class_union(%struct.p2p_reg_class* %44, %struct.p2p_reg_class* %45)
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %23

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %11

54:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %55

55:                                               ; preds = %116, %54
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %58 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %119

61:                                               ; preds = %55
  %62 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %63 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %62, i32 0, i32 1
  %64 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %64, i64 %65
  store %struct.p2p_reg_class* %66, %struct.p2p_reg_class** %9, align 8
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %88, %61
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %70 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %75 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %74, i32 0, i32 1
  %76 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %76, i64 %77
  store %struct.p2p_reg_class* %78, %struct.p2p_reg_class** %10, align 8
  %79 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %80 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %9, align 8
  %83 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %91

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %5, align 8
  br label %67

91:                                               ; preds = %86, %67
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %94 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %99 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @P2P_MAX_REG_CLASSES, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %119

104:                                              ; preds = %97
  %105 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %106 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %105, i32 0, i32 1
  %107 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %106, align 8
  %108 = load %struct.p2p_channels*, %struct.p2p_channels** %3, align 8
  %109 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %107, i64 %110
  %113 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %9, align 8
  %114 = call i32 @os_memcpy(%struct.p2p_reg_class* %112, %struct.p2p_reg_class* %113, i32 8)
  br label %115

115:                                              ; preds = %104, %91
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %6, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %6, align 8
  br label %55

119:                                              ; preds = %103, %55
  ret void
}

declare dso_local i32 @p2p_op_class_union(%struct.p2p_reg_class*, %struct.p2p_reg_class*) #1

declare dso_local i32 @os_memcpy(%struct.p2p_reg_class*, %struct.p2p_reg_class*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
