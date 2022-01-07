; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_tools.c_listWords.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_tools.c_listWords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32, i32, i64, i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i8*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"--- Press Enter to continue ---\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@nCOLWIDTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Dictionary: %d words, %ld cells used of %u total\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @listWords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listWords(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = call %struct.TYPE_12__* @vmGetDict(%struct.TYPE_10__* %13)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %17, i64 %22
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %133, %1
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %136

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %5, align 8
  br label %42

42:                                               ; preds = %126, %34
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %132

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %126

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 70
  br i1 %66, label %67, label %86

67:                                               ; preds = %51
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
  store i32 0, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %74, 23
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = call i32 @vmTextOut(%struct.TYPE_10__* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %79 = call i32 (...) @getchar()
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = call i32 @vmTextOut(%struct.TYPE_10__* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %82

82:                                               ; preds = %76, %67
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @vmTextOut(%struct.TYPE_10__* %83, i8* %84, i32 1)
  br label %103

86:                                               ; preds = %51
  %87 = load i32, i32* @nCOLWIDTH, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @nCOLWIDTH, align 4
  %90 = srem i32 %88, %89
  %91 = sub nsw i32 %87, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %96, %86
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %7, align 4
  %95 = icmp sgt i32 %93, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 32, i8* %101, align 1
  br label %92

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %82
  %104 = load i32, i32* %6, align 4
  %105 = icmp sgt i32 %104, 70
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8 0, i8* %110, align 1
  store i32 0, i32* %6, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %113, 23
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %117 = call i32 @vmTextOut(%struct.TYPE_10__* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %118 = call i32 (...) @getchar()
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = call i32 @vmTextOut(%struct.TYPE_10__* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %121

121:                                              ; preds = %115, %106
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 @vmTextOut(%struct.TYPE_10__* %122, i8* %123, i32 1)
  br label %125

125:                                              ; preds = %121, %103
  br label %126

126:                                              ; preds = %125, %50
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %5, align 8
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %42

132:                                              ; preds = %42
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %28

136:                                              ; preds = %28
  %137 = load i32, i32* %6, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i8*, i8** %12, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8 0, i8* %143, align 1
  store i32 0, i32* %6, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @vmTextOut(%struct.TYPE_10__* %144, i8* %145, i32 1)
  br label %147

147:                                              ; preds = %139, %136
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %154, %157
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 (i8*, i8*, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %151, i64 %158, i32 %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @vmTextOut(%struct.TYPE_10__* %163, i8* %166, i32 1)
  ret void
}

declare dso_local %struct.TYPE_12__* @vmGetDict(%struct.TYPE_10__*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @vmTextOut(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
