; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_mt_port_cap_subtlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_mt_port_cap_subtlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isis_subtlv_spb_mcid = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"\0A\09       %s subTLV #%u, length: %u\00", align 1
@isis_mt_port_cap_subtlv_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ISIS_SUBTLV_SPB_MCID_MIN_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"\0A\09         MCID: \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0A\09         AUX-MCID: \00", align 1
@ISIS_SUBTLV_SPB_DIGEST_MIN_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\0A\09        RES: %d V: %d A: %d D: %d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\0A\09         Digest: \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0A\09                 \00", align 1
@ISIS_SUBTLV_SPB_BVID_MIN_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"\0A\09           ECT: %08x\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c" BVID: %d, U:%01x M:%01x \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @isis_print_mt_port_cap_subtlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isis_print_mt_port_cap_subtlv(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.isis_subtlv_spb_mcid*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %12

12:                                               ; preds = %175, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %183

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ND_TCHECK2(i32 %17, i32 2)
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %22, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @isis_mt_port_cap_subtlv_values, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @tok2str(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @ND_PRINT(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %15
  br label %184

40:                                               ; preds = %15
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ND_TCHECK2(i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %174 [
    i32 128, label %46
    i32 129, label %76
    i32 130, label %136
  ]

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ISIS_SUBTLV_SPB_MCID_MIN_LEN, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %184

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = bitcast i32* %52 to %struct.isis_subtlv_spb_mcid*
  store %struct.isis_subtlv_spb_mcid* %53, %struct.isis_subtlv_spb_mcid** %10, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str.2 to i32*))
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.isis_subtlv_spb_mcid*, %struct.isis_subtlv_spb_mcid** %10, align 8
  %58 = getelementptr inbounds %struct.isis_subtlv_spb_mcid, %struct.isis_subtlv_spb_mcid* %57, i32 0, i32 1
  %59 = call i32 @isis_print_mcid(i32* %56, i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @ND_PRINT(i32* bitcast ([22 x i8]* @.str.3 to i32*))
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.isis_subtlv_spb_mcid*, %struct.isis_subtlv_spb_mcid** %10, align 8
  %64 = getelementptr inbounds %struct.isis_subtlv_spb_mcid, %struct.isis_subtlv_spb_mcid* %63, i32 0, i32 0
  %65 = call i32 @isis_print_mcid(i32* %62, i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @ISIS_SUBTLV_SPB_MCID_MIN_LEN, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @ISIS_SUBTLV_SPB_MCID_MIN_LEN, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ISIS_SUBTLV_SPB_MCID_MIN_LEN, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %9, align 4
  br label %175

76:                                               ; preds = %40
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @ISIS_SUBTLV_SPB_DIGEST_MIN_LEN, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %184

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 5
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 4
  %89 = and i32 %88, 1
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 2
  %93 = and i32 %92, 3
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @ND_PRINT(i32* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %6, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @ND_PRINT(i32* bitcast ([20 x i8]* @.str.5 to i32*))
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %126, %81
  %105 = load i32, i32* %11, align 4
  %106 = icmp sle i32 %105, 8
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i32*, i32** %5, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @EXTRACT_32BITS(i32* %109)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  %113 = call i32 @ND_PRINT(i32* %112)
  %114 = load i32, i32* %11, align 4
  %115 = srem i32 %114, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 8
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @ND_PRINT(i32* bitcast ([20 x i8]* @.str.7 to i32*))
  br label %123

123:                                              ; preds = %120, %117, %107
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  store i32* %125, i32** %6, align 8
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %104

129:                                              ; preds = %104
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @ISIS_SUBTLV_SPB_DIGEST_MIN_LEN, align 4
  %132 = sub nsw i32 %130, %131
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @ISIS_SUBTLV_SPB_DIGEST_MIN_LEN, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %9, align 4
  br label %175

136:                                              ; preds = %40
  br label %137

137:                                              ; preds = %141, %136
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @ISIS_SUBTLV_SPB_BVID_MIN_LEN, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %173

141:                                              ; preds = %137
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @EXTRACT_32BITS(i32* %143)
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i32*
  %147 = call i32 @ND_PRINT(i32* %146)
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  store i32* %149, i32** %6, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @EXTRACT_16BITS(i32* %151)
  %153 = ashr i32 %152, 4
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @EXTRACT_16BITS(i32* %154)
  %156 = ashr i32 %155, 3
  %157 = and i32 %156, 1
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @EXTRACT_16BITS(i32* %158)
  %160 = ashr i32 %159, 2
  %161 = and i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i32*
  %164 = call i32 @ND_PRINT(i32* %163)
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  store i32* %166, i32** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @ISIS_SUBTLV_SPB_BVID_MIN_LEN, align 4
  %169 = sub nsw i32 %167, %168
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @ISIS_SUBTLV_SPB_BVID_MIN_LEN, align 4
  %172 = sub nsw i32 %170, %171
  store i32 %172, i32* %9, align 4
  br label %137

173:                                              ; preds = %137
  br label %175

174:                                              ; preds = %40
  br label %175

175:                                              ; preds = %174, %173, %129, %51
  %176 = load i32, i32* %9, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** %6, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %7, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %7, align 4
  br label %12

183:                                              ; preds = %12
  store i32 0, i32* %4, align 4
  br label %192

184:                                              ; preds = %80, %50, %39
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.10 to i32*))
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* @tstr, align 4
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i32*
  %191 = call i32 @ND_PRINT(i32* %190)
  store i32 1, i32* %4, align 4
  br label %192

192:                                              ; preds = %184, %183
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @isis_print_mcid(i32*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
