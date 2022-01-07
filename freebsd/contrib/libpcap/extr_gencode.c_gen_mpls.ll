; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mpls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@OR_PREVMPLSHDR = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@ETHERTYPE_MPLS = common dso_local global i32 0, align 4
@PPP_MPLS_UCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no MPLS support for data link type %d\00", align 1
@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_mpls(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load i32, i32* @OR_PREVMPLSHDR, align 4
  %14 = load i32, i32* @BPF_B, align 4
  %15 = call %struct.block* @gen_mcmp(%struct.TYPE_6__* %12, i32 %13, i32 2, i32 %14, i32 0, i32 1)
  store %struct.block* %15, %struct.block** %5, align 8
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %28 [
    i32 132, label %20
    i32 131, label %20
    i32 130, label %20
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %16, %16, %16, %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = load i32, i32* @ETHERTYPE_MPLS, align 4
  %23 = call %struct.block* @gen_linktype(%struct.TYPE_6__* %21, i32 %22)
  store %struct.block* %23, %struct.block** %5, align 8
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load i32, i32* @PPP_MPLS_UCAST, align 4
  %27 = call %struct.block* @gen_linktype(%struct.TYPE_6__* %25, i32 %26)
  store %struct.block* %27, %struct.block** %5, align 8
  br label %34

28:                                               ; preds = %16
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bpf_error(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %24, %20
  br label %35

35:                                               ; preds = %34, %11
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 12
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = load i32, i32* @OR_LINKPL, align 4
  %43 = load i32, i32* @BPF_W, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.block* @gen_mcmp(%struct.TYPE_6__* %41, i32 %42, i32 0, i32 %43, i32 %44, i32 -4096)
  store %struct.block* %45, %struct.block** %6, align 8
  %46 = load %struct.block*, %struct.block** %5, align 8
  %47 = load %struct.block*, %struct.block** %6, align 8
  %48 = call i32 @gen_and(%struct.block* %46, %struct.block* %47)
  %49 = load %struct.block*, %struct.block** %6, align 8
  store %struct.block* %49, %struct.block** %5, align 8
  br label %50

50:                                               ; preds = %38, %35
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %63
}

declare dso_local %struct.block* @gen_mcmp(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.block* @gen_linktype(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bpf_error(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
