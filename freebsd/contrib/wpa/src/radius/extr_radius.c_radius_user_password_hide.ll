; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_user_password_hide.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_user_password_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_user_password_hide(%struct.radius_msg* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.radius_msg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2 x i32*], align 16
  %20 = alloca [2 x i64], align 16
  %21 = alloca [16 x i32], align 16
  store %struct.radius_msg* %0, %struct.radius_msg** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %22, 16
  %24 = load i64, i64* %15, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %127

27:                                               ; preds = %7
  %28 = load i32*, i32** %14, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @os_memcpy(i32* %28, i32* %29, i64 %30)
  %32 = load i64, i64* %11, align 8
  %33 = urem i64 %32, 16
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %16, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i64, i64* %16, align 8
  %42 = sub i64 16, %41
  store i64 %42, i64* %16, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i64, i64* %16, align 8
  %47 = call i32 @os_memset(i32* %45, i32 0, i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %16, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %15, align 8
  br label %53

51:                                               ; preds = %36, %27
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %15, align 8
  br label %53

53:                                               ; preds = %51, %40
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  store i32* %54, i32** %55, align 16
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %56, i64* %57, align 16
  %58 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %59 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 1
  store i32* %62, i32** %63, align 8
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 16, i64* %64, align 8
  %65 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %68 = call i32 @md5_vector(i32 2, i32** %65, i64* %66, i32* %67)
  store i64 0, i64* %17, align 8
  br label %69

69:                                               ; preds = %81, %53
  %70 = load i64, i64* %17, align 8
  %71 = icmp ult i64 %70, 16
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i64, i64* %17, align 8
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = load i64, i64* %17, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72
  %82 = load i64, i64* %17, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %17, align 8
  br label %69

84:                                               ; preds = %69
  store i64 16, i64* %18, align 8
  br label %85

85:                                               ; preds = %121, %84
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %15, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %85
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  store i32* %90, i32** %91, align 16
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %92, i64* %93, align 16
  %94 = load i32*, i32** %14, align 8
  %95 = load i64, i64* %18, align 8
  %96 = sub i64 %95, 16
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 1
  store i32* %97, i32** %98, align 8
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 16, i64* %99, align 8
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %103 = call i32 @md5_vector(i32 2, i32** %100, i64* %101, i32* %102)
  store i64 0, i64* %17, align 8
  br label %104

104:                                              ; preds = %118, %89
  %105 = load i64, i64* %17, align 8
  %106 = icmp ult i64 %105, 16
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load i64, i64* %17, align 8
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %17, align 8
  %114 = add i64 %112, %113
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %116, %110
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %107
  %119 = load i64, i64* %17, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %17, align 8
  br label %104

121:                                              ; preds = %104
  %122 = load i64, i64* %18, align 8
  %123 = add i64 %122, 16
  store i64 %123, i64* %18, align 8
  br label %85

124:                                              ; preds = %85
  %125 = load i64, i64* %15, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %124, %26
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @md5_vector(i32, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
