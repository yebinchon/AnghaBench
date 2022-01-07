; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_handle_case_0x7dc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_handle_case_0x7dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32***, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, i32, i32)* @handle_case_0x7dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_case_0x7dc(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.torus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = load %struct.torus*, %struct.torus** %6, align 8
  %17 = getelementptr inbounds %struct.torus, %struct.torus* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @canonicalize(i32 %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  %22 = load %struct.torus*, %struct.torus** %6, align 8
  %23 = getelementptr inbounds %struct.torus, %struct.torus* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @canonicalize(i32 %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.torus*, %struct.torus** %6, align 8
  %29 = getelementptr inbounds %struct.torus, %struct.torus* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @canonicalize(i32 %27, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = load %struct.torus*, %struct.torus** %6, align 8
  %35 = getelementptr inbounds %struct.torus, %struct.torus* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @canonicalize(i32 %33, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.torus*, %struct.torus** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @safe_y_perpendicular(%struct.torus* %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %113

44:                                               ; preds = %4
  %45 = load %struct.torus*, %struct.torus** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.torus*, %struct.torus** %6, align 8
  %50 = getelementptr inbounds %struct.torus, %struct.torus* %49, i32 0, i32 0
  %51 = load i32***, i32**** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32**, i32*** %51, i64 %53
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.torus*, %struct.torus** %6, align 8
  %65 = getelementptr inbounds %struct.torus, %struct.torus* %64, i32 0, i32 0
  %66 = load i32***, i32**** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32**, i32*** %66, i64 %68
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.torus*, %struct.torus** %6, align 8
  %80 = getelementptr inbounds %struct.torus, %struct.torus* %79, i32 0, i32 0
  %81 = load i32***, i32**** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32**, i32*** %81, i64 %83
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.torus*, %struct.torus** %6, align 8
  %95 = getelementptr inbounds %struct.torus, %struct.torus* %94, i32 0, i32 0
  %96 = load i32***, i32**** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32**, i32*** %96, i64 %98
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @tfind_3d_perpendicular(i32 %63, i32 %78, i32 %93, i32 %108)
  %110 = call i64 @install_tswitch(%struct.torus* %45, i32 %46, i32 %47, i32 %48, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %44
  store i32 1, i32* %5, align 4
  br label %122

113:                                              ; preds = %44, %4
  %114 = load %struct.torus*, %struct.torus** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @log_no_perp(%struct.torus* %114, i32 2012, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %113, %112
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @canonicalize(i32, i32) #1

declare dso_local i64 @safe_y_perpendicular(%struct.torus*, i32, i32, i32) #1

declare dso_local i64 @install_tswitch(%struct.torus*, i32, i32, i32, i32) #1

declare dso_local i32 @tfind_3d_perpendicular(i32, i32, i32, i32) #1

declare dso_local i32 @log_no_perp(%struct.torus*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
