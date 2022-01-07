; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_ddt_read_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_ddt_read_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_19__*, i64*, i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@ZIO_CHILD_LOGICAL = common dso_local global i64 0, align 8
@ZIO_CHILD_DDT = common dso_local global i64 0, align 8
@DDT_PHYS_TYPES = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@zio_ddt_child_read_done = common dso_local global i32* null, align 8
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_16__*)* @zio_ddt_read_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @zio_ddt_read_start(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @BP_GET_DEDUP(i32* %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @BP_GET_PSIZE(i32* %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZIO_CHILD_LOGICAL, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 7
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @ZIO_CHILD_DDT, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %122

39:                                               ; preds = %1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call %struct.TYPE_17__* @ddt_select(i32 %42, i32* %43)
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %5, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call %struct.TYPE_19__* @ddt_repair_start(%struct.TYPE_17__* %45, i32* %46)
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %6, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %7, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call %struct.TYPE_18__* @ddt_phys_select(%struct.TYPE_19__* %51, i32* %52)
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %8, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = icmp eq %struct.TYPE_19__* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 6
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %62, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = icmp eq %struct.TYPE_18__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %39
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %2, align 8
  br label %144

67:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %115, %67
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @DDT_PHYS_TYPES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %120

72:                                               ; preds = %68
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = icmp eq %struct.TYPE_18__* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %72
  br label %115

82:                                               ; preds = %77
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = call i32 @ddt_bp_create(i32 %85, i32* %87, %struct.TYPE_18__* %88, i32* %9)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @B_TRUE, align 4
  %98 = call i32 @abd_alloc_for_io(i64 %96, i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32*, i32** @zio_ddt_child_read_done, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = call i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_16__* %107)
  %109 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = call i32 @zio_read(%struct.TYPE_16__* %90, i32 %93, i32* %9, i32 %98, i64 %101, i32* %102, %struct.TYPE_19__* %103, i32 %106, i32 %110, i32* %112)
  %114 = call i32 @zio_nowait(i32 %113)
  br label %115

115:                                              ; preds = %82, %81
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 1
  store %struct.TYPE_18__* %119, %struct.TYPE_18__** %7, align 8
  br label %68

120:                                              ; preds = %68
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %2, align 8
  br label %144

122:                                              ; preds = %1
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = call i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_16__* %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = call i32 @zio_read(%struct.TYPE_16__* %123, i32 %126, i32* %127, i32 %130, i64 %133, i32* null, %struct.TYPE_19__* null, i32 %136, i32 %138, i32* %140)
  %142 = call i32 @zio_nowait(i32 %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %143, %struct.TYPE_16__** %2, align 8
  br label %144

144:                                              ; preds = %122, %120, %65
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %145
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_GET_DEDUP(i32*) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local %struct.TYPE_17__* @ddt_select(i32, i32*) #1

declare dso_local %struct.TYPE_19__* @ddt_repair_start(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_18__* @ddt_phys_select(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ddt_bp_create(i32, i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_read(%struct.TYPE_16__*, i32, i32*, i32, i64, i32*, %struct.TYPE_19__*, i32, i32, i32*) #1

declare dso_local i32 @abd_alloc_for_io(i64, i32) #1

declare dso_local i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
