; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_handle_case_0x522.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_handle_case_0x522.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32***, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, i32, i32)* @handle_case_0x522 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_case_0x522(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.torus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load %struct.torus*, %struct.torus** %6, align 8
  %16 = getelementptr inbounds %struct.torus, %struct.torus* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @canonicalize(i32 %14, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.torus*, %struct.torus** %6, align 8
  %22 = getelementptr inbounds %struct.torus, %struct.torus* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @canonicalize(i32 %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = load %struct.torus*, %struct.torus** %6, align 8
  %28 = getelementptr inbounds %struct.torus, %struct.torus* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @canonicalize(i32 %26, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.torus*, %struct.torus** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @safe_x_perpendicular(%struct.torus* %31, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %4
  %38 = load %struct.torus*, %struct.torus** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.torus*, %struct.torus** %6, align 8
  %43 = getelementptr inbounds %struct.torus, %struct.torus* %42, i32 0, i32 0
  %44 = load i32***, i32**** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32**, i32*** %44, i64 %46
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.torus*, %struct.torus** %6, align 8
  %58 = getelementptr inbounds %struct.torus, %struct.torus* %57, i32 0, i32 0
  %59 = load i32***, i32**** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32**, i32*** %59, i64 %61
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.torus*, %struct.torus** %6, align 8
  %73 = getelementptr inbounds %struct.torus, %struct.torus* %72, i32 0, i32 0
  %74 = load i32***, i32**** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32**, i32*** %74, i64 %76
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tfind_2d_perpendicular(i32 %56, i32 %71, i32 %86)
  %88 = call i64 @install_tswitch(%struct.torus* %38, i32 %39, i32 %40, i32 %41, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %169

91:                                               ; preds = %37, %4
  %92 = load %struct.torus*, %struct.torus** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @log_no_perp(%struct.torus* %92, i32 1314, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.torus*, %struct.torus** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @safe_x_perpendicular(%struct.torus* %100, i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %160

106:                                              ; preds = %91
  %107 = load %struct.torus*, %struct.torus** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.torus*, %struct.torus** %6, align 8
  %112 = getelementptr inbounds %struct.torus, %struct.torus* %111, i32 0, i32 0
  %113 = load i32***, i32**** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32**, i32*** %113, i64 %115
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.torus*, %struct.torus** %6, align 8
  %127 = getelementptr inbounds %struct.torus, %struct.torus* %126, i32 0, i32 0
  %128 = load i32***, i32**** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32**, i32*** %128, i64 %130
  %132 = load i32**, i32*** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.torus*, %struct.torus** %6, align 8
  %142 = getelementptr inbounds %struct.torus, %struct.torus* %141, i32 0, i32 0
  %143 = load i32***, i32**** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32**, i32*** %143, i64 %145
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @tfind_2d_perpendicular(i32 %125, i32 %140, i32 %155)
  %157 = call i64 @install_tswitch(%struct.torus* %107, i32 %108, i32 %109, i32 %110, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  br label %169

160:                                              ; preds = %106, %91
  %161 = load %struct.torus*, %struct.torus** %6, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @log_no_perp(%struct.torus* %161, i32 1314, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %160, %159, %90
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @canonicalize(i32, i32) #1

declare dso_local i64 @safe_x_perpendicular(%struct.torus*, i32, i32, i32) #1

declare dso_local i64 @install_tswitch(%struct.torus*, i32, i32, i32, i32) #1

declare dso_local i32 @tfind_2d_perpendicular(i32, i32, i32) #1

declare dso_local i32 @log_no_perp(%struct.torus*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
