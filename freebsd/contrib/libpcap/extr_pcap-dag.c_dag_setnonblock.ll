; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_setnonblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_setnonblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.pcap_dag* }
%struct.pcap_dag = type { i32, i32 }
%struct.timeval = type { i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dag_get_stream_poll\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"dag_set_stream_poll\00", align 1
@DAGF_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @dag_setnonblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dag_setnonblock(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcap_dag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.pcap_dag*, %struct.pcap_dag** %11, align 8
  store %struct.pcap_dag* %12, %struct.pcap_dag** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @pcap_setnonblock_fd(%struct.TYPE_4__* %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %23 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @dag_get_stream_poll64(i32 %21, i32 %24, i32* %7, %struct.timeval* %8, %struct.timeval* %9)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @pcap_fmt_errmsg_for_errno(i32 %30, i32 %31, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %39

38:                                               ; preds = %34
  store i32 65536, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %44 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @dag_set_stream_poll64(i32 %42, i32 %45, i32 %46, %struct.timeval* %8, %struct.timeval* %9)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @pcap_fmt_errmsg_for_errno(i32 %52, i32 %53, i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* @DAGF_NONBLOCK, align 4
  %61 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %62 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %72

65:                                               ; preds = %56
  %66 = load i32, i32* @DAGF_NONBLOCK, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.pcap_dag*, %struct.pcap_dag** %6, align 8
  %69 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %59
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %49, %27, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @pcap_setnonblock_fd(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @dag_get_stream_poll64(i32, i32, i32*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

declare dso_local i64 @dag_set_stream_poll64(i32, i32, i32, %struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
