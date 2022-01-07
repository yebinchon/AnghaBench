; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sorts.c_svn_sort__array_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sorts.c_svn_sort__array_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_sort__array_lookup(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %117

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %16
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i8* null, i8** %5, align 8
  br label %163

35:                                               ; preds = %25
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 %44(i8* %50, i8* %51)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  store i8* null, i8** %5, align 8
  br label %163

55:                                               ; preds = %35
  br label %116

56:                                               ; preds = %16
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %64, i64 %71
  store i8* %72, i8** %13, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %75, i64 %81
  store i8* %82, i8** %10, align 8
  %83 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 %83(i8* %84, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %59
  %89 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 %89(i8* %90, i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** %10, align 8
  store i8* %95, i8** %5, align 8
  br label %163

96:                                               ; preds = %88, %59
  br label %115

97:                                               ; preds = %56
  %98 = load i32, i32* %11, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i32*, i32** %8, align 8
  store i32 0, i32* %101, align 4
  %102 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 %102(i8* %105, i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %100
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %5, align 8
  br label %163

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %97
  br label %115

115:                                              ; preds = %114, %96
  br label %116

116:                                              ; preds = %115, %55
  br label %117

117:                                              ; preds = %116, %4
  %118 = load i8*, i8** %7, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %129 = call i32 @bsearch_lower_bound(i8* %118, i8* %121, i32 %124, i32 %127, i32 (i8*, i8*)* %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %117
  %133 = load i32, i32* %11, align 4
  %134 = load i32*, i32** %8, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %117
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sge i32 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i8* null, i8** %5, align 8
  br label %163

142:                                              ; preds = %135
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %146, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr i8, i8* %145, i64 %151
  store i8* %152, i8** %10, align 8
  %153 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 %153(i8* %154, i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %142
  br label %161

159:                                              ; preds = %142
  %160 = load i8*, i8** %10, align 8
  br label %161

161:                                              ; preds = %159, %158
  %162 = phi i8* [ null, %158 ], [ %160, %159 ]
  store i8* %162, i8** %5, align 8
  br label %163

163:                                              ; preds = %161, %141, %109, %94, %54, %34
  %164 = load i8*, i8** %5, align 8
  ret i8* %164
}

declare dso_local i32 @bsearch_lower_bound(i8*, i8*, i32, i32, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
