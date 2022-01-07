; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_seq.c___bt_seqset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_seq.c___bt_seqset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@P_ROOT = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4
@P_BLEAF = common dso_local global i32 0, align 4
@P_RLEAF = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32)* @__bt_seqset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bt_seqset(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %134 [
    i32 132, label %14
    i32 131, label %32
    i32 129, label %32
    i32 130, label %80
    i32 128, label %80
  ]

14:                                               ; preds = %4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  %26 = load i32, i32* @RET_ERROR, align 4
  store i32 %26, i32* %5, align 4
  br label %136

27:                                               ; preds = %19
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = call i32 @__bt_first(%struct.TYPE_20__* %28, %struct.TYPE_19__* %29, %struct.TYPE_18__* %30, i32* %12)
  store i32 %31, i32* %5, align 4
  br label %136

32:                                               ; preds = %4, %4
  %33 = load i32, i32* @P_ROOT, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %64, %32
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.TYPE_17__* @mpool_get(i32 %37, i32 %38, i32 0)
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %10, align 8
  %40 = icmp eq %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @RET_ERROR, align 4
  store i32 %42, i32* %5, align 4
  br label %136

43:                                               ; preds = %34
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %45 = call i32 @NEXTINDEX(%struct.TYPE_17__* %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = call i32 @mpool_put(i32 %50, %struct.TYPE_17__* %51, i32 0)
  %53 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %53, i32* %5, align 4
  br label %136

54:                                               ; preds = %43
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @P_BLEAF, align 4
  %59 = load i32, i32* @P_RLEAF, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %74

64:                                               ; preds = %54
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = call %struct.TYPE_16__* @GETBINTERNAL(%struct.TYPE_17__* %65, i32 0)
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %73 = call i32 @mpool_put(i32 %71, %struct.TYPE_17__* %72, i32 0)
  br label %34

74:                                               ; preds = %63
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %77, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %134

80:                                               ; preds = %4, %4
  %81 = load i32, i32* @P_ROOT, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %112, %80
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.TYPE_17__* @mpool_get(i32 %85, i32 %86, i32 0)
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %10, align 8
  %88 = icmp eq %struct.TYPE_17__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @RET_ERROR, align 4
  store i32 %90, i32* %5, align 4
  br label %136

91:                                               ; preds = %82
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %93 = call i32 @NEXTINDEX(%struct.TYPE_17__* %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = call i32 @mpool_put(i32 %98, %struct.TYPE_17__* %99, i32 0)
  %101 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %101, i32* %5, align 4
  br label %136

102:                                              ; preds = %91
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @P_BLEAF, align 4
  %107 = load i32, i32* @P_RLEAF, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %125

112:                                              ; preds = %102
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %115 = call i32 @NEXTINDEX(%struct.TYPE_17__* %114)
  %116 = sub nsw i32 %115, 1
  %117 = call %struct.TYPE_16__* @GETBINTERNAL(%struct.TYPE_17__* %113, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %11, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = call i32 @mpool_put(i32 %122, %struct.TYPE_17__* %123, i32 0)
  br label %82

125:                                              ; preds = %111
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  store %struct.TYPE_17__* %126, %struct.TYPE_17__** %128, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = call i32 @NEXTINDEX(%struct.TYPE_17__* %129)
  %131 = sub nsw i32 %130, 1
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %4, %125, %74
  %135 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %95, %89, %47, %41, %27, %24
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @__bt_first(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_17__* @mpool_get(i32, i32, i32) #1

declare dso_local i32 @NEXTINDEX(%struct.TYPE_17__*) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @GETBINTERNAL(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
