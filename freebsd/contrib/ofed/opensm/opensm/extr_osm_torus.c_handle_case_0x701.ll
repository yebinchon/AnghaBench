; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_handle_case_0x701.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_handle_case_0x701.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32***, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, i32, i32)* @handle_case_0x701 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_case_0x701(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.torus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  %14 = load %struct.torus*, %struct.torus** %6, align 8
  %15 = getelementptr inbounds %struct.torus, %struct.torus* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @canonicalize(i32 %13, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  %20 = load %struct.torus*, %struct.torus** %6, align 8
  %21 = getelementptr inbounds %struct.torus, %struct.torus* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @canonicalize(i32 %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.torus*, %struct.torus** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.torus*, %struct.torus** %6, align 8
  %29 = getelementptr inbounds %struct.torus, %struct.torus* %28, i32 0, i32 0
  %30 = load i32***, i32**** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32**, i32*** %30, i64 %32
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.torus*, %struct.torus** %6, align 8
  %44 = getelementptr inbounds %struct.torus, %struct.torus* %43, i32 0, i32 0
  %45 = load i32***, i32**** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32**, i32*** %45, i64 %47
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.torus*, %struct.torus** %6, align 8
  %59 = getelementptr inbounds %struct.torus, %struct.torus* %58, i32 0, i32 0
  %60 = load i32***, i32**** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32**, i32*** %60, i64 %62
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @tfind_face_corner(i32 %42, i32 %57, i32 %72)
  %74 = call i64 @install_tswitch(%struct.torus* %24, i32 %25, i32 %26, i32 %27, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %86

77:                                               ; preds = %4
  %78 = load %struct.torus*, %struct.torus** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @log_no_crnr(%struct.torus* %78, i32 1793, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %77, %76
  %87 = load i32, i32* %5, align 4
  ret i32 %87
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
