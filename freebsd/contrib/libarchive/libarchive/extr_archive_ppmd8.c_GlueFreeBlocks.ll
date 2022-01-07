; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_GlueFreeBlocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_GlueFreeBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64*, i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@PPMD_NUM_INDEXES = common dso_local global i32 0, align 4
@EMPTY_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @GlueFreeBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GlueFreeBlocks(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i64 0, i64* %3, align 8
  store i64* %3, i64** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 8192, i32* %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @memset(i32 %16, i32 0, i32 4)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_7__*
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %1
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %91, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PPMD_NUM_INDEXES, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %86, %36
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = call %struct.TYPE_7__* @NODE(i64 %54)
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %7, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %53
  %61 = load i64, i64* %6, align 8
  %62 = load i64*, i64** %4, align 8
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i64* %64, i64** %4, align 8
  br label %65

65:                                               ; preds = %75, %60
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %69
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EMPTY_NODE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %65

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %6, align 8
  br label %50

90:                                               ; preds = %50
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %32

94:                                               ; preds = %32
  %95 = load i64*, i64** %4, align 8
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %147, %111, %94
  %97 = load i64, i64* %3, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %152

99:                                               ; preds = %96
  %100 = load i64, i64* %3, align 8
  %101 = call %struct.TYPE_7__* @NODE(i64 %100)
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %9, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %3, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %96

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %122, %112
  %114 = load i32, i32* %10, align 4
  %115 = icmp ugt i32 %114, 128
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = load i32, i32* @PPMD_NUM_INDEXES, align 4
  %120 = sub i32 %119, 1
  %121 = call i32 @InsertNode(%struct.TYPE_8__* %117, %struct.TYPE_7__* %118, i32 %120)
  br label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = sub i32 %123, 128
  store i32 %124, i32* %10, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 128
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %9, align 8
  br label %113

127:                                              ; preds = %113
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @U2I(i32 %128)
  store i32 %129, i32* %5, align 4
  %130 = call i32 @I2U(i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load i32, i32* %5, align 4
  %135 = add i32 %134, -1
  store i32 %135, i32* %5, align 4
  %136 = call i32 @I2U(i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %139 = load i32, i32* %11, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = sub i32 %142, %143
  %145 = sub i32 %144, 1
  %146 = call i32 @InsertNode(%struct.TYPE_8__* %137, %struct.TYPE_7__* %141, i32 %145)
  br label %147

147:                                              ; preds = %133, %127
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @InsertNode(%struct.TYPE_8__* %148, %struct.TYPE_7__* %149, i32 %150)
  br label %96

152:                                              ; preds = %96
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @NODE(i64) #1

declare dso_local i32 @InsertNode(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @I2U(i32) #1

declare dso_local i32 @U2I(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
