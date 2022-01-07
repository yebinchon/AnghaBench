; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aoe.c_aoev1_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aoe.c_aoev1_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@AOEV1_COMMON_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c", Flags: [%s]\00", align 1
@aoev1_flag_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@AOEV1_FLAG_E = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"\0A\09Error: %s\00", align 1
@aoev1_errcode_str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid (%u)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\0A\09Major: 0x%04x\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c", Minor: 0x%02x\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c", Command: %s\00", align 1
@cmdcode_str = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Unknown (0x%02x)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c", Tag: 0x%08x\00", align 1
@AOEV1_CMD_ISSUE_ATA_COMMAND = common dso_local global i32 0, align 4
@AOEV1_CMD_QUERY_CONFIG_INFORMATION = common dso_local global i32 0, align 4
@AOEV1_CMD_MAC_MASK_LIST = common dso_local global i32 0, align 4
@AOEV1_CMD_RESERVE_RELEASE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @aoev1_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoev1_print(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.TYPE_9__*, i32*, i32)*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AOEV1_COMMON_HDR_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %140

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load i32, i32* @aoev1_flag_str, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @bittok2str(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_9__*
  %29 = call i32 @ND_PRINT(%struct.TYPE_9__* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32* %31, i32** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  br label %162

37:                                               ; preds = %19
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ND_TCHECK2(i32 %39, i32 1)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @AOEV1_FLAG_E, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load i32, i32* @aoev1_errcode_str, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tok2str(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_9__*
  %53 = call i32 @ND_PRINT(%struct.TYPE_9__* %52)
  br label %54

54:                                               ; preds = %45, %37
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ND_TCHECK2(i32 %58, i32 2)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @EXTRACT_16BITS(i32* %61)
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.TYPE_9__*
  %65 = call i32 @ND_PRINT(%struct.TYPE_9__* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32* %67, i32** %5, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ND_TCHECK2(i32 %69, i32 1)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_9__*
  %76 = call i32 @ND_PRINT(%struct.TYPE_9__* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ND_TCHECK2(i32 %80, i32 1)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32* %85, i32** %5, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = load i32, i32* @cmdcode_str, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @tok2str(i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to %struct.TYPE_9__*
  %92 = call i32 @ND_PRINT(%struct.TYPE_9__* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ND_TCHECK2(i32 %94, i32 4)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @EXTRACT_32BITS(i32* %97)
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to %struct.TYPE_9__*
  %101 = call i32 @ND_PRINT(%struct.TYPE_9__* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32* %103, i32** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @AOEV1_CMD_ISSUE_ATA_COMMAND, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %54
  br label %128

108:                                              ; preds = %54
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @AOEV1_CMD_QUERY_CONFIG_INFORMATION, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %126

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @AOEV1_CMD_MAC_MASK_LIST, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %124

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @AOEV1_CMD_RESERVE_RELEASE, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, void (%struct.TYPE_9__*, i32*, i32)* @aoev1_reserve_print, void (%struct.TYPE_9__*, i32*, i32)* null
  br label %124

124:                                              ; preds = %118, %117
  %125 = phi void (%struct.TYPE_9__*, i32*, i32)* [ @aoev1_mac_print, %117 ], [ %123, %118 ]
  br label %126

126:                                              ; preds = %124, %112
  %127 = phi void (%struct.TYPE_9__*, i32*, i32)* [ @aoev1_query_print, %112 ], [ %125, %124 ]
  br label %128

128:                                              ; preds = %126, %107
  %129 = phi void (%struct.TYPE_9__*, i32*, i32)* [ @aoev1_issue_print, %107 ], [ %127, %126 ]
  store void (%struct.TYPE_9__*, i32*, i32)* %129, void (%struct.TYPE_9__*, i32*, i32)** %10, align 8
  %130 = load void (%struct.TYPE_9__*, i32*, i32)*, void (%struct.TYPE_9__*, i32*, i32)** %10, align 8
  %131 = icmp ne void (%struct.TYPE_9__*, i32*, i32)* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load void (%struct.TYPE_9__*, i32*, i32)*, void (%struct.TYPE_9__*, i32*, i32)** %10, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @AOEV1_COMMON_HDR_LEN, align 4
  %138 = sub nsw i32 %136, %137
  call void %133(%struct.TYPE_9__* %134, i32* %135, i32 %138)
  br label %139

139:                                              ; preds = %132, %128
  br label %162

140:                                              ; preds = %18
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = load i32, i32* @istr, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to %struct.TYPE_9__*
  %145 = call i32 @ND_PRINT(%struct.TYPE_9__* %144)
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = call i32 @ND_TCHECK2(i32 %147, i32 %154)
  br label %162

156:                                              ; No predecessors!
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = load i32, i32* @tstr, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.TYPE_9__*
  %161 = call i32 @ND_PRINT(%struct.TYPE_9__* %160)
  br label %162

162:                                              ; preds = %156, %140, %139, %36
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_9__*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local void @aoev1_issue_print(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local void @aoev1_query_print(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local void @aoev1_mac_print(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local void @aoev1_reserve_print(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
