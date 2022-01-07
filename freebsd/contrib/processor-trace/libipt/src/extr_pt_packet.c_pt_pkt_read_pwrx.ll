; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_pwrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet.c_pt_pkt_read_pwrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_pwrx = type { i32, i32, i32, i8*, i8* }
%struct.pt_config = type { i8** }

@pte_internal = common dso_local global i32 0, align 4
@ptps_pwrx = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opcs_pwrx = common dso_local global i32 0, align 4
@pt_pl_pwrx_size = common dso_local global i32 0, align 4
@pt_pl_pwrx_last_mask = common dso_local global i32 0, align 4
@pt_pl_pwrx_last_shr = common dso_local global i32 0, align 4
@pt_pl_pwrx_deepest_mask = common dso_local global i32 0, align 4
@pt_pl_pwrx_deepest_shr = common dso_local global i32 0, align 4
@pt_pl_pwrx_wr_int = common dso_local global i32 0, align 4
@pt_pl_pwrx_wr_store = common dso_local global i32 0, align 4
@pt_pl_pwrx_wr_hw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_read_pwrx(%struct.pt_packet_pwrx* %0, i8** %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_pwrx*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_packet_pwrx* %0, %struct.pt_packet_pwrx** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %9 = load %struct.pt_packet_pwrx*, %struct.pt_packet_pwrx** %5, align 8
  %10 = icmp ne %struct.pt_packet_pwrx* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %16 = icmp ne %struct.pt_config* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %11, %3
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %14
  %21 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %22 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i8**, i8*** %6, align 8
  %25 = load i32, i32* @ptps_pwrx, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = icmp ult i8** %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @pte_eos, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %84

32:                                               ; preds = %20
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* @pt_opcs_pwrx, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i32, i32* @pt_pl_pwrx_size, align 4
  %38 = call i32 @pt_pkt_read_value(i8** %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.pt_packet_pwrx*, %struct.pt_packet_pwrx** %5, align 8
  %40 = call i32 @memset(%struct.pt_packet_pwrx* %39, i32 0, i32 32)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @pt_pl_pwrx_last_mask, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @pt_pl_pwrx_last_shr, align 4
  %45 = ashr i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.pt_packet_pwrx*, %struct.pt_packet_pwrx** %5, align 8
  %49 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @pt_pl_pwrx_deepest_mask, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @pt_pl_pwrx_deepest_shr, align 4
  %54 = ashr i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.pt_packet_pwrx*, %struct.pt_packet_pwrx** %5, align 8
  %58 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @pt_pl_pwrx_wr_int, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %32
  %64 = load %struct.pt_packet_pwrx*, %struct.pt_packet_pwrx** %5, align 8
  %65 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %32
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @pt_pl_pwrx_wr_store, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.pt_packet_pwrx*, %struct.pt_packet_pwrx** %5, align 8
  %73 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @pt_pl_pwrx_wr_hw, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.pt_packet_pwrx*, %struct.pt_packet_pwrx** %5, align 8
  %81 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* @ptps_pwrx, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %29, %17
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @pt_pkt_read_value(i8**, i32) #1

declare dso_local i32 @memset(%struct.pt_packet_pwrx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
