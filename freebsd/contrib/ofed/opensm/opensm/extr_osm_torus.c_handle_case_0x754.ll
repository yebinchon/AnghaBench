; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_handle_case_0x754.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_handle_case_0x754.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32***, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, i32, i32)* @handle_case_0x754 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_case_0x754(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = add nsw i32 %13, 1
  %15 = load %struct.torus*, %struct.torus** %6, align 8
  %16 = getelementptr inbounds %struct.torus, %struct.torus* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @canonicalize(i32 %14, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
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
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.torus*, %struct.torus** %6, align 8
  %36 = getelementptr inbounds %struct.torus, %struct.torus* %35, i32 0, i32 0
  %37 = load i32***, i32**** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32**, i32*** %37, i64 %39
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.torus*, %struct.torus** %6, align 8
  %51 = getelementptr inbounds %struct.torus, %struct.torus* %50, i32 0, i32 0
  %52 = load i32***, i32**** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32**, i32*** %52, i64 %54
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.torus*, %struct.torus** %6, align 8
  %66 = getelementptr inbounds %struct.torus, %struct.torus* %65, i32 0, i32 0
  %67 = load i32***, i32**** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32**, i32*** %67, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @tfind_face_corner(i32 %49, i32 %64, i32 %79)
  %81 = call i64 @install_tswitch(%struct.torus* %31, i32 %32, i32 %33, i32 %34, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %155

84:                                               ; preds = %4
  %85 = load %struct.torus*, %struct.torus** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @log_no_crnr(%struct.torus* %85, i32 1876, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.torus*, %struct.torus** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.torus*, %struct.torus** %6, align 8
  %98 = getelementptr inbounds %struct.torus, %struct.torus* %97, i32 0, i32 0
  %99 = load i32***, i32**** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32**, i32*** %99, i64 %101
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.torus*, %struct.torus** %6, align 8
  %113 = getelementptr inbounds %struct.torus, %struct.torus* %112, i32 0, i32 0
  %114 = load i32***, i32**** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32**, i32*** %114, i64 %116
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.torus*, %struct.torus** %6, align 8
  %128 = getelementptr inbounds %struct.torus, %struct.torus* %127, i32 0, i32 0
  %129 = load i32***, i32**** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32**, i32*** %129, i64 %131
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @tfind_face_corner(i32 %111, i32 %126, i32 %141)
  %143 = call i64 @install_tswitch(%struct.torus* %93, i32 %94, i32 %95, i32 %96, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %84
  store i32 1, i32* %5, align 4
  br label %155

146:                                              ; preds = %84
  %147 = load %struct.torus*, %struct.torus** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @log_no_crnr(%struct.torus* %147, i32 1876, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %146, %145, %83
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @canonicalize(i32, i32) #1

declare dso_local i64 @install_tswitch(%struct.torus*, i32, i32, i32, i32) #1

declare dso_local i32 @tfind_face_corner(i32, i32, i32) #1

declare dso_local i32 @log_no_crnr(%struct.torus*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
