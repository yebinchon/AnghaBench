; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf.c_ospf_decode_lls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf.c_ospf_decode_lls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ospfhdr = type { i32, i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@OSPF_OPTION_L = common dso_local global i32 0, align 4
@OSPF_AUTH_MD5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"\0A\09[LLS truncated]\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\0A\09  LLS: checksum: 0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c", length: %u\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0A\09    %s (%u)\00", align 1
@ospf_lls_tlv_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Unknown TLV\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" [should be 4]\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\0A\09      Options: 0x%08x [%s]\00", align 1
@ospf_lls_eo_options = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" [should be 20]\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\0A\09      Sequence number: 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ospfhdr*, i32)* @ospf_decode_lls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ospf_decode_lls(i32* %0, %struct.ospfhdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ospfhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.ospfhdr* %1, %struct.ospfhdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %15 = getelementptr inbounds %struct.ospfhdr, %struct.ospfhdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %37 [
    i32 128, label %17
    i32 129, label %27
  ]

17:                                               ; preds = %3
  %18 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %19 = getelementptr inbounds %struct.ospfhdr, %struct.ospfhdr* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OSPF_OPTION_L, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %188

26:                                               ; preds = %17
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %29 = getelementptr inbounds %struct.ospfhdr, %struct.ospfhdr* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OSPF_OPTION_L, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %188

36:                                               ; preds = %27
  br label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %188

38:                                               ; preds = %36, %26
  %39 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %40 = getelementptr inbounds %struct.ospfhdr, %struct.ospfhdr* %39, i32 0, i32 3
  %41 = call i64 @EXTRACT_16BITS(i32* %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %44 = bitcast %struct.ospfhdr* %43 to i32*
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %8, align 8
  %48 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %49 = bitcast %struct.ospfhdr* %48 to i32*
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %9, align 8
  %53 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %54 = getelementptr inbounds %struct.ospfhdr, %struct.ospfhdr* %53, i32 0, i32 2
  %55 = call i64 @EXTRACT_16BITS(i32* %54)
  %56 = load i64, i64* @OSPF_AUTH_MD5, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %38
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %61 = getelementptr inbounds %struct.ospfhdr, %struct.ospfhdr* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  store i32* %66, i32** %8, align 8
  %67 = load %struct.ospfhdr*, %struct.ospfhdr** %6, align 8
  %68 = getelementptr inbounds %struct.ospfhdr, %struct.ospfhdr* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %58, %38
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str to i32*))
  store i32 1, i32* %4, align 4
  br label %188

81:                                               ; preds = %74
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ND_TCHECK2(i32 %83, i32 2)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i64 @EXTRACT_16BITS(i32* %86)
  %88 = trunc i64 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i32*
  %91 = call i32 @ND_PRINT(i32* %90)
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ND_TCHECK2(i32 %95, i32 2)
  %97 = load i32*, i32** %8, align 8
  %98 = call i64 @EXTRACT_16BITS(i32* %97)
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @ND_PRINT(i32* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %8, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ND_TCHECK(i32 %108)
  br label %110

110:                                              ; preds = %181, %81
  %111 = load i32*, i32** %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = icmp ult i32* %111, %112
  br i1 %113, label %114, label %186

114:                                              ; preds = %110
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ND_TCHECK2(i32 %116, i32 2)
  %118 = load i32*, i32** %8, align 8
  %119 = call i64 @EXTRACT_16BITS(i32* %118)
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %11, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* @ospf_lls_tlv_values, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @tok2str(i32 %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i32*
  %128 = call i32 @ND_PRINT(i32* %127)
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32* %130, i32** %8, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ND_TCHECK2(i32 %132, i32 2)
  %134 = load i32*, i32** %8, align 8
  %135 = call i64 @EXTRACT_16BITS(i32* %134)
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %12, align 4
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i32*
  %141 = call i32 @ND_PRINT(i32* %140)
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32* %143, i32** %8, align 8
  %144 = load i32, i32* %11, align 4
  switch i32 %144, label %181 [
    i32 131, label %145
    i32 130, label %165
  ]

145:                                              ; preds = %114
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 4
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.5 to i32*))
  store i32 4, i32* %12, align 4
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ND_TCHECK2(i32 %153, i32 4)
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @EXTRACT_32BITS(i32* %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @ospf_lls_eo_options, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @bittok2str(i32 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %160)
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i32*
  %164 = call i32 @ND_PRINT(i32* %163)
  br label %181

165:                                              ; preds = %114
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 20
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.8 to i32*))
  store i32 20, i32* %12, align 4
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ND_TCHECK2(i32 %173, i32 4)
  %175 = load i32*, i32** %5, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = call i32 @EXTRACT_32BITS(i32* %176)
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i32*
  %180 = call i32 @ND_PRINT(i32* %179)
  br label %181

181:                                              ; preds = %114, %171, %151
  %182 = load i32, i32* %12, align 4
  %183 = load i32*, i32** %8, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %8, align 8
  br label %110

186:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %188

187:                                              ; No predecessors!
  store i32 1, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %186, %78, %37, %35, %25
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
