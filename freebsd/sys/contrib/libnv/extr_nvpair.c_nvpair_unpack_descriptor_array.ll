; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack_descriptor_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack_descriptor_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i8* }

@NV_TYPE_DESCRIPTOR_ARRAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvpair_unpack_descriptor_array(i32 %0, %struct.TYPE_3__* %1, i8* %2, i64* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NV_TYPE_DESCRIPTOR_ARRAY, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  store i64 %29, i64* %15, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %52, label %35

35:                                               ; preds = %6
  %36 = load i64*, i64** %11, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45, %40, %35, %6
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @ERRNO_SET(i32 %53)
  store i8* null, i8** %7, align 8
  br label %122

55:                                               ; preds = %45
  %56 = load i64, i64* %15, align 8
  %57 = call i64 @nv_malloc(i64 %56)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %17, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i8* null, i8** %7, align 8
  br label %122

62:                                               ; preds = %55
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %112, %62
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %115

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @be64dec(i8* %73)
  store i64 %74, i64* %14, align 8
  br label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 @le64dec(i8* %76)
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i64, i64* %14, align 8
  %80 = icmp ult i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* @EINVAL, align 4
  %83 = call i32 @ERRNO_SET(i32 %82)
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @nv_free(i32* %84)
  store i8* null, i8** %7, align 8
  br label %122

86:                                               ; preds = %78
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* @EINVAL, align 4
  %92 = call i32 @ERRNO_SET(i32 %91)
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @nv_free(i32* %93)
  store i8* null, i8** %7, align 8
  br label %122

95:                                               ; preds = %86
  %96 = load i32*, i32** %12, align 8
  %97 = load i64, i64* %14, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %17, align 8
  %104 = load i32, i32* %16, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  store i8* %108, i8** %10, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %110, 8
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %95
  %113 = load i32, i32* %16, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %63

115:                                              ; preds = %63
  %116 = load i32*, i32** %17, align 8
  %117 = ptrtoint i32* %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %10, align 8
  store i8* %121, i8** %7, align 8
  br label %122

122:                                              ; preds = %115, %90, %81, %61, %52
  %123 = load i8*, i8** %7, align 8
  ret i8* %123
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i64 @nv_malloc(i64) #1

declare dso_local i64 @be64dec(i8*) #1

declare dso_local i64 @le64dec(i8*) #1

declare dso_local i32 @nv_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
