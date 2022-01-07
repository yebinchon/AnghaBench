; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_object_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_object_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_object = type { i32, %struct.st_attr* }
%struct.st_attr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32 }

@CKR_DEVICE_MEMORY = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_object*, i32, i32, i32, i64)* @add_object_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_object_attribute(%struct.st_object* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.st_attr*, align 8
  %13 = alloca i32, align 4
  store %struct.st_object* %0, %struct.st_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.st_object*, %struct.st_object** %7, align 8
  %15 = getelementptr inbounds %struct.st_object, %struct.st_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = load %struct.st_object*, %struct.st_object** %7, align 8
  %18 = getelementptr inbounds %struct.st_object, %struct.st_object* %17, i32 0, i32 1
  %19 = load %struct.st_attr*, %struct.st_attr** %18, align 8
  %20 = load i32, i32* %13, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = call %struct.st_attr* @realloc(%struct.st_attr* %19, i32 %24)
  store %struct.st_attr* %25, %struct.st_attr** %12, align 8
  %26 = load %struct.st_attr*, %struct.st_attr** %12, align 8
  %27 = icmp eq %struct.st_attr* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @CKR_DEVICE_MEMORY, align 4
  store i32 %29, i32* %6, align 4
  br label %103

30:                                               ; preds = %5
  %31 = load %struct.st_attr*, %struct.st_attr** %12, align 8
  %32 = load %struct.st_object*, %struct.st_object** %7, align 8
  %33 = getelementptr inbounds %struct.st_object, %struct.st_object* %32, i32 0, i32 1
  store %struct.st_attr* %31, %struct.st_attr** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.st_object*, %struct.st_object** %7, align 8
  %36 = getelementptr inbounds %struct.st_object, %struct.st_object* %35, i32 0, i32 1
  %37 = load %struct.st_attr*, %struct.st_attr** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %37, i64 %39
  %41 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %40, i32 0, i32 0
  store i32 %34, i32* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.st_object*, %struct.st_object** %7, align 8
  %44 = getelementptr inbounds %struct.st_object, %struct.st_object* %43, i32 0, i32 1
  %45 = load %struct.st_attr*, %struct.st_attr** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %45, i64 %47
  %49 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %42, i32* %50, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32* @malloc(i64 %51)
  %53 = load %struct.st_object*, %struct.st_object** %7, align 8
  %54 = getelementptr inbounds %struct.st_object, %struct.st_object* %53, i32 0, i32 1
  %55 = load %struct.st_attr*, %struct.st_attr** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %55, i64 %57
  %59 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32* %52, i32** %60, align 8
  %61 = load %struct.st_object*, %struct.st_object** %7, align 8
  %62 = getelementptr inbounds %struct.st_object, %struct.st_object* %61, i32 0, i32 1
  %63 = load %struct.st_attr*, %struct.st_attr** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %63, i64 %65
  %67 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %30
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @CKR_DEVICE_MEMORY, align 4
  store i32 %75, i32* %6, align 4
  br label %103

76:                                               ; preds = %71, %30
  %77 = load %struct.st_object*, %struct.st_object** %7, align 8
  %78 = getelementptr inbounds %struct.st_object, %struct.st_object* %77, i32 0, i32 1
  %79 = load %struct.st_attr*, %struct.st_attr** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %79, i64 %81
  %83 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @memcpy(i32* %85, i32 %86, i64 %87)
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.st_object*, %struct.st_object** %7, align 8
  %91 = getelementptr inbounds %struct.st_object, %struct.st_object* %90, i32 0, i32 1
  %92 = load %struct.st_attr*, %struct.st_attr** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %92, i64 %94
  %96 = getelementptr inbounds %struct.st_attr, %struct.st_attr* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i64 %89, i64* %97, align 8
  %98 = load %struct.st_object*, %struct.st_object** %7, align 8
  %99 = getelementptr inbounds %struct.st_object, %struct.st_object* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @CKR_OK, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %76, %74, %28
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.st_attr* @realloc(%struct.st_attr*, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
