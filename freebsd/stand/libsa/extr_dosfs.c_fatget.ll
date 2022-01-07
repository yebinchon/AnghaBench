; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_fatget.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_fatget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FATBLKSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @fatget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fatget(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, -268435456
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %110

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @fatoff(i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 32
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 2, i32 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @secbyt(i32 %37)
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %3, align 4
  br label %110

42:                                               ; preds = %20
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @FATBLKSZ, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @FATBLKSZ, align 4
  %47 = load i32, i32* %8, align 4
  %48 = srem i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @FATBLKSZ, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %3, align 4
  br label %110

56:                                               ; preds = %42
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dos_read_fatblk(%struct.TYPE_4__* %63, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %3, align 4
  br label %110

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %11, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %105 [
    i32 32, label %84
    i32 16, label %89
    i32 12, label %92
  ]

84:                                               ; preds = %74
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @cv4(i32* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 268435455
  store i32 %88, i32* %7, align 4
  br label %107

89:                                               ; preds = %74
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @cv2(i32* %90)
  store i32 %91, i32* %7, align 4
  br label %107

92:                                               ; preds = %74
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @cv2(i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = ashr i32 %99, 4
  store i32 %100, i32* %7, align 4
  br label %104

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 4095
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %107

105:                                              ; preds = %74
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %3, align 4
  br label %110

107:                                              ; preds = %104, %89, %84
  %108 = load i32, i32* %7, align 4
  %109 = load i32*, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %105, %71, %54, %40, %18
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @fatoff(i32, i32) #1

declare dso_local i32 @secbyt(i32) #1

declare dso_local i32 @dos_read_fatblk(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cv4(i32*) #1

declare dso_local i32 @cv2(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
