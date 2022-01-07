; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.pcap_dag* }
%struct.pcap_dag = type { i64, %struct.pcap_stat, i32 }
%struct.pcap_stat = type { i32 }

@kNullAttributeUuid = common dso_local global i64 0, align 8
@kDagErrNone = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"reading stream drop attribute: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pcap_stat*)* @dag_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dag_stats(%struct.TYPE_3__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pcap_stat*, align 8
  %6 = alloca %struct.pcap_dag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.pcap_dag*, %struct.pcap_dag** %10, align 8
  store %struct.pcap_dag* %11, %struct.pcap_dag** %6, align 8
  %12 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %13 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @kNullAttributeUuid, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %19 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %22 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @dag_config_get_uint32_attribute_ex(i32 %20, i64 %23, i32* %7)
  %25 = load i64, i64* @kDagErrNone, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  br i1 %26, label %28, label %33

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %31 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %41

33:                                               ; preds = %17
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dag_config_strerror(i32 %38)
  %40 = call i32 @pcap_snprintf(i32 %36, i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %3, align 4
  br label %48

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %44 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %45 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %44, i32 0, i32 1
  %46 = bitcast %struct.pcap_stat* %43 to i8*
  %47 = bitcast %struct.pcap_stat* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 8 %47, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @dag_config_get_uint32_attribute_ex(i32, i64, i32*) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @dag_config_strerror(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
