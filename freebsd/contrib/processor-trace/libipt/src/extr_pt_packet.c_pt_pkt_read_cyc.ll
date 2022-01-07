; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_cyc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_cyc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_cyc = type { i32 }
%struct.pt_config = type { i32* }

@pte_internal = common dso_local global i32 0, align 4
@pt_opm_cyc_ext = common dso_local global i32 0, align 4
@pt_opm_cyc_shr = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opm_cycx_ext = common dso_local global i32 0, align 4
@pt_opm_cycx_shr = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_cyc(%struct.pt_packet_cyc* %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_cyc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pt_packet_cyc* %0, %struct.pt_packet_cyc** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %15 = load %struct.pt_packet_cyc*, %struct.pt_packet_cyc** %5, align 8
  %16 = icmp ne %struct.pt_packet_cyc* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %22 = icmp ne %struct.pt_config* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %17, %3
  %24 = load i32, i32* @pte_internal, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  store i32* %27, i32** %8, align 8
  %28 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %29 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @pt_opm_cyc_ext, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @pt_opm_cyc_shr, align 4
  %38 = load i32, i32* %11, align 4
  %39 = ashr i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @pt_opm_cyc_shr, align 4
  %42 = sub nsw i32 8, %41
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %76, %26
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ule i32* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @pte_eos, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %91

53:                                               ; preds = %46
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  %56 = load i32, i32* %54, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @pt_opm_cycx_ext, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @pt_opm_cycx_shr, align 4
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* @pt_opm_cycx_shr, align 4
  %67 = sub nsw i32 8, %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 32, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %53
  %74 = load i32, i32* @pte_bad_packet, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %91

76:                                               ; preds = %53
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %43

80:                                               ; preds = %43
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.pt_packet_cyc*, %struct.pt_packet_cyc** %5, align 8
  %83 = getelementptr inbounds %struct.pt_packet_cyc, %struct.pt_packet_cyc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %80, %73, %50, %23
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
