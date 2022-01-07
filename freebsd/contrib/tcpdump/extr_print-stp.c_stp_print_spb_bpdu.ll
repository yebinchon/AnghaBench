; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-stp.c_stp_print_spb_bpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-stp.c_stp_print_spb_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.stp_bpdu_ = type { i32 }

@SPB_BPDU_AGREEMENT_DIGEST_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\0A\09v4len %d, \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"AUXMCID Name \00", align 1
@SPB_BPDU_CONFIG_NAME_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c", Rev %u,\0A\09\09digest %08x%08x%08x%08x\00", align 1
@SPB_BPDU_CONFIG_REV_OFFSET = common dso_local global i32 0, align 4
@SPB_BPDU_CONFIG_DIGEST_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [201 x i8] c"\0A\09Agreement num %d, Discarded Agreement num %d, Agreement valid-flag %d,\0A\09Restricted role-flag: %d, Format id %d cap %d, Convention id %d cap %d,\0A\09Edge count %d, Agreement digest %08x%08x%08x%08x%08x\0A\00", align 1
@SPB_BPDU_AGREEMENT_OFFSET = common dso_local global i32 0, align 4
@SPB_BPDU_AGREEMENT_FORMAT_OFFSET = common dso_local global i32 0, align 4
@SPB_BPDU_AGREEMENT_CON_OFFSET = common dso_local global i32 0, align 4
@SPB_BPDU_AGREEMENT_EDGE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.stp_bpdu_*, i32)* @stp_print_spb_bpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stp_print_spb_bpdu(%struct.TYPE_5__* %0, %struct.stp_bpdu_* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.stp_bpdu_*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.stp_bpdu_* %1, %struct.stp_bpdu_** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %223

14:                                               ; preds = %3
  %15 = load %struct.stp_bpdu_*, %struct.stp_bpdu_** %6, align 8
  %16 = bitcast %struct.stp_bpdu_* %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* @SPB_BPDU_AGREEMENT_DIGEST_OFFSET, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = getelementptr inbounds i32, i32* %23, i64 16
  %25 = call i32 @ND_TCHECK_32BITS(i32* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @EXTRACT_16BITS(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_5__*
  %34 = call i32 @ND_PRINT(%struct.TYPE_5__* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([14 x i8]* @.str.1 to %struct.TYPE_5__*))
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* @SPB_BPDU_CONFIG_NAME_OFFSET, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @fn_printzp(%struct.TYPE_5__* %37, i32* %44, i32 32, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %14
  br label %222

51:                                               ; preds = %14
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @SPB_BPDU_CONFIG_REV_OFFSET, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @EXTRACT_16BITS(i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @SPB_BPDU_CONFIG_DIGEST_OFFSET, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @EXTRACT_32BITS(i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* @SPB_BPDU_CONFIG_DIGEST_OFFSET, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = call i32 @EXTRACT_32BITS(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* @SPB_BPDU_CONFIG_DIGEST_OFFSET, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = call i32 @EXTRACT_32BITS(i32* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* @SPB_BPDU_CONFIG_DIGEST_OFFSET, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = getelementptr inbounds i32, i32* %93, i64 12
  %95 = call i32 @EXTRACT_32BITS(i32* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to %struct.TYPE_5__*
  %98 = call i32 @ND_PRINT(%struct.TYPE_5__* %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SPB_BPDU_AGREEMENT_OFFSET, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 6
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @SPB_BPDU_AGREEMENT_OFFSET, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 3
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @SPB_BPDU_AGREEMENT_OFFSET, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 3
  %125 = and i32 %124, 1
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @SPB_BPDU_AGREEMENT_OFFSET, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 2
  %134 = and i32 %133, 1
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @SPB_BPDU_AGREEMENT_FORMAT_OFFSET, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @SPB_BPDU_AGREEMENT_FORMAT_OFFSET, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 255
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @SPB_BPDU_AGREEMENT_CON_OFFSET, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 4
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @SPB_BPDU_AGREEMENT_CON_OFFSET, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 255
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* @SPB_BPDU_AGREEMENT_EDGE_OFFSET, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call i32 @EXTRACT_16BITS(i32* %173)
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* @SPB_BPDU_AGREEMENT_DIGEST_OFFSET, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = call i32 @EXTRACT_32BITS(i32* %181)
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* @SPB_BPDU_AGREEMENT_DIGEST_OFFSET, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = getelementptr inbounds i32, i32* %189, i64 4
  %191 = call i32 @EXTRACT_32BITS(i32* %190)
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* @SPB_BPDU_AGREEMENT_DIGEST_OFFSET, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  %200 = call i32 @EXTRACT_32BITS(i32* %199)
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* @SPB_BPDU_AGREEMENT_DIGEST_OFFSET, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = getelementptr inbounds i32, i32* %207, i64 12
  %209 = call i32 @EXTRACT_32BITS(i32* %208)
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* @SPB_BPDU_AGREEMENT_DIGEST_OFFSET, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = getelementptr inbounds i32, i32* %216, i64 16
  %218 = call i32 @EXTRACT_32BITS(i32* %217)
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to %struct.TYPE_5__*
  %221 = call i32 @ND_PRINT(%struct.TYPE_5__* %220)
  store i32 1, i32* %4, align 4
  br label %223

222:                                              ; preds = %50
  store i32 0, i32* %4, align 4
  br label %223

223:                                              ; preds = %222, %51, %13
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @fn_printzp(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
