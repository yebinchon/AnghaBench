; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"no VLAN match after MPLS\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"no VLAN support for data link type %d\00", align 1
@BPF_SPECIAL_VLAN_HANDLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_vlan(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = call i32 (%struct.TYPE_12__*, i8*, ...) @bpf_error(%struct.TYPE_12__* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %25 [
    i32 134, label %17
    i32 130, label %17
    i32 129, label %17
    i32 133, label %21
    i32 128, label %21
    i32 131, label %21
    i32 132, label %21
  ]

17:                                               ; preds = %13, %13, %13
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.block* @gen_vlan_no_bpf_extensions(%struct.TYPE_12__* %18, i32 %19)
  store %struct.block* %20, %struct.block** %5, align 8
  br label %31

21:                                               ; preds = %13, %13, %13, %13
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.block* @gen_vlan_no_bpf_extensions(%struct.TYPE_12__* %22, i32 %23)
  store %struct.block* %24, %struct.block** %5, align 8
  br label %31

25:                                               ; preds = %13
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.TYPE_12__*, i8*, ...) @bpf_error(%struct.TYPE_12__* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %21, %17
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %36
}

declare dso_local i32 @bpf_error(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.block* @gen_vlan_no_bpf_extensions(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
