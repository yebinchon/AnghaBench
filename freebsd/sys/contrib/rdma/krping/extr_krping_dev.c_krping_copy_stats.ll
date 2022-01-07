; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping_dev.c_krping_copy_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping_dev.c_krping_copy_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krping_stats = type { i32 }
%struct.stats_list_entry = type { %struct.krping_stats* }
%struct.stats_list = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krping_stats*, i8*)* @krping_copy_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krping_copy_stats(%struct.krping_stats* %0, i8* %1) #0 {
  %3 = alloca %struct.krping_stats*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stats_list_entry*, align 8
  %6 = alloca %struct.stats_list*, align 8
  store %struct.krping_stats* %0, %struct.krping_stats** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.stats_list*
  store %struct.stats_list* %8, %struct.stats_list** %6, align 8
  %9 = load i32, i32* @M_DEVBUF, align 4
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call i8* @malloc(i32 8, i32 %9, i32 %12)
  %14 = bitcast i8* %13 to %struct.stats_list_entry*
  store %struct.stats_list_entry* %14, %struct.stats_list_entry** %5, align 8
  %15 = load %struct.stats_list_entry*, %struct.stats_list_entry** %5, align 8
  %16 = icmp eq %struct.stats_list_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.krping_stats*, %struct.krping_stats** %3, align 8
  %20 = icmp ne %struct.krping_stats* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @malloc(i32 4, i32 %22, i32 %25)
  %27 = bitcast i8* %26 to %struct.krping_stats*
  %28 = load %struct.stats_list_entry*, %struct.stats_list_entry** %5, align 8
  %29 = getelementptr inbounds %struct.stats_list_entry, %struct.stats_list_entry* %28, i32 0, i32 0
  store %struct.krping_stats* %27, %struct.krping_stats** %29, align 8
  %30 = load %struct.stats_list_entry*, %struct.stats_list_entry** %5, align 8
  %31 = getelementptr inbounds %struct.stats_list_entry, %struct.stats_list_entry* %30, i32 0, i32 0
  %32 = load %struct.krping_stats*, %struct.krping_stats** %31, align 8
  %33 = icmp eq %struct.krping_stats* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.stats_list_entry*, %struct.stats_list_entry** %5, align 8
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = call i32 @free(%struct.stats_list_entry* %35, i32 %36)
  br label %50

38:                                               ; preds = %21
  %39 = load %struct.stats_list_entry*, %struct.stats_list_entry** %5, align 8
  %40 = getelementptr inbounds %struct.stats_list_entry, %struct.stats_list_entry* %39, i32 0, i32 0
  %41 = load %struct.krping_stats*, %struct.krping_stats** %40, align 8
  %42 = load %struct.krping_stats*, %struct.krping_stats** %3, align 8
  %43 = bitcast %struct.krping_stats* %41 to i8*
  %44 = bitcast %struct.krping_stats* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  br label %45

45:                                               ; preds = %38, %18
  %46 = load %struct.stats_list*, %struct.stats_list** %6, align 8
  %47 = load %struct.stats_list_entry*, %struct.stats_list_entry** %5, align 8
  %48 = load i32, i32* @link, align 4
  %49 = call i32 @STAILQ_INSERT_TAIL(%struct.stats_list* %46, %struct.stats_list_entry* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %34, %17
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.stats_list_entry*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.stats_list*, %struct.stats_list_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
