; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_stats_request_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_stats_request_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"\0A\09 type %s\00", align 1
@ofpst_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid (0x%04x)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c", flags 0x%04x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (bogus)\00", align 1
@OF_STATS_REQUEST_LEN = common dso_local global i64 0, align 8
@OF_FLOW_STATS_REQUEST_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0A\09 table_id %s\00", align 1
@tableid_str = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c", out_port %s\00", align 1
@ofpp_str = common dso_local global i32 0, align 4
@OF_PORT_STATS_REQUEST_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"\0A\09 port_no %s\00", align 1
@OF_QUEUE_STATS_REQUEST_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c", queue_id %s\00", align 1
@ofpq_str = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32)* @of10_stats_request_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_stats_request_print(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ND_TCHECK2(i32 %16, i32 2)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @EXTRACT_16BITS(i32* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ofpst_str, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @tok2str(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = call i32 @ND_PRINT(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ND_TCHECK2(i32 %30, i32 2)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @ND_PRINT(i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @EXTRACT_16BITS(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  br label %44

44:                                               ; preds = %41, %4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32* %46, i32** %7, align 8
  %47 = load i64, i64* @OF_STATS_REQUEST_LEN, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  switch i32 %52, label %172 [
    i32 133, label %53
    i32 129, label %53
    i32 132, label %59
    i32 134, label %59
    i32 131, label %105
    i32 130, label %129
    i32 128, label %166
  ]

53:                                               ; preds = %44, %44
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %174

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  store i32* %58, i32** %5, align 8
  br label %195

59:                                               ; preds = %44, %44
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @OF_FLOW_STATS_REQUEST_LEN, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %174

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32* @of10_match_print(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %67, i32* %68)
  store i32* %69, i32** %7, align 8
  %70 = icmp eq i32* %65, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32*, i32** %8, align 8
  store i32* %72, i32** %5, align 8
  br label %195

73:                                               ; preds = %64
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ND_TCHECK2(i32 %75, i32 1)
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @tableid_str, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @tok2str(i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32 @ND_PRINT(i32* %83)
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ND_TCHECK2(i32 %88, i32 1)
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32* %91, i32** %7, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ND_TCHECK2(i32 %93, i32 2)
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* @ofpp_str, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @EXTRACT_16BITS(i32* %97)
  %99 = call i32 @tok2str(i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i32*
  %102 = call i32 @ND_PRINT(i32* %101)
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32* %104, i32** %5, align 8
  br label %195

105:                                              ; preds = %44
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @OF_PORT_STATS_REQUEST_LEN, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %174

110:                                              ; preds = %105
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ND_TCHECK2(i32 %112, i32 2)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @ofpp_str, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @EXTRACT_16BITS(i32* %116)
  %118 = call i32 @tok2str(i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i32*
  %121 = call i32 @ND_PRINT(i32* %120)
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  store i32* %123, i32** %7, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ND_TCHECK2(i32 %125, i32 6)
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  store i32* %128, i32** %5, align 8
  br label %195

129:                                              ; preds = %44
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @OF_QUEUE_STATS_REQUEST_LEN, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %174

134:                                              ; preds = %129
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ND_TCHECK2(i32 %136, i32 2)
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* @ofpp_str, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @EXTRACT_16BITS(i32* %140)
  %142 = call i32 @tok2str(i32 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i32*
  %145 = call i32 @ND_PRINT(i32* %144)
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32* %147, i32** %7, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ND_TCHECK2(i32 %149, i32 2)
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  store i32* %152, i32** %7, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ND_TCHECK2(i32 %154, i32 4)
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* @ofpq_str, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @EXTRACT_32BITS(i32* %158)
  %160 = call i32 @tok2str(i32 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i32*
  %163 = call i32 @ND_PRINT(i32* %162)
  %164 = load i32*, i32** %7, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 4
  store i32* %165, i32** %5, align 8
  br label %195

166:                                              ; preds = %44
  %167 = load i32*, i32** %6, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32* @of10_vendor_data_print(i32* %167, i32* %168, i32* %169, i32 %170)
  store i32* %171, i32** %5, align 8
  br label %195

172:                                              ; preds = %44
  %173 = load i32*, i32** %7, align 8
  store i32* %173, i32** %5, align 8
  br label %195

174:                                              ; preds = %133, %109, %63, %56
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* @istr, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i32*
  %179 = call i32 @ND_PRINT(i32* %178)
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @ND_TCHECK2(i32 %181, i32 %182)
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32* %187, i32** %5, align 8
  br label %195

188:                                              ; No predecessors!
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* @tstr, align 4
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i32*
  %193 = call i32 @ND_PRINT(i32* %192)
  %194 = load i32*, i32** %8, align 8
  store i32* %194, i32** %5, align 8
  br label %195

195:                                              ; preds = %188, %174, %172, %166, %134, %110, %73, %71, %57
  %196 = load i32*, i32** %5, align 8
  ret i32* %196
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32* @of10_match_print(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32* @of10_vendor_data_print(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
