; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ether_linktype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ether_linktype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@OR_LINKTYPE = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@OR_LLC = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@ETHERTYPE_IPX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32)* @gen_ether_linktype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_ether_linktype(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.block*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.block*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %95 [
    i32 129, label %9
    i32 131, label %9
    i32 128, label %9
    i32 130, label %29
    i32 132, label %66
    i32 133, label %66
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @OR_LINKTYPE, align 4
  %12 = load i32, i32* @BPF_H, align 4
  %13 = load i32, i32* @ETHERMTU, align 4
  %14 = call %struct.block* @gen_cmp_gt(i32* %10, i32 %11, i32 0, i32 %12, i32 %13)
  store %struct.block* %14, %struct.block** %6, align 8
  %15 = load %struct.block*, %struct.block** %6, align 8
  %16 = call i32 @gen_not(%struct.block* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @OR_LLC, align 4
  %19 = load i32, i32* @BPF_H, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.block* @gen_cmp(i32* %17, i32 %18, i32 0, i32 %19, i32 %23)
  store %struct.block* %24, %struct.block** %7, align 8
  %25 = load %struct.block*, %struct.block** %6, align 8
  %26 = load %struct.block*, %struct.block** %7, align 8
  %27 = call i32 @gen_and(%struct.block* %25, %struct.block* %26)
  %28 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %28, %struct.block** %3, align 8
  br label %122

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @OR_LLC, align 4
  %32 = load i32, i32* @BPF_B, align 4
  %33 = call %struct.block* @gen_cmp(i32* %30, i32 %31, i32 0, i32 %32, i32 130)
  store %struct.block* %33, %struct.block** %6, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @OR_LLC, align 4
  %36 = load i32, i32* @BPF_H, align 4
  %37 = call %struct.block* @gen_cmp(i32* %34, i32 %35, i32 0, i32 %36, i32 65535)
  store %struct.block* %37, %struct.block** %7, align 8
  %38 = load %struct.block*, %struct.block** %6, align 8
  %39 = load %struct.block*, %struct.block** %7, align 8
  %40 = call i32 @gen_or(%struct.block* %38, %struct.block* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @ETHERTYPE_IPX, align 4
  %43 = call %struct.block* @gen_snap(i32* %41, i32 0, i32 %42)
  store %struct.block* %43, %struct.block** %6, align 8
  %44 = load %struct.block*, %struct.block** %6, align 8
  %45 = load %struct.block*, %struct.block** %7, align 8
  %46 = call i32 @gen_or(%struct.block* %44, %struct.block* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @OR_LINKTYPE, align 4
  %49 = load i32, i32* @BPF_H, align 4
  %50 = load i32, i32* @ETHERMTU, align 4
  %51 = call %struct.block* @gen_cmp_gt(i32* %47, i32 %48, i32 0, i32 %49, i32 %50)
  store %struct.block* %51, %struct.block** %6, align 8
  %52 = load %struct.block*, %struct.block** %6, align 8
  %53 = call i32 @gen_not(%struct.block* %52)
  %54 = load %struct.block*, %struct.block** %6, align 8
  %55 = load %struct.block*, %struct.block** %7, align 8
  %56 = call i32 @gen_and(%struct.block* %54, %struct.block* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @OR_LINKTYPE, align 4
  %59 = load i32, i32* @BPF_H, align 4
  %60 = load i32, i32* @ETHERTYPE_IPX, align 4
  %61 = call %struct.block* @gen_cmp(i32* %57, i32 %58, i32 0, i32 %59, i32 %60)
  store %struct.block* %61, %struct.block** %6, align 8
  %62 = load %struct.block*, %struct.block** %6, align 8
  %63 = load %struct.block*, %struct.block** %7, align 8
  %64 = call i32 @gen_or(%struct.block* %62, %struct.block* %63)
  %65 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %65, %struct.block** %3, align 8
  br label %122

66:                                               ; preds = %2, %2
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @OR_LINKTYPE, align 4
  %69 = load i32, i32* @BPF_H, align 4
  %70 = load i32, i32* @ETHERMTU, align 4
  %71 = call %struct.block* @gen_cmp_gt(i32* %67, i32 %68, i32 0, i32 %69, i32 %70)
  store %struct.block* %71, %struct.block** %6, align 8
  %72 = load %struct.block*, %struct.block** %6, align 8
  %73 = call i32 @gen_not(%struct.block* %72)
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 132
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32*, i32** %4, align 8
  %78 = call %struct.block* @gen_snap(i32* %77, i32 524295, i32 132)
  store %struct.block* %78, %struct.block** %7, align 8
  br label %82

79:                                               ; preds = %66
  %80 = load i32*, i32** %4, align 8
  %81 = call %struct.block* @gen_snap(i32* %80, i32 0, i32 133)
  store %struct.block* %81, %struct.block** %7, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.block*, %struct.block** %6, align 8
  %84 = load %struct.block*, %struct.block** %7, align 8
  %85 = call i32 @gen_and(%struct.block* %83, %struct.block* %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @OR_LINKTYPE, align 4
  %88 = load i32, i32* @BPF_H, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call %struct.block* @gen_cmp(i32* %86, i32 %87, i32 0, i32 %88, i32 %89)
  store %struct.block* %90, %struct.block** %6, align 8
  %91 = load %struct.block*, %struct.block** %6, align 8
  %92 = load %struct.block*, %struct.block** %7, align 8
  %93 = call i32 @gen_or(%struct.block* %91, %struct.block* %92)
  %94 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %94, %struct.block** %3, align 8
  br label %122

95:                                               ; preds = %2
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @ETHERMTU, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @OR_LINKTYPE, align 4
  %102 = load i32, i32* @BPF_H, align 4
  %103 = load i32, i32* @ETHERMTU, align 4
  %104 = call %struct.block* @gen_cmp_gt(i32* %100, i32 %101, i32 0, i32 %102, i32 %103)
  store %struct.block* %104, %struct.block** %6, align 8
  %105 = load %struct.block*, %struct.block** %6, align 8
  %106 = call i32 @gen_not(%struct.block* %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @OR_LINKTYPE, align 4
  %109 = load i32, i32* @BPF_B, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call %struct.block* @gen_cmp(i32* %107, i32 %108, i32 2, i32 %109, i32 %110)
  store %struct.block* %111, %struct.block** %7, align 8
  %112 = load %struct.block*, %struct.block** %6, align 8
  %113 = load %struct.block*, %struct.block** %7, align 8
  %114 = call i32 @gen_and(%struct.block* %112, %struct.block* %113)
  %115 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %115, %struct.block** %3, align 8
  br label %122

116:                                              ; preds = %95
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* @OR_LINKTYPE, align 4
  %119 = load i32, i32* @BPF_H, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call %struct.block* @gen_cmp(i32* %117, i32 %118, i32 0, i32 %119, i32 %120)
  store %struct.block* %121, %struct.block** %3, align 8
  br label %122

122:                                              ; preds = %116, %99, %82, %29, %9
  %123 = load %struct.block*, %struct.block** %3, align 8
  ret %struct.block* %123
}

declare dso_local %struct.block* @gen_cmp_gt(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_not(%struct.block*) #1

declare dso_local %struct.block* @gen_cmp(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_snap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
