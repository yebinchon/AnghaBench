; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64, %struct.nvpair_header* }
%struct.nvpair_header = type { i64, i64, i64, i32 }

@NV_TYPE_LAST = common dso_local global i64 0, align 8
@NV_TYPE_NVLIST_UP = common dso_local global i64 0, align 8
@NV_TYPE_NVLIST_ARRAY_NEXT = common dso_local global i64 0, align 8
@NV_NAME_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NV_TYPE_FIRST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvpair_unpack_header(i32 %0, %struct.TYPE_3__* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.nvpair_header, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64*, i64** %9, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %119

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @memcpy(%struct.nvpair_header* %10, i8* %16, i32 32)
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 32
  store i8* %19, i8** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, 32
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NV_TYPE_LAST, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NV_TYPE_NVLIST_UP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NV_TYPE_NVLIST_ARRAY_NEXT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %119

38:                                               ; preds = %32, %27, %15
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @le16toh(i64 %43)
  %45 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @le64toh(i64 %47)
  %49 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %38
  %51 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NV_NAME_MAX, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %119

56:                                               ; preds = %50
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %119

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %119

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @strnlen(i8* %69, i32 %72)
  %74 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, 1
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %119

79:                                               ; preds = %68
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load %struct.nvpair_header*, %struct.nvpair_header** %81, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(%struct.nvpair_header* %82, i8* %83, i32 %86)
  %88 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %8, align 8
  %92 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = load i64*, i64** %9, align 8
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %79
  br label %119

103:                                              ; preds = %79
  %104 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %10, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i8*, i8** %8, align 8
  store i8* %118, i8** %5, align 8
  br label %122

119:                                              ; preds = %102, %78, %67, %62, %55, %37, %14
  %120 = load i32, i32* @EINVAL, align 4
  %121 = call i32 @ERRNO_SET(i32 %120)
  store i8* null, i8** %5, align 8
  br label %122

122:                                              ; preds = %119, %103
  %123 = load i8*, i8** %5, align 8
  ret i8* %123
}

declare dso_local i32 @memcpy(%struct.nvpair_header*, i8*, i32) #1

declare dso_local i64 @le16toh(i64) #1

declare dso_local i64 @le64toh(i64) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i32 @ERRNO_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
