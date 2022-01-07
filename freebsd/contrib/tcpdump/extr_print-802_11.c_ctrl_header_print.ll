; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_ctrl_header_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_ctrl_header_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_bar_hdr_t = type { i32, i32, i32, i32 }
%struct.ctrl_ba_hdr_t = type { i32 }
%struct.ctrl_ps_poll_hdr_t = type { i32, i32 }
%struct.ctrl_rts_hdr_t = type { i32, i32 }
%struct.ctrl_cts_hdr_t = type { i32 }
%struct.ctrl_ack_hdr_t = type { i32 }
%struct.ctrl_end_hdr_t = type { i32, i32 }
%struct.ctrl_end_ack_hdr_t = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c" RA:%s TA:%s CTL(%x) SEQ(%u) \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RA:%s \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"BSSID:%s TA:%s \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"RA:%s TA:%s \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"RA:%s BSSID:%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @ctrl_header_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctrl_header_print(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @FC_SUBTYPE(i32 %7)
  switch i32 %8, label %135 [
    i32 133, label %9
    i32 134, label %34
    i32 129, label %45
    i32 128, label %62
    i32 131, label %79
    i32 135, label %90
    i32 132, label %101
    i32 130, label %118
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.ctrl_bar_hdr_t*
  %14 = getelementptr inbounds %struct.ctrl_bar_hdr_t, %struct.ctrl_bar_hdr_t* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @etheraddr_string(i32* %11, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.ctrl_bar_hdr_t*
  %20 = getelementptr inbounds %struct.ctrl_bar_hdr_t, %struct.ctrl_bar_hdr_t* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @etheraddr_string(i32* %17, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to %struct.ctrl_bar_hdr_t*
  %25 = getelementptr inbounds %struct.ctrl_bar_hdr_t, %struct.ctrl_bar_hdr_t* %24, i32 0, i32 1
  %26 = call i32 @EXTRACT_LE_16BITS(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to %struct.ctrl_bar_hdr_t*
  %29 = getelementptr inbounds %struct.ctrl_bar_hdr_t, %struct.ctrl_bar_hdr_t* %28, i32 0, i32 0
  %30 = call i32 @EXTRACT_LE_16BITS(i32* %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @ND_PRINT(i32* %32)
  br label %136

34:                                               ; preds = %3
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = bitcast i32* %37 to %struct.ctrl_ba_hdr_t*
  %39 = getelementptr inbounds %struct.ctrl_ba_hdr_t, %struct.ctrl_ba_hdr_t* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @etheraddr_string(i32* %36, i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  br label %136

45:                                               ; preds = %3
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = bitcast i32* %48 to %struct.ctrl_ps_poll_hdr_t*
  %50 = getelementptr inbounds %struct.ctrl_ps_poll_hdr_t, %struct.ctrl_ps_poll_hdr_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @etheraddr_string(i32* %47, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = bitcast i32* %54 to %struct.ctrl_ps_poll_hdr_t*
  %56 = getelementptr inbounds %struct.ctrl_ps_poll_hdr_t, %struct.ctrl_ps_poll_hdr_t* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @etheraddr_string(i32* %53, i32 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  br label %136

62:                                               ; preds = %3
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = bitcast i32* %65 to %struct.ctrl_rts_hdr_t*
  %67 = getelementptr inbounds %struct.ctrl_rts_hdr_t, %struct.ctrl_rts_hdr_t* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @etheraddr_string(i32* %64, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = bitcast i32* %71 to %struct.ctrl_rts_hdr_t*
  %73 = getelementptr inbounds %struct.ctrl_rts_hdr_t, %struct.ctrl_rts_hdr_t* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @etheraddr_string(i32* %70, i32 %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @ND_PRINT(i32* %77)
  br label %136

79:                                               ; preds = %3
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = bitcast i32* %82 to %struct.ctrl_cts_hdr_t*
  %84 = getelementptr inbounds %struct.ctrl_cts_hdr_t, %struct.ctrl_cts_hdr_t* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @etheraddr_string(i32* %81, i32 %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i32*
  %89 = call i32 @ND_PRINT(i32* %88)
  br label %136

90:                                               ; preds = %3
  %91 = load i32*, i32** %4, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = bitcast i32* %93 to %struct.ctrl_ack_hdr_t*
  %95 = getelementptr inbounds %struct.ctrl_ack_hdr_t, %struct.ctrl_ack_hdr_t* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @etheraddr_string(i32* %92, i32 %96)
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i32*
  %100 = call i32 @ND_PRINT(i32* %99)
  br label %136

101:                                              ; preds = %3
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = bitcast i32* %104 to %struct.ctrl_end_hdr_t*
  %106 = getelementptr inbounds %struct.ctrl_end_hdr_t, %struct.ctrl_end_hdr_t* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @etheraddr_string(i32* %103, i32 %107)
  %109 = load i32*, i32** %4, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = bitcast i32* %110 to %struct.ctrl_end_hdr_t*
  %112 = getelementptr inbounds %struct.ctrl_end_hdr_t, %struct.ctrl_end_hdr_t* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @etheraddr_string(i32* %109, i32 %113)
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i32*
  %117 = call i32 @ND_PRINT(i32* %116)
  br label %136

118:                                              ; preds = %3
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = bitcast i32* %121 to %struct.ctrl_end_ack_hdr_t*
  %123 = getelementptr inbounds %struct.ctrl_end_ack_hdr_t, %struct.ctrl_end_ack_hdr_t* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @etheraddr_string(i32* %120, i32 %124)
  %126 = load i32*, i32** %4, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = bitcast i32* %127 to %struct.ctrl_end_ack_hdr_t*
  %129 = getelementptr inbounds %struct.ctrl_end_ack_hdr_t, %struct.ctrl_end_ack_hdr_t* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @etheraddr_string(i32* %126, i32 %130)
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i32*
  %134 = call i32 @ND_PRINT(i32* %133)
  br label %136

135:                                              ; preds = %3
  br label %136

136:                                              ; preds = %135, %118, %101, %90, %79, %62, %45, %34, %9
  ret void
}

declare dso_local i32 @FC_SUBTYPE(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @etheraddr_string(i32*, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
