; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_pack_descriptor_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_pack_descriptor_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@NV_TYPE_DESCRIPTOR_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvpair_pack_descriptor_array(%struct.TYPE_5__* %0, i8* %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = call i32 @NVPAIR_ASSERT(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NV_TYPE_DESCRIPTOR_ARRAY, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @PJDLOG_ASSERT(i32 %19)
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @PJDLOG_ASSERT(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = call i32* @nvpair_get_descriptor_array(%struct.TYPE_5__* %29, i32* null)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @PJDLOG_ASSERT(i32 %33)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %72, %4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %35
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %43, 4
  %45 = zext i1 %44 to i32
  %46 = call i32 @PJDLOG_ASSERT(i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %64

54:                                               ; preds = %41
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @PJDLOG_ASSERT(i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %54, %41
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @memcpy(i8* %65, i32* %9, i32 4)
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  store i8* %68, i8** %6, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %70, 4
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %35

75:                                               ; preds = %35
  %76 = load i8*, i8** %6, align 8
  ret i8* %76
}

declare dso_local i32 @NVPAIR_ASSERT(%struct.TYPE_5__*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32* @nvpair_get_descriptor_array(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
