; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_to_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_to_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_channels = type { i32, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_channels_to_freqs(%struct.p2p_channels* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_channels*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.p2p_reg_class*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.p2p_channels* %0, %struct.p2p_channels** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %15 = icmp ne %struct.p2p_channels* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %110

20:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %101, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %24 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %104

27:                                               ; preds = %21
  %28 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %29 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %28, i32 0, i32 1
  %30 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %30, i64 %32
  store %struct.p2p_reg_class* %33, %struct.p2p_reg_class** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 1
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %104

39:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %97, %39
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %43 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %100

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %100

52:                                               ; preds = %46
  %53 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %54 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %10, align 8
  %57 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @p2p_channel_to_freq(i32 %55, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %97

67:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %85

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %68

85:                                               ; preds = %80, %68
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %97

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  br label %97

97:                                               ; preds = %90, %89, %66
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %40

100:                                              ; preds = %51, %40
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %21

104:                                              ; preds = %38, %21
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %104, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @p2p_channel_to_freq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
