; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvs_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvs_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { {}* }
%struct.TYPE_16__ = type { i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*)* @nvs_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvs_operation(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EFAULT, align 4
  store i32 %14, i32* %4, align 4
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*)**
  %21 = load i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*)** %20, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = call i32 %21(%struct.TYPE_15__* %22, %struct.TYPE_16__* %23, i64* %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %50

29:                                               ; preds = %15
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %46 [
    i32 129, label %33
    i32 130, label %37
    i32 128, label %41
  ]

33:                                               ; preds = %29
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i32 @nvs_encode_pairs(%struct.TYPE_15__* %34, %struct.TYPE_16__* %35)
  store i32 %36, i32* %8, align 4
  br label %48

37:                                               ; preds = %29
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = call i32 @nvs_decode_pairs(%struct.TYPE_15__* %38, %struct.TYPE_16__* %39)
  store i32 %40, i32* %8, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = call i32 @nvs_getsize_pairs(%struct.TYPE_15__* %42, %struct.TYPE_16__* %43, i64* %44)
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %29
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %41, %37, %33
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %27, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @nvs_encode_pairs(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @nvs_decode_pairs(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @nvs_getsize_pairs(%struct.TYPE_15__*, %struct.TYPE_16__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
