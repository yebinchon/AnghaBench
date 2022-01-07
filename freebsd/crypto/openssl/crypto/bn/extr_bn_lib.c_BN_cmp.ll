; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_lib.c_BN_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_lib.c_BN_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_cmp(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13, %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %110

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %110

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %110

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = call i32 @bn_check_top(%struct.TYPE_5__* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = call i32 @bn_check_top(%struct.TYPE_5__* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %110

43:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %110

44:                                               ; preds = %25
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %51

50:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %110

61:                                               ; preds = %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %110

71:                                               ; preds = %61
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %106, %71
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %76
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %9, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %110

99:                                               ; preds = %79
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %110

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %6, align 4
  br label %76

109:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %103, %97, %69, %59, %43, %42, %24, %23, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @bn_check_top(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
