; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf_stats.c___dbuf_stats_hash_table_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf_stats.c___dbuf_stats_hash_table_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_15__, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@zfs_dbuf_state_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [224 x i8] c"%-16s %-8llu %-8lld %-8lld %-8lld %-8llu %-8llu %-5d %-5d %-5lu | %-5d %-5d %-6lld 0x%-6x %-6lu %-8llu %-12llu %-6lu %-6lu %-6lu %-6lu %-6lu %-8llu %-8llu %-8d %-5lu | %-6d %-6d %-8lu %-8lu %-6llu %-6lu %-5lu %-8llu %-8llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dbuf_stats_hash_table_data(i8* %0, i64 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %10 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 128, i1 false)
  %11 = bitcast %struct.TYPE_17__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 64, i1 false)
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %13 = call %struct.TYPE_16__* @DB_DNODE(%struct.TYPE_18__* %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %9, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @zfs_dbuf_state_index, align 4
  %23 = call i32 @arc_buf_info(i64 %21, %struct.TYPE_19__* %7, i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = call i32 @__dmu_object_info_from_dnode(%struct.TYPE_16__* %28, %struct.TYPE_17__* %8)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 %32, 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @spa_name(i32 %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @dmu_objset_id(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = call i32 @dbuf_is_metadata(%struct.TYPE_18__* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 4
  %79 = call i64 @zfs_refcount_count(i32* %78)
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 15
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 14
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 13
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 12
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 11
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = call i64 @zfs_refcount_count(i32* %142)
  %144 = trunc i64 %143 to i32
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i64 @snprintf(i8* %31, i64 %33, i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %44, i32 %49, i32 %53, i32 %57, i32 %62, i32 %67, i32 %73, i32 %76, i32 %80, i32 %82, i32 %84, i32 %87, i32 %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 %113, i32 %116, i32 %119, i32 %121, i32 %124, i32 %126, i32 %128, i32 %131, i32 %134, i32 %137, i32 %140, i32 %144, i32 %147, i32 %150)
  store i64 %151, i64* %5, align 8
  %152 = load i8*, i8** %4, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i64, i64* %5, align 8
  %156 = trunc i64 %155 to i32
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_16__* @DB_DNODE(%struct.TYPE_18__*) #2

declare dso_local i32 @arc_buf_info(i64, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @__dmu_object_info_from_dnode(%struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i8* @spa_name(i32) #2

declare dso_local i64 @dmu_objset_id(i32) #2

declare dso_local i32 @dbuf_is_metadata(%struct.TYPE_18__*) #2

declare dso_local i64 @zfs_refcount_count(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
