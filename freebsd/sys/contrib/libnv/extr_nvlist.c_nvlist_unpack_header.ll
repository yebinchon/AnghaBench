; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_unpack_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_unpack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.nvlist_header = type { i64, i64, i32 }

@NV_FLAG_ALL_MASK = common dso_local global i32 0, align 4
@NV_FLAG_IN_ARRAY = common dso_local global i32 0, align 4
@NV_FLAG_PUBLIC_MASK = common dso_local global i32 0, align 4
@NV_FLAG_BIG_ENDIAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvlist_unpack_header(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.nvlist_header, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 24
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %77

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @memcpy(%struct.nvlist_header* %12, i8* %19, i32 24)
  %21 = call i32 @nvlist_check_header(%struct.nvlist_header* %12)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %77

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %12, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %28, 24
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %77

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %12, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %77

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %12, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NV_FLAG_ALL_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %77

46:                                               ; preds = %38
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NV_FLAG_IN_ARRAY, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %13, align 4
  %52 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %12, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NV_FLAG_PUBLIC_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 24
  store i8* %61, i8** %8, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %46
  %65 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %12, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NV_FLAG_BIG_ENDIAN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %46
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 24
  store i64 %75, i64* %73, align 8
  %76 = load i8*, i8** %8, align 8
  store i8* %76, i8** %6, align 8
  br label %80

77:                                               ; preds = %45, %37, %31, %23, %17
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @ERRNO_SET(i32 %78)
  store i8* null, i8** %6, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i8*, i8** %6, align 8
  ret i8* %81
}

declare dso_local i32 @memcpy(%struct.nvlist_header*, i8*, i32) #1

declare dso_local i32 @nvlist_check_header(%struct.nvlist_header*) #1

declare dso_local i32 @ERRNO_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
