; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_ddt_ditto_write_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_ddt_ditto_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_19__*, i32, %struct.TYPE_20__*, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { %struct.TYPE_15__**, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@DDT_PHYS_DITTO = common dso_local global i32 0, align 4
@SPA_DVAS_PER_BP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @zio_ddt_ditto_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zio_ddt_ditto_write_done(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %10 = load i32, i32* @DDT_PHYS_DITTO, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 5
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = call i32* @ddt_select(i32 %18, %struct.TYPE_20__* %19)
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i64 %28
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %8, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %9, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @ddt_enter(i32* %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %42, i64 %44
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = icmp eq %struct.TYPE_15__* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %53, i64 %55
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %1
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ZIO_CHECKSUM_EQUAL(i32 %64, i32 %67)
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SPA_DVAS_PER_BP, align 8
  %74 = icmp slt i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = call i64 @BP_GET_NDVAS(%struct.TYPE_20__* %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = call i64 @BP_IS_GANG(%struct.TYPE_20__* %82)
  %84 = sub nsw i64 %81, %83
  %85 = icmp eq i64 %79, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %61
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ddt_phys_free(i32* %93, %struct.TYPE_18__* %94, %struct.TYPE_17__* %95, i32 %98)
  br label %100

100:                                              ; preds = %92, %61
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = call i32 @ddt_phys_fill(%struct.TYPE_17__* %101, %struct.TYPE_20__* %102)
  br label %104

104:                                              ; preds = %100, %1
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @ddt_exit(i32* %105)
  ret void
}

declare dso_local i32* @ddt_select(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ddt_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ZIO_CHECKSUM_EQUAL(i32, i32) #1

declare dso_local i64 @BP_GET_NDVAS(%struct.TYPE_20__*) #1

declare dso_local i64 @BP_IS_GANG(%struct.TYPE_20__*) #1

declare dso_local i32 @ddt_phys_free(i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ddt_phys_fill(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ddt_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
