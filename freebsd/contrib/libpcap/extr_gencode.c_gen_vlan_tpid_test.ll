; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_vlan_tpid_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_vlan_tpid_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@ETHERTYPE_8021Q = common dso_local global i32 0, align 4
@ETHERTYPE_8021AD = common dso_local global i32 0, align 4
@ETHERTYPE_8021QINQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*)* @gen_vlan_tpid_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_vlan_tpid_test(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.block*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @ETHERTYPE_8021Q, align 4
  %7 = call %struct.block* @gen_linktype(i32* %5, i32 %6)
  store %struct.block* %7, %struct.block** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @ETHERTYPE_8021AD, align 4
  %10 = call %struct.block* @gen_linktype(i32* %8, i32 %9)
  store %struct.block* %10, %struct.block** %4, align 8
  %11 = load %struct.block*, %struct.block** %3, align 8
  %12 = load %struct.block*, %struct.block** %4, align 8
  %13 = call i32 @gen_or(%struct.block* %11, %struct.block* %12)
  %14 = load %struct.block*, %struct.block** %4, align 8
  store %struct.block* %14, %struct.block** %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @ETHERTYPE_8021QINQ, align 4
  %17 = call %struct.block* @gen_linktype(i32* %15, i32 %16)
  store %struct.block* %17, %struct.block** %4, align 8
  %18 = load %struct.block*, %struct.block** %3, align 8
  %19 = load %struct.block*, %struct.block** %4, align 8
  %20 = call i32 @gen_or(%struct.block* %18, %struct.block* %19)
  %21 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %21
}

declare dso_local %struct.block* @gen_linktype(i32*, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
