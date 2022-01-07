; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_test_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_test_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }

@GSMERR_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.client*, i64, %struct.client*, i64, i32)* @test_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_token(%struct.client* %0, i64 %1, %struct.client* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.client*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.client* %2, %struct.client** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %152, %5
  %15 = load i32, i32* %13, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %155

17:                                               ; preds = %14
  %18 = load %struct.client*, %struct.client** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.client*, %struct.client** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @test_mic(%struct.client* %18, i64 %19, %struct.client* %20, i64 %21)
  %23 = load %struct.client*, %struct.client** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.client*, %struct.client** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @test_mic(%struct.client* %23, i64 %24, %struct.client* %25, i64 %26)
  %28 = load %struct.client*, %struct.client** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.client*, %struct.client** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @test_wrap(%struct.client* %28, i64 %29, %struct.client* %30, i64 %31, i32 0)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %6, align 8
  br label %157

37:                                               ; preds = %17
  %38 = load %struct.client*, %struct.client** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.client*, %struct.client** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @test_wrap(%struct.client* %38, i64 %39, %struct.client* %40, i64 %41, i32 0)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* %12, align 8
  store i64 %46, i64* %6, align 8
  br label %157

47:                                               ; preds = %37
  %48 = load %struct.client*, %struct.client** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.client*, %struct.client** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @test_wrap(%struct.client* %48, i64 %49, %struct.client* %50, i64 %51, i32 1)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %12, align 8
  store i64 %56, i64* %6, align 8
  br label %157

57:                                               ; preds = %47
  %58 = load %struct.client*, %struct.client** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.client*, %struct.client** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @test_wrap(%struct.client* %58, i64 %59, %struct.client* %60, i64 %61, i32 1)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %6, align 8
  br label %157

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %151

70:                                               ; preds = %67
  %71 = load %struct.client*, %struct.client** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.client*, %struct.client** %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @test_wrap_ext(%struct.client* %71, i64 %72, %struct.client* %73, i64 %74, i32 1, i32 0)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %6, align 8
  br label %157

80:                                               ; preds = %70
  %81 = load %struct.client*, %struct.client** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.client*, %struct.client** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @test_wrap_ext(%struct.client* %81, i64 %82, %struct.client* %83, i64 %84, i32 1, i32 0)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i64, i64* %12, align 8
  store i64 %89, i64* %6, align 8
  br label %157

90:                                               ; preds = %80
  %91 = load %struct.client*, %struct.client** %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.client*, %struct.client** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @test_wrap_ext(%struct.client* %91, i64 %92, %struct.client* %93, i64 %94, i32 1, i32 1)
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i64, i64* %12, align 8
  store i64 %99, i64* %6, align 8
  br label %157

100:                                              ; preds = %90
  %101 = load %struct.client*, %struct.client** %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.client*, %struct.client** %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @test_wrap_ext(%struct.client* %101, i64 %102, %struct.client* %103, i64 %104, i32 1, i32 1)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %6, align 8
  br label %157

110:                                              ; preds = %100
  %111 = load %struct.client*, %struct.client** %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.client*, %struct.client** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i64 @test_wrap_ext(%struct.client* %111, i64 %112, %struct.client* %113, i64 %114, i32 0, i32 0)
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %12, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %6, align 8
  br label %157

120:                                              ; preds = %110
  %121 = load %struct.client*, %struct.client** %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.client*, %struct.client** %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @test_wrap_ext(%struct.client* %121, i64 %122, %struct.client* %123, i64 %124, i32 0, i32 0)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i64, i64* %12, align 8
  store i64 %129, i64* %6, align 8
  br label %157

130:                                              ; preds = %120
  %131 = load %struct.client*, %struct.client** %7, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.client*, %struct.client** %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i64 @test_wrap_ext(%struct.client* %131, i64 %132, %struct.client* %133, i64 %134, i32 0, i32 1)
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %12, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i64, i64* %12, align 8
  store i64 %139, i64* %6, align 8
  br label %157

140:                                              ; preds = %130
  %141 = load %struct.client*, %struct.client** %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.client*, %struct.client** %7, align 8
  %144 = load i64, i64* %8, align 8
  %145 = call i64 @test_wrap_ext(%struct.client* %141, i64 %142, %struct.client* %143, i64 %144, i32 0, i32 1)
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i64, i64* %12, align 8
  store i64 %149, i64* %6, align 8
  br label %157

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %67
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %14

155:                                              ; preds = %14
  %156 = load i64, i64* @GSMERR_OK, align 8
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %155, %148, %138, %128, %118, %108, %98, %88, %78, %65, %55, %45, %35
  %158 = load i64, i64* %6, align 8
  ret i64 %158
}

declare dso_local i32 @test_mic(%struct.client*, i64, %struct.client*, i64) #1

declare dso_local i64 @test_wrap(%struct.client*, i64, %struct.client*, i64, i32) #1

declare dso_local i64 @test_wrap_ext(%struct.client*, i64, %struct.client*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
