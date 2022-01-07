; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lfsr.c_isc_lfsr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lfsr.c_isc_lfsr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i8*, i32 (%struct.TYPE_6__*, i8*)*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_lfsr_init(%struct.TYPE_6__* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 (%struct.TYPE_6__*, i8*)* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32 (%struct.TYPE_6__*, i8*)*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 (%struct.TYPE_6__*, i8*)* %5, i32 (%struct.TYPE_6__*, i8*)** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = call i32 @VALID_LFSR(%struct.TYPE_6__* %15)
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = icmp ule i32 8, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = icmp ule i32 %21, 32
  br label %23

23:                                               ; preds = %20, %7
  %24 = phi i1 [ false, %7 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @REQUIRE(i32 %25)
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @REQUIRE(i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %13, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i32 (%struct.TYPE_6__*, i8*)* %44, i32 (%struct.TYPE_6__*, i8*)** %46, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %23
  %53 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %13, align 8
  %54 = icmp ne i32 (%struct.TYPE_6__*, i8*)* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %13, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 %56(%struct.TYPE_6__* %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %52, %23
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 32, %68
  %70 = lshr i32 -1, %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_LFSR(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
