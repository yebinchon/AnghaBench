; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_name_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_name_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_name_compare(%struct.x509_name* %0, %struct.x509_name* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x509_name*, align 8
  %5 = alloca %struct.x509_name*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.x509_name* %0, %struct.x509_name** %4, align 8
  store %struct.x509_name* %1, %struct.x509_name** %5, align 8
  %8 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %9 = icmp ne %struct.x509_name* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %12 = icmp ne %struct.x509_name* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %124

14:                                               ; preds = %10, %2
  %15 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %16 = icmp ne %struct.x509_name* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %19 = icmp ne %struct.x509_name* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %124

21:                                               ; preds = %17, %14
  %22 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %23 = icmp ne %struct.x509_name* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %26 = icmp ne %struct.x509_name* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %124

28:                                               ; preds = %24, %21
  %29 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %30 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %33 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %124

37:                                               ; preds = %28
  %38 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %39 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %42 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %124

46:                                               ; preds = %37
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %108, %46
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %50 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %111

53:                                               ; preds = %47
  %54 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %55 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %62 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %60, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %124

70:                                               ; preds = %53
  %71 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %72 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %79 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %77, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %124

87:                                               ; preds = %70
  %88 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %89 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %96 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @x509_str_compare(i32 %94, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %124

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %7, align 8
  br label %47

111:                                              ; preds = %47
  %112 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %113 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %116 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @x509_str_compare(i32 %114, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %124

123:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %121, %105, %86, %69, %45, %36, %27, %20, %13
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @x509_str_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
