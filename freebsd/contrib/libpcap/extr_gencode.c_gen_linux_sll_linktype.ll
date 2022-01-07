; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_linux_sll_linktype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_linux_sll_linktype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@OR_LINKTYPE = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@LINUX_SLL_P_802_2 = common dso_local global i32 0, align 4
@OR_LLC = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@ETHERTYPE_IPX = common dso_local global i32 0, align 4
@LINUX_SLL_P_802_3 = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@OR_LINKHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_7__*, i32)* @gen_linux_sll_linktype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_linux_sll_linktype(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.block*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %90 [
    i32 129, label %9
    i32 131, label %9
    i32 128, label %9
    i32 130, label %27
    i32 132, label %63
    i32 133, label %63
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = load i32, i32* @OR_LINKTYPE, align 4
  %12 = load i32, i32* @BPF_H, align 4
  %13 = load i32, i32* @LINUX_SLL_P_802_2, align 4
  %14 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %10, i32 %11, i32 0, i32 %12, i32 %13)
  store %struct.block* %14, %struct.block** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load i32, i32* @OR_LLC, align 4
  %17 = load i32, i32* @BPF_H, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %15, i32 %16, i32 0, i32 %17, i32 %21)
  store %struct.block* %22, %struct.block** %7, align 8
  %23 = load %struct.block*, %struct.block** %6, align 8
  %24 = load %struct.block*, %struct.block** %7, align 8
  %25 = call i32 @gen_and(%struct.block* %23, %struct.block* %24)
  %26 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %26, %struct.block** %3, align 8
  br label %119

27:                                               ; preds = %2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = load i32, i32* @OR_LLC, align 4
  %30 = load i32, i32* @BPF_B, align 4
  %31 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %28, i32 %29, i32 0, i32 %30, i32 130)
  store %struct.block* %31, %struct.block** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = load i32, i32* @ETHERTYPE_IPX, align 4
  %34 = call %struct.block* @gen_snap(%struct.TYPE_7__* %32, i32 0, i32 %33)
  store %struct.block* %34, %struct.block** %7, align 8
  %35 = load %struct.block*, %struct.block** %6, align 8
  %36 = load %struct.block*, %struct.block** %7, align 8
  %37 = call i32 @gen_or(%struct.block* %35, %struct.block* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load i32, i32* @OR_LINKTYPE, align 4
  %40 = load i32, i32* @BPF_H, align 4
  %41 = load i32, i32* @LINUX_SLL_P_802_2, align 4
  %42 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %38, i32 %39, i32 0, i32 %40, i32 %41)
  store %struct.block* %42, %struct.block** %6, align 8
  %43 = load %struct.block*, %struct.block** %6, align 8
  %44 = load %struct.block*, %struct.block** %7, align 8
  %45 = call i32 @gen_and(%struct.block* %43, %struct.block* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32, i32* @OR_LINKTYPE, align 4
  %48 = load i32, i32* @BPF_H, align 4
  %49 = load i32, i32* @LINUX_SLL_P_802_3, align 4
  %50 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %46, i32 %47, i32 0, i32 %48, i32 %49)
  store %struct.block* %50, %struct.block** %6, align 8
  %51 = load %struct.block*, %struct.block** %6, align 8
  %52 = load %struct.block*, %struct.block** %7, align 8
  %53 = call i32 @gen_or(%struct.block* %51, %struct.block* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load i32, i32* @OR_LINKTYPE, align 4
  %56 = load i32, i32* @BPF_H, align 4
  %57 = load i32, i32* @ETHERTYPE_IPX, align 4
  %58 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %54, i32 %55, i32 0, i32 %56, i32 %57)
  store %struct.block* %58, %struct.block** %6, align 8
  %59 = load %struct.block*, %struct.block** %6, align 8
  %60 = load %struct.block*, %struct.block** %7, align 8
  %61 = call i32 @gen_or(%struct.block* %59, %struct.block* %60)
  %62 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %62, %struct.block** %3, align 8
  br label %119

63:                                               ; preds = %2, %2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load i32, i32* @OR_LINKTYPE, align 4
  %66 = load i32, i32* @BPF_H, align 4
  %67 = load i32, i32* @LINUX_SLL_P_802_2, align 4
  %68 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %64, i32 %65, i32 0, i32 %66, i32 %67)
  store %struct.block* %68, %struct.block** %6, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 132
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = call %struct.block* @gen_snap(%struct.TYPE_7__* %72, i32 524295, i32 132)
  store %struct.block* %73, %struct.block** %7, align 8
  br label %77

74:                                               ; preds = %63
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = call %struct.block* @gen_snap(%struct.TYPE_7__* %75, i32 0, i32 133)
  store %struct.block* %76, %struct.block** %7, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.block*, %struct.block** %6, align 8
  %79 = load %struct.block*, %struct.block** %7, align 8
  %80 = call i32 @gen_and(%struct.block* %78, %struct.block* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = load i32, i32* @OR_LINKTYPE, align 4
  %83 = load i32, i32* @BPF_H, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %81, i32 %82, i32 0, i32 %83, i32 %84)
  store %struct.block* %85, %struct.block** %6, align 8
  %86 = load %struct.block*, %struct.block** %6, align 8
  %87 = load %struct.block*, %struct.block** %7, align 8
  %88 = call i32 @gen_or(%struct.block* %86, %struct.block* %87)
  %89 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %89, %struct.block** %3, align 8
  br label %119

90:                                               ; preds = %2
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @ETHERMTU, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = load i32, i32* @OR_LINKTYPE, align 4
  %97 = load i32, i32* @BPF_H, align 4
  %98 = load i32, i32* @LINUX_SLL_P_802_2, align 4
  %99 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %95, i32 %96, i32 0, i32 %97, i32 %98)
  store %struct.block* %99, %struct.block** %6, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = load i32, i32* @OR_LINKHDR, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BPF_B, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %100, i32 %101, i32 %105, i32 %106, i32 %107)
  store %struct.block* %108, %struct.block** %7, align 8
  %109 = load %struct.block*, %struct.block** %6, align 8
  %110 = load %struct.block*, %struct.block** %7, align 8
  %111 = call i32 @gen_and(%struct.block* %109, %struct.block* %110)
  %112 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %112, %struct.block** %3, align 8
  br label %119

113:                                              ; preds = %90
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = load i32, i32* @OR_LINKTYPE, align 4
  %116 = load i32, i32* @BPF_H, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %114, i32 %115, i32 0, i32 %116, i32 %117)
  store %struct.block* %118, %struct.block** %3, align 8
  br label %119

119:                                              ; preds = %113, %94, %77, %27, %9
  %120 = load %struct.block*, %struct.block** %3, align 8
  ret %struct.block* %120
}

declare dso_local %struct.block* @gen_cmp(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_snap(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
