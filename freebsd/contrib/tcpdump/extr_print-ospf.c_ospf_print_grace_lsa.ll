; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf.c_ospf_print_grace_lsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf.c_ospf_print_grace_lsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"\0A\09    Remaining LS length %u < 4\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\0A\09    %s TLV (%u), length %u, value: \00", align 1
@lsa_opaque_grace_tlv_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0A\09    Bogus length %u > %u\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\0A\09    Bogus length %u != 4\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%us\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\0A\09    Bogus length %u != 1\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s (%u)\00", align 1
@lsa_opaque_grace_tlv_reason_values = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\0A\09      \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ospf_print_grace_lsa(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %144, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %152

13:                                               ; preds = %10
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK2(i32 %15, i32 4)
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  %24 = call i32 @ND_PRINT(%struct.TYPE_6__* %23)
  store i32 -1, i32* %4, align 4
  br label %154

25:                                               ; preds = %13
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @EXTRACT_16BITS(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = call i32 @EXTRACT_16BITS(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load i32, i32* @lsa_opaque_grace_tlv_values, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @tok2str(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_6__*
  %43 = call i32 @ND_PRINT(%struct.TYPE_6__* %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %25
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_6__*
  %53 = call i32 @ND_PRINT(%struct.TYPE_6__* %52)
  store i32 -1, i32* %4, align 4
  br label %154

54:                                               ; preds = %25
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54
  store i32 -1, i32* %4, align 4
  br label %154

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ND_TCHECK2(i32 %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  switch i32 %66, label %120 [
    i32 129, label %67
    i32 128, label %83
    i32 130, label %103
  ]

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 4
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_6__*
  %75 = call i32 @ND_PRINT(%struct.TYPE_6__* %74)
  store i32 -1, i32* %4, align 4
  br label %154

76:                                               ; preds = %67
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @EXTRACT_32BITS(i32* %78)
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.TYPE_6__*
  %82 = call i32 @ND_PRINT(%struct.TYPE_6__* %81)
  br label %134

83:                                               ; preds = %61
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to %struct.TYPE_6__*
  %91 = call i32 @ND_PRINT(%struct.TYPE_6__* %90)
  store i32 -1, i32* %4, align 4
  br label %154

92:                                               ; preds = %83
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = load i32, i32* @lsa_opaque_grace_tlv_reason_values, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @tok2str(i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to %struct.TYPE_6__*
  %102 = call i32 @ND_PRINT(%struct.TYPE_6__* %101)
  br label %134

103:                                              ; preds = %61
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 4
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_6__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_6__* %110)
  store i32 -1, i32* %4, align 4
  br label %154

112:                                              ; preds = %103
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @ipaddr_string(%struct.TYPE_6__* %114, i32* %115)
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to %struct.TYPE_6__*
  %119 = call i32 @ND_PRINT(%struct.TYPE_6__* %118)
  br label %134

120:                                              ; preds = %61
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %123, 1
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @print_unknown_data(%struct.TYPE_6__* %126, i32* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %154

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %120
  br label %134

134:                                              ; preds = %133, %112, %92, %76
  %135 = load i32, i32* %9, align 4
  %136 = srem i32 %135, 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  %140 = srem i32 %139, 4
  %141 = sub nsw i32 4, %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %138, %134
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32*, i32** %6, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %6, align 8
  br label %10

152:                                              ; preds = %10
  store i32 0, i32* %4, align 4
  br label %154

153:                                              ; No predecessors!
  store i32 -1, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %152, %131, %106, %86, %70, %60, %47, %19
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_6__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
