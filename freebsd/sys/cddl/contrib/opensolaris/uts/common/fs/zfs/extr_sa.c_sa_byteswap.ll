; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_byteswap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_byteswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i8**, i8* }
%struct.TYPE_17__ = type { i32 }

@SA_MAGIC = common dso_local global i64 0, align 8
@SA_SPILL = common dso_local global i64 0, align 8
@DMU_OT_SA = common dso_local global i32 0, align 4
@sa_byteswap_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa_byteswap(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call %struct.TYPE_15__* @SA_GET_HDR(%struct.TYPE_16__* %10, i64 %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %8, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = call i32 @MUTEX_HELD(i32* %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SA_MAGIC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %110

28:                                               ; preds = %2
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call %struct.TYPE_17__* @SA_GET_DB(%struct.TYPE_16__* %29, i64 %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %6, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @SA_SPILL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @arc_release(i32 %38, i32* null)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @arc_buf_thaw(i32 %42)
  br label %44

44:                                               ; preds = %35, %28
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @BSWAP_32(i64 %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @BSWAP_16(i8* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = call i32 @SA_HDR_SIZE(%struct.TYPE_15__* %57)
  %59 = icmp sgt i32 %58, 8
  br i1 %59, label %60, label %67

60:                                               ; preds = %44
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = call i32 @SA_HDR_SIZE(%struct.TYPE_15__* %61)
  %63 = sub nsw i32 %62, 8
  %64 = ashr i32 %63, 1
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %60, %44
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @BSWAP_16(i8* %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %80, i8** %86, align 8
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %68

90:                                               ; preds = %68
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = load i32, i32* @DMU_OT_SA, align 4
  %96 = load i32, i32* @sa_byteswap_cb, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = call i32 @sa_attr_iter(%struct.TYPE_18__* %93, %struct.TYPE_15__* %94, i32 %95, i32 %96, i32* null, %struct.TYPE_16__* %97)
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @SA_SPILL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %90
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.TYPE_17__*
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @arc_buf_freeze(i32 %108)
  br label %110

110:                                              ; preds = %27, %102, %90
  ret void
}

declare dso_local %struct.TYPE_15__* @SA_GET_HDR(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_17__* @SA_GET_DB(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @arc_release(i32, i32*) #1

declare dso_local i32 @arc_buf_thaw(i32) #1

declare dso_local i64 @BSWAP_32(i64) #1

declare dso_local i8* @BSWAP_16(i8*) #1

declare dso_local i32 @SA_HDR_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @sa_attr_iter(%struct.TYPE_18__*, %struct.TYPE_15__*, i32, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @arc_buf_freeze(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
