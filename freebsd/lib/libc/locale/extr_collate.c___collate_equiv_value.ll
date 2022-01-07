; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c___collate_equiv_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c___collate_equiv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64* }
%struct.xlocale_collate = type { %struct.TYPE_13__*, %struct.TYPE_11__*, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_16__ = type { i32* }

@COLLATE_STR_LEN = common dso_local global i64 0, align 8
@XLC_COLLATE = common dso_local global i64 0, align 8
@UCHAR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__collate_equiv_value(%struct.TYPE_14__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xlocale_collate*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @COLLATE_STR_LEN, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  br label %151

23:                                               ; preds = %18
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = call i32 @FIX_LOCALE(%struct.TYPE_14__* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @XLC_COLLATE, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.xlocale_collate*
  store %struct.xlocale_collate* %32, %struct.xlocale_collate** %9, align 8
  %33 = load %struct.xlocale_collate*, %struct.xlocale_collate** %9, align 8
  %34 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %23
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UCHAR_MAX, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %40, %37
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ -1, %48 ]
  store i32 %50, i32* %4, align 4
  br label %151

51:                                               ; preds = %23
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, 1
  br i1 %53, label %54, label %106

54:                                               ; preds = %51
  store i32 -1, i32* %8, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @UCHAR_MAX, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.xlocale_collate*, %struct.xlocale_collate** %9, align 8
  %61 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %94

71:                                               ; preds = %54
  %72 = load %struct.xlocale_collate*, %struct.xlocale_collate** %9, align 8
  %73 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %71
  %79 = load %struct.xlocale_collate*, %struct.xlocale_collate** %9, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.TYPE_15__* @largesearch(%struct.xlocale_collate* %79, i32 %81)
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %10, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %84 = icmp ne %struct.TYPE_15__* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %59
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 1, i32* %4, align 4
  br label %151

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  br label %104

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  store i32 %105, i32* %4, align 4
  br label %151

106:                                              ; preds = %51
  %107 = load %struct.xlocale_collate*, %struct.xlocale_collate** %9, align 8
  %108 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %107, i32 0, i32 0
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %150

113:                                              ; preds = %106
  %114 = load i64, i64* @COLLATE_STR_LEN, align 8
  %115 = call i8* @llvm.stacksave()
  store i8* %115, i8** %11, align 8
  %116 = alloca i32, i64 %114, align 16
  store i64 %114, i64* %12, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @wcsncpy(i32* %116, i32* %117, i64 %118)
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32 0, i32* %121, align 4
  %122 = load %struct.xlocale_collate*, %struct.xlocale_collate** %9, align 8
  %123 = call %struct.TYPE_16__* @chainsearch(%struct.xlocale_collate* %122, i32* %116, i32* %14)
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %13, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %125 = icmp ne %struct.TYPE_16__* %124, null
  br i1 %125, label %126, label %145

126:                                              ; preds = %113
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %146

135:                                              ; preds = %126
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = sub nsw i32 0, %139
  br label %143

141:                                              ; preds = %135
  %142 = load i32, i32* %8, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %140, %138 ], [ %142, %141 ]
  store i32 %144, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %146

145:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  br label %146

146:                                              ; preds = %145, %143, %134
  %147 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %15, align 4
  switch i32 %148, label %153 [
    i32 0, label %149
    i32 1, label %151
  ]

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %149, %106
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %146, %104, %97, %49, %22
  %152 = load i32, i32* %4, align 4
  ret i32 %152

153:                                              ; preds = %146
  unreachable
}

declare dso_local i32 @FIX_LOCALE(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @largesearch(%struct.xlocale_collate*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wcsncpy(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_16__* @chainsearch(%struct.xlocale_collate*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
