; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_mzap_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_mzap_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64*, i32, %struct.TYPE_18__, %struct.TYPE_17__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }

@fzap_default_block_shift = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"upgrading obj=%llu with %u chunks\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"adding %s=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__**, i8*, i32*, i32)* @mzap_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mzap_upgrade(%struct.TYPE_19__** %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__** %0, %struct.TYPE_19__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %11, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  %22 = call i32 @RW_WRITE_HELD(i32* %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.TYPE_21__* @zio_buf_alloc(i32 %29)
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %13, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @bcopy(i32 %35, %struct.TYPE_21__* %36, i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @fzap_default_block_shift, align 8
  %53 = shl i64 1, %52
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @dmu_object_set_blocksize(i32 %48, i64* %51, i64 %53, i32 0, i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @zio_buf_free(%struct.TYPE_21__* %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %135

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64* %67, i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %71 = call i32 @mze_destroy(%struct.TYPE_19__* %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @fzap_upgrade(%struct.TYPE_19__* %72, i32* %73, i32 %74)
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %125, %64
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %128

80:                                               ; preds = %76
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i64 %85
  store %struct.TYPE_22__* %86, %struct.TYPE_22__** %16, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %125

94:                                               ; preds = %80
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %97, i32 %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = call %struct.TYPE_20__* @zap_name_alloc(%struct.TYPE_19__* %102, i64* %105, i32 0)
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %17, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @fzap_add_cd(%struct.TYPE_20__* %107, i32 8, i32 1, i32* %109, i32 %112, i8* %113, i32* %114)
  store i32 %115, i32* %10, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  store %struct.TYPE_19__* %118, %struct.TYPE_19__** %11, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %120 = call i32 @zap_name_free(%struct.TYPE_20__* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %94
  br label %128

124:                                              ; preds = %94
  br label %125

125:                                              ; preds = %124, %93
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %76

128:                                              ; preds = %123, %76
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @zio_buf_free(%struct.TYPE_21__* %129, i32 %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %133 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %133, align 8
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %128, %58
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local %struct.TYPE_21__* @zio_buf_alloc(i32) #1

declare dso_local i32 @bcopy(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @dmu_object_set_blocksize(i32, i64*, i64, i32, i32*) #1

declare dso_local i32 @zio_buf_free(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dprintf(i8*, i64*, i32) #1

declare dso_local i32 @mze_destroy(%struct.TYPE_19__*) #1

declare dso_local i32 @fzap_upgrade(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local %struct.TYPE_20__* @zap_name_alloc(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32 @fzap_add_cd(%struct.TYPE_20__*, i32, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @zap_name_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
