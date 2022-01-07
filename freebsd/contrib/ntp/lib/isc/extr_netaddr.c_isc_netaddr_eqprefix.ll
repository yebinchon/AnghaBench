; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_netaddr.c_isc_netaddr_eqprefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_netaddr.c_isc_netaddr_eqprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ISC_FALSE = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_netaddr_eqprefix(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @REQUIRE(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @ISC_FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %138

34:                                               ; preds = %21
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ISC_FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %138

49:                                               ; preds = %42, %34
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %71 [
    i32 129, label %53
    i32 128, label %62
  ]

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %8, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %9, align 8
  store i32 4, i32* %10, align 4
  br label %73

62:                                               ; preds = %49
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = bitcast i32* %65 to i8*
  store i8* %66, i8** %8, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = bitcast i32* %69 to i8*
  store i8* %70, i8** %9, align 8
  store i32 16, i32* %10, align 4
  br label %73

71:                                               ; preds = %49
  %72 = load i32, i32* @ISC_FALSE, align 4
  store i32 %72, i32* %4, align 4
  br label %138

73:                                               ; preds = %62, %53
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul i32 %75, 8
  %77 = icmp ugt i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = mul i32 %79, 8
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %7, align 4
  %83 = udiv i32 %82, 8
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = urem i32 %84, 8
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ugt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i64 @memcmp(i8* %89, i8* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @ISC_FALSE, align 4
  store i32 %95, i32* %4, align 4
  br label %138

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %81
  %98 = load i32, i32* %12, align 4
  %99 = icmp ugt i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ult i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @INSIST(i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp ult i32 %106, 8
  %108 = zext i1 %107 to i32
  %109 = call i32 @INSIST(i32 %108)
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  store i32 %115, i32* %13, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %12, align 4
  %123 = sub i32 8, %122
  %124 = shl i32 255, %123
  %125 = and i32 %124, 255
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %15, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %100
  %134 = load i32, i32* @ISC_FALSE, align 4
  store i32 %134, i32* %4, align 4
  br label %138

135:                                              ; preds = %100
  br label %136

136:                                              ; preds = %135, %97
  %137 = load i32, i32* @ISC_TRUE, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %133, %94, %71, %47, %32
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
