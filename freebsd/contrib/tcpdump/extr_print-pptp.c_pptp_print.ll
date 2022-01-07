; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.pptp_hdr = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c": pptp\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" Length=%u\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" CTRL-MSG\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" MGMT-MSG\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" UNKNOWN-MSG-TYPE\00", align 1
@PPTP_MAGIC_COOKIE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c" UNEXPECTED Magic-Cookie!!(%08x)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" Magic-Cookie=%08x\00", align 1
@PPTP_MAX_MSGTYPE_INDEX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c" CTRL_MSGTYPE=%s\00", align 1
@pptp_message_type_string = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c" UNKNOWN_CTRL_MSGTYPE(%u)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pptp_print(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([7 x i8]* @.str to %struct.TYPE_19__*))
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.pptp_hdr*
  store %struct.pptp_hdr* %11, %struct.pptp_hdr** %5, align 8
  %12 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ND_TCHECK(i32 %14)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %22, i32 0, i32 4
  %24 = call i32 @EXTRACT_16BITS(i32* %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_19__*
  %27 = call i32 @ND_PRINT(%struct.TYPE_19__* %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ND_TCHECK(i32 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %38, i32 0, i32 3
  %40 = call i32 @EXTRACT_16BITS(i32* %39)
  switch i32 %40, label %47 [
    i32 129, label %41
    i32 128, label %44
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([10 x i8]* @.str.2 to %struct.TYPE_19__*))
  br label %50

44:                                               ; preds = %37
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([10 x i8]* @.str.3 to %struct.TYPE_19__*))
  br label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = call i32 @ND_PRINT(%struct.TYPE_19__* bitcast ([18 x i8]* @.str.4 to %struct.TYPE_19__*))
  br label %50

50:                                               ; preds = %47, %44, %41
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ND_TCHECK(i32 %54)
  %56 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %56, i32 0, i32 2
  %58 = call i64 @EXTRACT_32BITS(i32* %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @PPTP_MAGIC_COOKIE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = inttoptr i64 %64 to %struct.TYPE_19__*
  %66 = call i32 @ND_PRINT(%struct.TYPE_19__* %65)
  br label %67

67:                                               ; preds = %62, %51
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @PPTP_MAGIC_COOKIE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %67
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_19__*
  %80 = call i32 @ND_PRINT(%struct.TYPE_19__* %79)
  br label %81

81:                                               ; preds = %76, %72
  %82 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %83 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ND_TCHECK(i32 %84)
  %86 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %87 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %86, i32 0, i32 1
  %88 = call i32 @EXTRACT_16BITS(i32* %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @PPTP_MAX_MSGTYPE_INDEX, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %81
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = load i32*, i32** @pptp_message_type_string, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to %struct.TYPE_19__*
  %101 = call i32 @ND_PRINT(%struct.TYPE_19__* %100)
  br label %107

102:                                              ; preds = %81
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = load i64, i64* %7, align 8
  %105 = inttoptr i64 %104 to %struct.TYPE_19__*
  %106 = call i32 @ND_PRINT(%struct.TYPE_19__* %105)
  br label %107

107:                                              ; preds = %102, %93
  %108 = load %struct.pptp_hdr*, %struct.pptp_hdr** %5, align 8
  %109 = getelementptr inbounds %struct.pptp_hdr, %struct.pptp_hdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ND_TCHECK(i32 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 12
  store i32* %113, i32** %4, align 8
  %114 = load i64, i64* %7, align 8
  switch i64 %114, label %175 [
    i64 134, label %115
    i64 135, label %119
    i64 131, label %123
    i64 132, label %127
    i64 141, label %131
    i64 142, label %135
    i64 136, label %139
    i64 137, label %143
    i64 138, label %147
    i64 139, label %151
    i64 140, label %155
    i64 144, label %159
    i64 143, label %163
    i64 130, label %167
    i64 133, label %171
  ]

115:                                              ; preds = %107
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @pptp_sccrq_print(%struct.TYPE_19__* %116, i32* %117)
  br label %176

119:                                              ; preds = %107
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @pptp_sccrp_print(%struct.TYPE_19__* %120, i32* %121)
  br label %176

123:                                              ; preds = %107
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @pptp_stopccrq_print(%struct.TYPE_19__* %124, i32* %125)
  br label %176

127:                                              ; preds = %107
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @pptp_stopccrp_print(%struct.TYPE_19__* %128, i32* %129)
  br label %176

131:                                              ; preds = %107
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @pptp_echorq_print(%struct.TYPE_19__* %132, i32* %133)
  br label %176

135:                                              ; preds = %107
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @pptp_echorp_print(%struct.TYPE_19__* %136, i32* %137)
  br label %176

139:                                              ; preds = %107
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @pptp_ocrq_print(%struct.TYPE_19__* %140, i32* %141)
  br label %176

143:                                              ; preds = %107
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @pptp_ocrp_print(%struct.TYPE_19__* %144, i32* %145)
  br label %176

147:                                              ; preds = %107
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @pptp_icrq_print(%struct.TYPE_19__* %148, i32* %149)
  br label %176

151:                                              ; preds = %107
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @pptp_icrp_print(%struct.TYPE_19__* %152, i32* %153)
  br label %176

155:                                              ; preds = %107
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @pptp_iccn_print(%struct.TYPE_19__* %156, i32* %157)
  br label %176

159:                                              ; preds = %107
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @pptp_ccrq_print(%struct.TYPE_19__* %160, i32* %161)
  br label %176

163:                                              ; preds = %107
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @pptp_cdn_print(%struct.TYPE_19__* %164, i32* %165)
  br label %176

167:                                              ; preds = %107
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @pptp_wen_print(%struct.TYPE_19__* %168, i32* %169)
  br label %176

171:                                              ; preds = %107
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @pptp_sli_print(%struct.TYPE_19__* %172, i32* %173)
  br label %176

175:                                              ; preds = %107
  br label %176

176:                                              ; preds = %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115
  br label %183

177:                                              ; No predecessors!
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %179 = load i32, i32* @tstr, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to %struct.TYPE_19__*
  %182 = call i32 @ND_PRINT(%struct.TYPE_19__* %181)
  br label %183

183:                                              ; preds = %177, %176
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_19__*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @pptp_sccrq_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_sccrp_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_stopccrq_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_stopccrp_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_echorq_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_echorp_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_ocrq_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_ocrp_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_icrq_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_icrp_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_iccn_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_ccrq_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_cdn_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_wen_print(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pptp_sli_print(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
