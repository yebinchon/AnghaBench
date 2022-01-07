; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_time.c_from_efi_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_time.c_from_efi_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CumulativeDays = common dso_local global i32** null, align 8
@SECSPERDAY = common dso_local global i32 0, align 4
@SECSPERHOUR = common dso_local global i32 0, align 4
@EFI_UNSPECIFIED_TIMEZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @from_efi_time(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 1998
  br i1 %9, label %65, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 2099
  br i1 %14, label %65, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 12
  br i1 %24, label %65, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 31
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 23
  br i1 %39, label %65, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 59
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 59
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, -1440
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 1440
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 2047
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %50, %45, %40, %35, %30, %25, %20, %15, %10, %1
  store i64 0, i64* %2, align 8
  br label %161

66:                                               ; preds = %60, %55
  store i64 0, i64* %4, align 8
  store i32 1970, i32* %5, align 4
  br label %67

67:                                               ; preds = %86, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load i32**, i32*** @CumulativeDays, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @isleap(i32 %75)
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 13
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SECSPERDAY, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %4, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %67

89:                                               ; preds = %67
  %90 = load i32**, i32*** @CumulativeDays, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @isleap(i32 %93)
  %95 = getelementptr inbounds i32*, i32** %90, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SECSPERDAY, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %4, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %4, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %89
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  br label %118

117:                                              ; preds = %89
  br label %118

118:                                              ; preds = %117, %112
  %119 = phi i32 [ %116, %112 ], [ 0, %117 ]
  %120 = load i32, i32* @SECSPERDAY, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %4, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %4, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SECSPERHOUR, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %4, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %4, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 60
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %4, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %4, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %4, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %4, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @EFI_UNSPECIFIED_TIMEZONE, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %118
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 60
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %4, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %4, align 8
  br label %159

159:                                              ; preds = %151, %118
  %160 = load i64, i64* %4, align 8
  store i64 %160, i64* %2, align 8
  br label %161

161:                                              ; preds = %159, %65
  %162 = load i64, i64* %2, align 8
  ret i64 %162
}

declare dso_local i64 @isleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
