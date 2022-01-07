; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvlist_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvlist_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i64*, i32, i32)* @nvlist_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvlist_common(%struct.TYPE_11__* %0, i8* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %15, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %16, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = icmp eq %struct.TYPE_11__* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i32* %28, i32** %29, align 8
  %30 = icmp eq i32* %28, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %21, %5
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %6, align 4
  br label %101

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %77 [
    i32 131, label %38
    i32 132, label %58
    i32 130, label %74
  ]

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %43, 16
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %6, align 4
  br label %101

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  br label %79

58:                                               ; preds = %33
  %59 = load i8*, i8** %8, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %63, 16
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %58
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %6, align 4
  br label %101

67:                                               ; preds = %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  br label %79

74:                                               ; preds = %33
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i64*, i64** %9, align 8
  store i64 16, i64* %76, align 8
  br label %79

77:                                               ; preds = %33
  %78 = load i32, i32* @ENOTSUP, align 4
  store i32 %78, i32* %6, align 4
  br label %101

79:                                               ; preds = %74, %67, %47
  %80 = load i32, i32* %10, align 4
  switch i32 %80, label %97 [
    i32 129, label %81
    i32 128, label %92
  ]

81:                                               ; preds = %79
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @ENOTSUP, align 4
  store i32 %86, i32* %6, align 4
  br label %101

87:                                               ; preds = %81
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = call i32 @nvs_native(%struct.TYPE_9__* %13, %struct.TYPE_11__* %88, i8* %89, i64* %90)
  store i32 %91, i32* %12, align 4
  br label %99

92:                                               ; preds = %79
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = call i32 @nvs_xdr(%struct.TYPE_9__* %13, %struct.TYPE_11__* %93, i8* %94, i64* %95)
  store i32 %96, i32* %12, align 4
  br label %99

97:                                               ; preds = %79
  %98 = load i32, i32* @ENOTSUP, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %97, %92, %87
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %85, %77, %65, %45, %31
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @nvs_native(%struct.TYPE_9__*, %struct.TYPE_11__*, i8*, i64*) #1

declare dso_local i32 @nvs_xdr(%struct.TYPE_9__*, %struct.TYPE_11__*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
