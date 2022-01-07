; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvs_xdr_nvp_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvs_xdr_nvp_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@NVS_OP_GETSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64*)* @nvs_xdr_nvp_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvs_xdr_nvp_size(%struct.TYPE_5__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @NVP_TYPE(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i8* @NVP_NAME(i32* %17)
  %19 = call i32 @strlen(i8* %18)
  %20 = call i32 @NV_ALIGN4(i32 %19)
  %21 = add nsw i32 12, %20
  %22 = add nsw i32 %21, 4
  %23 = add nsw i32 %22, 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %118 [
    i32 154, label %25
    i32 152, label %26
    i32 151, label %26
    i32 141, label %26
    i32 129, label %26
    i32 147, label %26
    i32 135, label %26
    i32 145, label %26
    i32 133, label %26
    i32 143, label %29
    i32 131, label %29
    i32 148, label %29
    i32 149, label %29
    i32 137, label %32
    i32 150, label %41
    i32 153, label %47
    i32 140, label %47
    i32 128, label %47
    i32 146, label %47
    i32 134, label %47
    i32 144, label %47
    i32 132, label %47
    i32 142, label %54
    i32 130, label %54
    i32 136, label %61
    i32 139, label %86
    i32 138, label %86
  ]

25:                                               ; preds = %3
  br label %120

26:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %9, align 4
  br label %120

29:                                               ; preds = %3, %3, %3, %3
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 8
  store i32 %31, i32* %9, align 4
  br label %120

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @NVP_VALUE(i32* %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @NV_ALIGN4(i32 %36)
  %38 = add nsw i32 4, %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %120

41:                                               ; preds = %3
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @NVP_NELEM(i32* %42)
  %44 = call i32 @NV_ALIGN4(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %120

47:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @NVP_NELEM(i32* %48)
  %50 = mul nsw i32 4, %49
  %51 = add nsw i32 4, %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %120

54:                                               ; preds = %3, %3
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @NVP_NELEM(i32* %55)
  %57 = mul nsw i32 8, %56
  %58 = add nsw i32 4, %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %120

61:                                               ; preds = %3
  %62 = load i32*, i32** %6, align 8
  %63 = call i64 @NVP_VALUE(i32* %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = bitcast i8* %64 to i8**
  store i8** %65, i8*** %11, align 8
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %82, %61
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @NVP_NELEM(i32* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i8**, i8*** %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @NV_ALIGN4(i32 %77)
  %79 = add nsw i32 4, %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %66

85:                                               ; preds = %66
  br label %120

86:                                               ; preds = %3, %3
  store i64 0, i64* %12, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* @NVS_OP_GETSIZE, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 139
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @EMBEDDED_NVL(i32* %97)
  %99 = call i32 @nvs_operation(%struct.TYPE_5__* %96, i32 %98, i64* %12)
  store i32 %99, i32* %14, align 4
  br label %104

100:                                              ; preds = %86
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @nvs_embedded_nvl_array(%struct.TYPE_5__* %101, i32* %102, i64* %12)
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %4, align 4
  br label %130

112:                                              ; preds = %104
  %113 = load i64, i64* %12, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %9, align 4
  br label %120

118:                                              ; preds = %3
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %4, align 4
  br label %130

120:                                              ; preds = %112, %85, %54, %47, %41, %32, %29, %26, %25
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @INT32_MAX, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %4, align 4
  br label %130

126:                                              ; preds = %120
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64*, i64** %7, align 8
  store i64 %128, i64* %129, align 8
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %124, %118, %110
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @NVP_TYPE(i32*) #1

declare dso_local i32 @NV_ALIGN4(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @NVP_NAME(i32*) #1

declare dso_local i64 @NVP_VALUE(i32*) #1

declare dso_local i32 @NVP_NELEM(i32*) #1

declare dso_local i32 @nvs_operation(%struct.TYPE_5__*, i32, i64*) #1

declare dso_local i32 @EMBEDDED_NVL(i32*) #1

declare dso_local i32 @nvs_embedded_nvl_array(%struct.TYPE_5__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
