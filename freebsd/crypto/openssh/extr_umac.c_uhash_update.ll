; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_uhash_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_uhash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@STREAMS = common dso_local global i32 0, align 4
@L1_KEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i64)* @uhash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhash_update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @STREAMS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  store i32* %15, i32** %11, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @L1_KEY_LEN, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @nh_update(i32* %25, i32* %26, i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %126

34:                                               ; preds = %3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @L1_KEY_LEN, align 8
  %39 = srem i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @L1_KEY_LEN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i64, i64* @L1_KEY_LEN, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* @L1_KEY_LEN, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %111

53:                                               ; preds = %47
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load i64, i64* @L1_KEY_LEN, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %8, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @nh_update(i32* %61, i32* %62, i64 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @nh_final(i32* %66, i32* %67)
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @poly_hash(%struct.TYPE_4__* %74, i32* %75)
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 %80
  store i32* %82, i32** %5, align 8
  br label %83

83:                                               ; preds = %56, %53
  br label %84

84:                                               ; preds = %88, %83
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @L1_KEY_LEN, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %84
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %5, align 8
  %92 = load i64, i64* @L1_KEY_LEN, align 8
  %93 = load i64, i64* @L1_KEY_LEN, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @nh(i32* %90, i32* %91, i64 %92, i64 %93, i32* %94)
  %96 = load i64, i64* @L1_KEY_LEN, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load i64, i64* @L1_KEY_LEN, align 8
  %102 = load i64, i64* %6, align 8
  %103 = sub nsw i64 %102, %101
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* @L1_KEY_LEN, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 %104
  store i32* %106, i32** %5, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @poly_hash(%struct.TYPE_4__* %107, i32* %108)
  br label %84

110:                                              ; preds = %84
  br label %111

111:                                              ; preds = %110, %47
  %112 = load i64, i64* %6, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32*, i32** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @nh_update(i32* %116, i32* %117, i64 %118)
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %114, %111
  br label %126

126:                                              ; preds = %125, %23
  %127 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %127)
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nh_update(i32*, i32*, i64) #2

declare dso_local i32 @nh_final(i32*, i32*) #2

declare dso_local i32 @poly_hash(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @nh(i32*, i32*, i64, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
