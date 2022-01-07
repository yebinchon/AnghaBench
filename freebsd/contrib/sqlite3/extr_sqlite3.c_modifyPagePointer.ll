; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_modifyPagePointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_modifyPagePointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, i32, i32, %struct.TYPE_10__*, i32 (%struct.TYPE_11__*, i64*, %struct.TYPE_12__*)*, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@PTRMAP_OVERFLOW2 = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW1 = common dso_local global i64 0, align 8
@PTRMAP_BTREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i64, i64)* @modifyPagePointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modifyPagePointer(%struct.TYPE_11__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sqlite3_mutex_held(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sqlite3PagerIswriteable(i32 %24)
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @PTRMAP_OVERFLOW2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i64 @get4byte(i64* %33)
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_11__* %38)
  store i32 %39, i32* %5, align 4
  br label %183

40:                                               ; preds = %30
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @put4byte(i64* %43, i64 %44)
  br label %181

46:                                               ; preds = %4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SQLITE_OK, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = call i32 @btreeInitPage(%struct.TYPE_11__* %54)
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %52, %51 ], [ %55, %53 ]
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %183

62:                                               ; preds = %56
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %141, %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %144

70:                                               ; preds = %66
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i64* @findCell(%struct.TYPE_11__* %71, i32 %72)
  store i64* %73, i64** %13, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @PTRMAP_OVERFLOW1, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %130

77:                                               ; preds = %70
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load i32 (%struct.TYPE_11__*, i64*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, i64*, %struct.TYPE_12__*)** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = load i64*, i64** %13, align 8
  %83 = call i32 %80(%struct.TYPE_11__* %81, i64* %82, %struct.TYPE_12__* %14)
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %89, label %129

89:                                               ; preds = %77
  %90 = load i64*, i64** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %97, i64 %103
  %105 = icmp ugt i64* %94, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %89
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_11__* %107)
  store i32 %108, i32* %5, align 4
  br label %183

109:                                              ; preds = %89
  %110 = load i64, i64* %7, align 8
  %111 = load i64*, i64** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  %116 = getelementptr inbounds i64, i64* %115, i64 -4
  %117 = call i64 @get4byte(i64* %116)
  %118 = icmp eq i64 %110, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %109
  %120 = load i64*, i64** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = getelementptr inbounds i64, i64* %124, i64 -4
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @put4byte(i64* %125, i64 %126)
  br label %144

128:                                              ; preds = %109
  br label %129

129:                                              ; preds = %128, %77
  br label %140

130:                                              ; preds = %70
  %131 = load i64*, i64** %13, align 8
  %132 = call i64 @get4byte(i64* %131)
  %133 = load i64, i64* %7, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i64*, i64** %13, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @put4byte(i64* %136, i64 %137)
  br label %144

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %129
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %66

144:                                              ; preds = %135, %119, %66
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %180

148:                                              ; preds = %144
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* @PTRMAP_BTREE, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %165, label %152

152:                                              ; preds = %148
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %155, i64 %160
  %162 = call i64 @get4byte(i64* %161)
  %163 = load i64, i64* %7, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %152, %148
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %167 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_11__* %166)
  store i32 %167, i32* %5, align 4
  br label %183

168:                                              ; preds = %152
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %171, i64 %176
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @put4byte(i64* %177, i64 %178)
  br label %180

180:                                              ; preds = %168, %144
  br label %181

181:                                              ; preds = %180, %40
  %182 = load i32, i32* @SQLITE_OK, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %181, %165, %106, %60, %37
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i64 @get4byte(i64*) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_11__*) #1

declare dso_local i32 @put4byte(i64*, i64) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_11__*) #1

declare dso_local i64* @findCell(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
