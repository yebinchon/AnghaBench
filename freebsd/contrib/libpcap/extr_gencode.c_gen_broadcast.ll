; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_broadcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@gen_broadcast.ebroadcast = internal constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@abroadcast = common dso_local global i32 0, align 4
@Q_DST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"not a broadcast link\00", align 1
@PCAP_NETMASK_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"netmask not known, so 'ip broadcast' not supported\00", align 1
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"only link-layer/IP broadcast filters supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_broadcast(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.block*, align 8
  %8 = alloca %struct.block*, align 8
  %9 = alloca %struct.block*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %90 [
    i32 130, label %11
    i32 128, label %11
    i32 129, label %54
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %50 [
    i32 143, label %15
    i32 142, label %15
    i32 141, label %20
    i32 134, label %20
    i32 133, label %20
    i32 140, label %34
    i32 139, label %38
    i32 138, label %42
    i32 131, label %42
    i32 136, label %42
    i32 137, label %42
    i32 132, label %42
    i32 135, label %46
  ]

15:                                               ; preds = %11, %11
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = load i32, i32* @abroadcast, align 4
  %18 = load i32, i32* @Q_DST, align 4
  %19 = call %struct.block* @gen_ahostop(%struct.TYPE_13__* %16, i32 %17, i32 %18)
  store %struct.block* %19, %struct.block** %3, align 8
  br label %93

20:                                               ; preds = %11, %11, %11
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = call %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_13__* %21)
  store %struct.block* %22, %struct.block** %8, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load i32, i32* @Q_DST, align 4
  %25 = call %struct.block* @gen_ehostop(%struct.TYPE_13__* %23, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @gen_broadcast.ebroadcast, i64 0, i64 0), i32 %24)
  store %struct.block* %25, %struct.block** %7, align 8
  %26 = load %struct.block*, %struct.block** %8, align 8
  %27 = icmp ne %struct.block* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.block*, %struct.block** %8, align 8
  %30 = load %struct.block*, %struct.block** %7, align 8
  %31 = call i32 @gen_and(%struct.block* %29, %struct.block* %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %33, %struct.block** %3, align 8
  br label %93

34:                                               ; preds = %11
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = load i32, i32* @Q_DST, align 4
  %37 = call %struct.block* @gen_fhostop(%struct.TYPE_13__* %35, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @gen_broadcast.ebroadcast, i64 0, i64 0), i32 %36)
  store %struct.block* %37, %struct.block** %3, align 8
  br label %93

38:                                               ; preds = %11
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = load i32, i32* @Q_DST, align 4
  %41 = call %struct.block* @gen_thostop(%struct.TYPE_13__* %39, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @gen_broadcast.ebroadcast, i64 0, i64 0), i32 %40)
  store %struct.block* %41, %struct.block** %3, align 8
  br label %93

42:                                               ; preds = %11, %11, %11, %11, %11
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = load i32, i32* @Q_DST, align 4
  %45 = call %struct.block* @gen_wlanhostop(%struct.TYPE_13__* %43, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @gen_broadcast.ebroadcast, i64 0, i64 0), i32 %44)
  store %struct.block* %45, %struct.block** %3, align 8
  br label %93

46:                                               ; preds = %11
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = load i32, i32* @Q_DST, align 4
  %49 = call %struct.block* @gen_ipfchostop(%struct.TYPE_13__* %47, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @gen_broadcast.ebroadcast, i64 0, i64 0), i32 %48)
  store %struct.block* %49, %struct.block** %3, align 8
  br label %93

50:                                               ; preds = %11
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = call i32 @bpf_error(%struct.TYPE_13__* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50
  br label %90

54:                                               ; preds = %2
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PCAP_NETMASK_UNKNOWN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = call i32 @bpf_error(%struct.TYPE_13__* %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %54
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = load i32, i32* @ETHERTYPE_IP, align 4
  %66 = call %struct.block* @gen_linktype(%struct.TYPE_13__* %64, i32 %65)
  store %struct.block* %66, %struct.block** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %69, -1
  store i32 %70, i32* %6, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = load i32, i32* @OR_LINKPL, align 4
  %73 = load i32, i32* @BPF_W, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call %struct.block* @gen_mcmp(%struct.TYPE_13__* %71, i32 %72, i32 16, i32 %73, i32 0, i32 %74)
  store %struct.block* %75, %struct.block** %8, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = load i32, i32* @OR_LINKPL, align 4
  %78 = load i32, i32* @BPF_W, align 4
  %79 = load i32, i32* %6, align 4
  %80 = and i32 -1, %79
  %81 = load i32, i32* %6, align 4
  %82 = call %struct.block* @gen_mcmp(%struct.TYPE_13__* %76, i32 %77, i32 16, i32 %78, i32 %80, i32 %81)
  store %struct.block* %82, %struct.block** %9, align 8
  %83 = load %struct.block*, %struct.block** %8, align 8
  %84 = load %struct.block*, %struct.block** %9, align 8
  %85 = call i32 @gen_or(%struct.block* %83, %struct.block* %84)
  %86 = load %struct.block*, %struct.block** %7, align 8
  %87 = load %struct.block*, %struct.block** %9, align 8
  %88 = call i32 @gen_and(%struct.block* %86, %struct.block* %87)
  %89 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %89, %struct.block** %3, align 8
  br label %93

90:                                               ; preds = %2, %53
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = call i32 @bpf_error(%struct.TYPE_13__* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %63, %46, %42, %38, %34, %32, %15
  %94 = load %struct.block*, %struct.block** %3, align 8
  ret %struct.block* %94
}

declare dso_local %struct.block* @gen_ahostop(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_13__*) #1

declare dso_local %struct.block* @gen_ehostop(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_fhostop(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local %struct.block* @gen_thostop(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local %struct.block* @gen_wlanhostop(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local %struct.block* @gen_ipfchostop(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @bpf_error(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.block* @gen_linktype(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.block* @gen_mcmp(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
