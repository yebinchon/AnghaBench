; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_destroy.c_process_old_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_destroy.c_process_old_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.process_old_arg = type { i32, i32, i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_22__*, %struct.TYPE_21__*)* @process_old_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_old_cb(i8* %0, %struct.TYPE_22__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.process_old_arg*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.process_old_arg*
  store %struct.process_old_arg* %10, %struct.process_old_arg** %7, align 8
  %11 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %12 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %11, i32 0, i32 6
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %8, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = call i32 @BP_IS_HOLE(%struct.TYPE_22__* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %28 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %27, i32 0, i32 6
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = call %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_18__* %29)
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %26, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %3
  %35 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %36 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %35, i32 0, i32 6
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = call i32 @dsl_deadlist_insert(i32* %38, %struct.TYPE_22__* %39, %struct.TYPE_21__* %40)
  %42 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %43 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %42, i32 0, i32 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %34
  %47 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %48 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %77, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %56 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %55, i32 0, i32 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = call %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_18__* %57)
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %54, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %51
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = call i64 @bp_get_dsize_sync(i32 %65, %struct.TYPE_22__* %66)
  %68 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %69 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %68, i32 0, i32 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = call %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_18__* %70)
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %67
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  br label %77

77:                                               ; preds = %62, %51, %46, %34
  br label %115

78:                                               ; preds = %3
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = call i64 @bp_get_dsize_sync(i32 %81, %struct.TYPE_22__* %82)
  %84 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %85 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %91 = call i64 @BP_GET_PSIZE(%struct.TYPE_22__* %90)
  %92 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %93 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = call i64 @BP_GET_UCSIZE(%struct.TYPE_22__* %98)
  %100 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %101 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.process_old_arg*, %struct.process_old_arg** %7, align 8
  %107 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %114 = call i32 @dsl_free_sync(i32 %108, %struct.TYPE_20__* %109, i32 %112, %struct.TYPE_22__* %113)
  br label %115

115:                                              ; preds = %78, %77
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_HOLE(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_18__*) #1

declare dso_local i32 @dsl_deadlist_insert(i32*, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @bp_get_dsize_sync(i32, %struct.TYPE_22__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_22__*) #1

declare dso_local i64 @BP_GET_UCSIZE(%struct.TYPE_22__*) #1

declare dso_local i32 @dsl_free_sync(i32, %struct.TYPE_20__*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
