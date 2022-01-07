; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c_find_composition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c_find_composition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.canon_node = type { i32, i32, i32, i32 }

@_wind_canon_table = common dso_local global %struct.canon_node* null, align 8
@_wind_canon_next_table = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @find_composition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_composition(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.canon_node*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 0, i16* %6, align 2
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @hangul_composition(i32* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %79, %18
  %20 = load %struct.canon_node*, %struct.canon_node** @_wind_canon_table, align 8
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds %struct.canon_node, %struct.canon_node* %20, i64 %22
  store %struct.canon_node* %23, %struct.canon_node** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = urem i32 %24, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* %28, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.canon_node*, %struct.canon_node** %9, align 8
  %36 = getelementptr inbounds %struct.canon_node, %struct.canon_node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %84

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %19
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.canon_node*, %struct.canon_node** %9, align 8
  %44 = getelementptr inbounds %struct.canon_node, %struct.canon_node* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.canon_node*, %struct.canon_node** %9, align 8
  %50 = getelementptr inbounds %struct.canon_node, %struct.canon_node* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp uge i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %39
  store i16 0, i16* %6, align 2
  br label %68

54:                                               ; preds = %47
  %55 = load i16*, i16** @_wind_canon_next_table, align 8
  %56 = load %struct.canon_node*, %struct.canon_node** %9, align 8
  %57 = getelementptr inbounds %struct.canon_node, %struct.canon_node* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %58, %59
  %61 = load %struct.canon_node*, %struct.canon_node** %9, align 8
  %62 = getelementptr inbounds %struct.canon_node, %struct.canon_node* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %60, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %55, i64 %65
  %67 = load i16, i16* %66, align 2
  store i16 %67, i16* %6, align 2
  br label %68

68:                                               ; preds = %54, %53
  %69 = load i16, i16* %6, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 %73, 4
  %75 = and i32 %74, 1048575
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %68
  br label %79

79:                                               ; preds = %78
  %80 = load i16, i16* %6, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %19, label %83

83:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %34, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @hangul_composition(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
