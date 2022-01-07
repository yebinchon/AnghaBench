; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_ifwithaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_ifwithaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i64, i32, i64, %struct.interface*, %struct.interface* }

@IS_REMOTE = common dso_local global i32 0, align 4
@IS_BROKE = common dso_local global i32 0, align 4
@IS_PASSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.interface* @ifwithaddr(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.interface*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.interface*, align 8
  %9 = alloca %struct.interface*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.interface* null, %struct.interface** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @IS_REMOTE, align 4
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.interface** @AHASH(i64 %17)
  %19 = load %struct.interface*, %struct.interface** %18, align 8
  store %struct.interface* %19, %struct.interface** %8, align 8
  br label %20

20:                                               ; preds = %51, %15
  %21 = load %struct.interface*, %struct.interface** %8, align 8
  %22 = icmp ne %struct.interface* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = load %struct.interface*, %struct.interface** %8, align 8
  %25 = getelementptr inbounds %struct.interface, %struct.interface* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %51

30:                                               ; preds = %23
  %31 = load %struct.interface*, %struct.interface** %8, align 8
  %32 = getelementptr inbounds %struct.interface, %struct.interface* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %51

38:                                               ; preds = %30
  %39 = load %struct.interface*, %struct.interface** %8, align 8
  %40 = getelementptr inbounds %struct.interface, %struct.interface* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IS_BROKE, align 4
  %43 = load i32, i32* @IS_PASSIVE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load %struct.interface*, %struct.interface** %8, align 8
  store %struct.interface* %48, %struct.interface** %4, align 8
  br label %104

49:                                               ; preds = %38
  %50 = load %struct.interface*, %struct.interface** %8, align 8
  store %struct.interface* %50, %struct.interface** %9, align 8
  br label %51

51:                                               ; preds = %49, %37, %29
  %52 = load %struct.interface*, %struct.interface** %8, align 8
  %53 = getelementptr inbounds %struct.interface, %struct.interface* %52, i32 0, i32 4
  %54 = load %struct.interface*, %struct.interface** %53, align 8
  store %struct.interface* %54, %struct.interface** %8, align 8
  br label %20

55:                                               ; preds = %20
  %56 = load %struct.interface*, %struct.interface** %9, align 8
  %57 = icmp ne %struct.interface* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.interface*, %struct.interface** %9, align 8
  store %struct.interface* %62, %struct.interface** %4, align 8
  br label %104

63:                                               ; preds = %58
  %64 = load i64, i64* %5, align 8
  %65 = call %struct.interface** @BHASH(i64 %64)
  %66 = load %struct.interface*, %struct.interface** %65, align 8
  store %struct.interface* %66, %struct.interface** %8, align 8
  br label %67

67:                                               ; preds = %98, %63
  %68 = load %struct.interface*, %struct.interface** %8, align 8
  %69 = icmp ne %struct.interface* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = load %struct.interface*, %struct.interface** %8, align 8
  %72 = getelementptr inbounds %struct.interface, %struct.interface* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %98

77:                                               ; preds = %70
  %78 = load %struct.interface*, %struct.interface** %8, align 8
  %79 = getelementptr inbounds %struct.interface, %struct.interface* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %98

85:                                               ; preds = %77
  %86 = load %struct.interface*, %struct.interface** %8, align 8
  %87 = getelementptr inbounds %struct.interface, %struct.interface* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IS_BROKE, align 4
  %90 = load i32, i32* @IS_PASSIVE, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load %struct.interface*, %struct.interface** %8, align 8
  store %struct.interface* %95, %struct.interface** %4, align 8
  br label %104

96:                                               ; preds = %85
  %97 = load %struct.interface*, %struct.interface** %8, align 8
  store %struct.interface* %97, %struct.interface** %9, align 8
  br label %98

98:                                               ; preds = %96, %84, %76
  %99 = load %struct.interface*, %struct.interface** %8, align 8
  %100 = getelementptr inbounds %struct.interface, %struct.interface* %99, i32 0, i32 3
  %101 = load %struct.interface*, %struct.interface** %100, align 8
  store %struct.interface* %101, %struct.interface** %8, align 8
  br label %67

102:                                              ; preds = %67
  %103 = load %struct.interface*, %struct.interface** %9, align 8
  store %struct.interface* %103, %struct.interface** %4, align 8
  br label %104

104:                                              ; preds = %102, %94, %61, %47
  %105 = load %struct.interface*, %struct.interface** %4, align 8
  ret %struct.interface* %105
}

declare dso_local %struct.interface** @AHASH(i64) #1

declare dso_local %struct.interface** @BHASH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
