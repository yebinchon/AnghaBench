; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_vlan_bpf_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_vlan_bpf_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.TYPE_4__, %struct.slist* }
%struct.TYPE_4__ = type { i32 }
%struct.slist = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@SKF_AD_OFF = common dso_local global i64 0, align 8
@SKF_AD_VLAN_TAG_PRESENT = common dso_local global i64 0, align 8
@BPF_JEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32)* @gen_vlan_bpf_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_vlan_bpf_extensions(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.block*, align 8
  %8 = alloca %struct.slist*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.block* null, %struct.block** %7, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @BPF_LD, align 4
  %11 = load i32, i32* @BPF_B, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @BPF_ABS, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.slist* @new_stmt(i32* %9, i32 %14)
  store %struct.slist* %15, %struct.slist** %8, align 8
  %16 = load i64, i64* @SKF_AD_OFF, align 8
  %17 = load i64, i64* @SKF_AD_VLAN_TAG_PRESENT, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.slist*, %struct.slist** %8, align 8
  %20 = getelementptr inbounds %struct.slist, %struct.slist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @BPF_JEQ, align 4
  %24 = call i32 @JMP(i32 %23)
  %25 = call %struct.block* @new_block(i32* %22, i32 %24)
  store %struct.block* %25, %struct.block** %5, align 8
  %26 = load %struct.slist*, %struct.slist** %8, align 8
  %27 = load %struct.block*, %struct.block** %5, align 8
  %28 = getelementptr inbounds %struct.block, %struct.block* %27, i32 0, i32 1
  store %struct.slist* %26, %struct.slist** %28, align 8
  %29 = load %struct.block*, %struct.block** %5, align 8
  %30 = getelementptr inbounds %struct.block, %struct.block* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.block* @gen_vlan_tpid_test(i32* %32)
  store %struct.block* %33, %struct.block** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.block* @gen_vlan_vid_test(i32* %37, i32 %38)
  store %struct.block* %39, %struct.block** %7, align 8
  br label %40

40:                                               ; preds = %36, %2
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.block*, %struct.block** %6, align 8
  %43 = call i32 @gen_vlan_patch_tpid_test(i32* %41, %struct.block* %42)
  %44 = load %struct.block*, %struct.block** %5, align 8
  %45 = load %struct.block*, %struct.block** %6, align 8
  %46 = call i32 @gen_or(%struct.block* %44, %struct.block* %45)
  %47 = load %struct.block*, %struct.block** %6, align 8
  store %struct.block* %47, %struct.block** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.block*, %struct.block** %7, align 8
  %53 = call i32 @gen_vlan_patch_vid_test(i32* %51, %struct.block* %52)
  %54 = load %struct.block*, %struct.block** %5, align 8
  %55 = load %struct.block*, %struct.block** %7, align 8
  %56 = call i32 @gen_and(%struct.block* %54, %struct.block* %55)
  %57 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %57, %struct.block** %5, align 8
  br label %58

58:                                               ; preds = %50, %40
  %59 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %59
}

declare dso_local %struct.slist* @new_stmt(i32*, i32) #1

declare dso_local %struct.block* @new_block(i32*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local %struct.block* @gen_vlan_tpid_test(i32*) #1

declare dso_local %struct.block* @gen_vlan_vid_test(i32*, i32) #1

declare dso_local i32 @gen_vlan_patch_tpid_test(i32*, %struct.block*) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_vlan_patch_vid_test(i32*, %struct.block*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
