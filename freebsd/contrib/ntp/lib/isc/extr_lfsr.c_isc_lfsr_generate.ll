; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lfsr.c_isc_lfsr_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lfsr.c_isc_lfsr_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 (%struct.TYPE_6__*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_lfsr_generate(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @VALID_LFSR(%struct.TYPE_6__* %10)
  %12 = call i32 @REQUIRE(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @REQUIRE(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ugt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %49, %3
  %24 = load i32, i32* %9, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  store i8 0, i8* %28, align 1
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %46, %27
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %30, 7
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call zeroext i8 @lfsr_generate(%struct.TYPE_6__* %33)
  %35 = zext i8 %34 to i32
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %35
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 1
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = call zeroext i8 @lfsr_generate(%struct.TYPE_6__* %50)
  %52 = zext i8 %51 to i32
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, %52
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  br label %23

60:                                               ; preds = %23
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.TYPE_6__*, i32)* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = mul i32 %74, 8
  %76 = icmp ule i32 %73, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %80(%struct.TYPE_6__* %81, i32 %84)
  br label %93

86:                                               ; preds = %70
  %87 = load i32, i32* %6, align 4
  %88 = mul i32 %87, 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %86, %77
  br label %94

94:                                               ; preds = %93, %65, %60
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_LFSR(%struct.TYPE_6__*) #1

declare dso_local zeroext i8 @lfsr_generate(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
