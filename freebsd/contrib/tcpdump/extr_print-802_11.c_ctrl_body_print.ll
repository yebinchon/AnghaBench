; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_ctrl_body_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_ctrl_body_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ctrl_bar_hdr_t = type { i32, i32, i32, i32 }
%struct.ctrl_ba_hdr_t = type { i32 }
%struct.ctrl_ps_poll_hdr_t = type { i32 }
%struct.ctrl_rts_hdr_t = type { i32 }
%struct.ctrl_cts_hdr_t = type { i32 }
%struct.ctrl_ack_hdr_t = type { i32 }
%struct.ctrl_end_hdr_t = type { i32 }
%struct.ctrl_end_ack_hdr_t = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ctrl_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown Ctrl Subtype\00", align 1
@CTRL_BAR_HDRLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c" RA:%s TA:%s CTL(%x) SEQ(%u) \00", align 1
@CTRL_BA_HDRLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" RA:%s \00", align 1
@CTRL_PS_POLL_HDRLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c" AID(%x)\00", align 1
@CTRL_RTS_HDRLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" TA:%s \00", align 1
@CTRL_CTS_HDRLEN = common dso_local global i32 0, align 4
@CTRL_ACK_HDRLEN = common dso_local global i32 0, align 4
@CTRL_END_HDRLEN = common dso_local global i32 0, align 4
@CTRL_END_ACK_HDRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @ctrl_body_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_body_print(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = load i32, i32* @ctrl_str, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @FC_SUBTYPE(i32 %10)
  %12 = call i32 @tok2str(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  %15 = call i32 @ND_PRINT(%struct.TYPE_5__* %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @FC_SUBTYPE(i32 %16)
  switch i32 %17, label %217 [
    i32 132, label %18
    i32 134, label %19
    i32 135, label %57
    i32 129, label %81
    i32 128, label %97
    i32 131, label %121
    i32 136, label %145
    i32 133, label %169
    i32 130, label %193
  ]

18:                                               ; preds = %3
  br label %217

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CTRL_BAR_HDRLEN, align 4
  %23 = call i32 @ND_TTEST2(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %218

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = bitcast i32* %34 to %struct.ctrl_bar_hdr_t*
  %36 = getelementptr inbounds %struct.ctrl_bar_hdr_t, %struct.ctrl_bar_hdr_t* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @etheraddr_string(%struct.TYPE_5__* %33, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = bitcast i32* %40 to %struct.ctrl_bar_hdr_t*
  %42 = getelementptr inbounds %struct.ctrl_bar_hdr_t, %struct.ctrl_bar_hdr_t* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @etheraddr_string(%struct.TYPE_5__* %39, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = bitcast i32* %45 to %struct.ctrl_bar_hdr_t*
  %47 = getelementptr inbounds %struct.ctrl_bar_hdr_t, %struct.ctrl_bar_hdr_t* %46, i32 0, i32 1
  %48 = call i32 @EXTRACT_LE_16BITS(i32* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %49 to %struct.ctrl_bar_hdr_t*
  %51 = getelementptr inbounds %struct.ctrl_bar_hdr_t, %struct.ctrl_bar_hdr_t* %50, i32 0, i32 0
  %52 = call i32 @EXTRACT_LE_16BITS(i32* %51)
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_5__*
  %55 = call i32 @ND_PRINT(%struct.TYPE_5__* %54)
  br label %56

56:                                               ; preds = %31, %26
  br label %217

57:                                               ; preds = %3
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CTRL_BA_HDRLEN, align 4
  %61 = call i32 @ND_TTEST2(i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %218

64:                                               ; preds = %57
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = bitcast i32* %72 to %struct.ctrl_ba_hdr_t*
  %74 = getelementptr inbounds %struct.ctrl_ba_hdr_t, %struct.ctrl_ba_hdr_t* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @etheraddr_string(%struct.TYPE_5__* %71, i32 %75)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to %struct.TYPE_5__*
  %79 = call i32 @ND_PRINT(%struct.TYPE_5__* %78)
  br label %80

80:                                               ; preds = %69, %64
  br label %217

81:                                               ; preds = %3
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CTRL_PS_POLL_HDRLEN, align 4
  %85 = call i32 @ND_TTEST2(i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %218

88:                                               ; preds = %81
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = bitcast i32* %90 to %struct.ctrl_ps_poll_hdr_t*
  %92 = getelementptr inbounds %struct.ctrl_ps_poll_hdr_t, %struct.ctrl_ps_poll_hdr_t* %91, i32 0, i32 0
  %93 = call i32 @EXTRACT_LE_16BITS(i32* %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_5__*
  %96 = call i32 @ND_PRINT(%struct.TYPE_5__* %95)
  br label %217

97:                                               ; preds = %3
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CTRL_RTS_HDRLEN, align 4
  %101 = call i32 @ND_TTEST2(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %218

104:                                              ; preds = %97
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = bitcast i32* %112 to %struct.ctrl_rts_hdr_t*
  %114 = getelementptr inbounds %struct.ctrl_rts_hdr_t, %struct.ctrl_rts_hdr_t* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @etheraddr_string(%struct.TYPE_5__* %111, i32 %115)
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to %struct.TYPE_5__*
  %119 = call i32 @ND_PRINT(%struct.TYPE_5__* %118)
  br label %120

120:                                              ; preds = %109, %104
  br label %217

121:                                              ; preds = %3
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CTRL_CTS_HDRLEN, align 4
  %125 = call i32 @ND_TTEST2(i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %218

128:                                              ; preds = %121
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = bitcast i32* %136 to %struct.ctrl_cts_hdr_t*
  %138 = getelementptr inbounds %struct.ctrl_cts_hdr_t, %struct.ctrl_cts_hdr_t* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @etheraddr_string(%struct.TYPE_5__* %135, i32 %139)
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to %struct.TYPE_5__*
  %143 = call i32 @ND_PRINT(%struct.TYPE_5__* %142)
  br label %144

144:                                              ; preds = %133, %128
  br label %217

145:                                              ; preds = %3
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CTRL_ACK_HDRLEN, align 4
  %149 = call i32 @ND_TTEST2(i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %218

152:                                              ; preds = %145
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = bitcast i32* %160 to %struct.ctrl_ack_hdr_t*
  %162 = getelementptr inbounds %struct.ctrl_ack_hdr_t, %struct.ctrl_ack_hdr_t* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @etheraddr_string(%struct.TYPE_5__* %159, i32 %163)
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to %struct.TYPE_5__*
  %167 = call i32 @ND_PRINT(%struct.TYPE_5__* %166)
  br label %168

168:                                              ; preds = %157, %152
  br label %217

169:                                              ; preds = %3
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CTRL_END_HDRLEN, align 4
  %173 = call i32 @ND_TTEST2(i32 %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %218

176:                                              ; preds = %169
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = bitcast i32* %184 to %struct.ctrl_end_hdr_t*
  %186 = getelementptr inbounds %struct.ctrl_end_hdr_t, %struct.ctrl_end_hdr_t* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @etheraddr_string(%struct.TYPE_5__* %183, i32 %187)
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to %struct.TYPE_5__*
  %191 = call i32 @ND_PRINT(%struct.TYPE_5__* %190)
  br label %192

192:                                              ; preds = %181, %176
  br label %217

193:                                              ; preds = %3
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @CTRL_END_ACK_HDRLEN, align 4
  %197 = call i32 @ND_TTEST2(i32 %195, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %193
  store i32 0, i32* %4, align 4
  br label %218

200:                                              ; preds = %193
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %200
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = bitcast i32* %208 to %struct.ctrl_end_ack_hdr_t*
  %210 = getelementptr inbounds %struct.ctrl_end_ack_hdr_t, %struct.ctrl_end_ack_hdr_t* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @etheraddr_string(%struct.TYPE_5__* %207, i32 %211)
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to %struct.TYPE_5__*
  %215 = call i32 @ND_PRINT(%struct.TYPE_5__* %214)
  br label %216

216:                                              ; preds = %205, %200
  br label %217

217:                                              ; preds = %3, %216, %192, %168, %144, %120, %88, %80, %56, %18
  store i32 1, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %199, %175, %151, %127, %103, %87, %63, %25
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @FC_SUBTYPE(i32) #1

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
