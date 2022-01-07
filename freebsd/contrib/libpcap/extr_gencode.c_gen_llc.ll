; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_llc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_llc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_9__ = type { i32 }

@OR_LINKTYPE = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@OR_LLC = common dso_local global i32 0, align 4
@A_LLC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"'llc' not supported for linktype %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_llc(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.block*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.block*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %45 [
    i32 136, label %9
    i32 128, label %27
    i32 134, label %32
    i32 135, label %35
    i32 137, label %38
    i32 133, label %41
    i32 129, label %41
    i32 132, label %41
    i32 131, label %41
    i32 130, label %41
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = load i32, i32* @OR_LINKTYPE, align 4
  %12 = load i32, i32* @BPF_H, align 4
  %13 = load i32, i32* @ETHERMTU, align 4
  %14 = call %struct.block* @gen_cmp_gt(%struct.TYPE_9__* %10, i32 %11, i32 0, i32 %12, i32 %13)
  store %struct.block* %14, %struct.block** %4, align 8
  %15 = load %struct.block*, %struct.block** %4, align 8
  %16 = call i32 @gen_not(%struct.block* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load i32, i32* @OR_LLC, align 4
  %19 = load i32, i32* @BPF_H, align 4
  %20 = call %struct.block* @gen_cmp(%struct.TYPE_9__* %17, i32 %18, i32 0, i32 %19, i32 65535)
  store %struct.block* %20, %struct.block** %5, align 8
  %21 = load %struct.block*, %struct.block** %5, align 8
  %22 = call i32 @gen_not(%struct.block* %21)
  %23 = load %struct.block*, %struct.block** %4, align 8
  %24 = load %struct.block*, %struct.block** %5, align 8
  %25 = call i32 @gen_and(%struct.block* %23, %struct.block* %24)
  %26 = load %struct.block*, %struct.block** %5, align 8
  store %struct.block* %26, %struct.block** %2, align 8
  br label %51

27:                                               ; preds = %1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load i32, i32* @A_LLC, align 4
  %30 = call %struct.block* @gen_atmtype_abbrev(%struct.TYPE_9__* %28, i32 %29)
  store %struct.block* %30, %struct.block** %4, align 8
  %31 = load %struct.block*, %struct.block** %4, align 8
  store %struct.block* %31, %struct.block** %2, align 8
  br label %51

32:                                               ; preds = %1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = call %struct.block* @gen_true(%struct.TYPE_9__* %33)
  store %struct.block* %34, %struct.block** %2, align 8
  br label %51

35:                                               ; preds = %1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call %struct.block* @gen_true(%struct.TYPE_9__* %36)
  store %struct.block* %37, %struct.block** %2, align 8
  br label %51

38:                                               ; preds = %1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = call %struct.block* @gen_true(%struct.TYPE_9__* %39)
  store %struct.block* %40, %struct.block** %2, align 8
  br label %51

41:                                               ; preds = %1, %1, %1, %1, %1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call %struct.block* @gen_check_802_11_data_frame(%struct.TYPE_9__* %42)
  store %struct.block* %43, %struct.block** %4, align 8
  %44 = load %struct.block*, %struct.block** %4, align 8
  store %struct.block* %44, %struct.block** %2, align 8
  br label %51

45:                                               ; preds = %1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bpf_error(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %9, %27, %32, %35, %38, %41, %45
  %52 = load %struct.block*, %struct.block** %2, align 8
  ret %struct.block* %52
}

declare dso_local %struct.block* @gen_cmp_gt(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_not(%struct.block*) #1

declare dso_local %struct.block* @gen_cmp(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_atmtype_abbrev(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.block* @gen_true(%struct.TYPE_9__*) #1

declare dso_local %struct.block* @gen_check_802_11_data_frame(%struct.TYPE_9__*) #1

declare dso_local i32 @bpf_error(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
