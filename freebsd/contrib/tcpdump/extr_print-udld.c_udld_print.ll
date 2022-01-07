; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-udld.c_udld_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-udld.c_udld_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@UDLD_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"UDLDv%u, Code %s (%x), Flags [%s] (0x%02x), length %u\00", align 1
@udld_code_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@udld_flags_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\0A\09Checksum 0x%04x (unverified)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\0A\09%s (0x%04x) TLV, length %u\00", align 1
@udld_tlv_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c", %us\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udld_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @UDLD_HEADER_LEN, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %152

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UDLD_HEADER_LEN, align 4
  %20 = call i32 @ND_TCHECK2(i32 %18, i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @UDLD_EXTRACT_OPCODE(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @UDLD_EXTRACT_VERSION(i32 %26)
  %28 = load i32, i32* @udld_code_values, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @tok2str(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @udld_flags_values, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bittok2str(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_6__*
  %43 = call i32 @ND_PRINT(%struct.TYPE_6__* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %15
  br label %158

49:                                               ; preds = %15
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = call i32 @EXTRACT_16BITS(i32* %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_6__*
  %56 = call i32 @ND_PRINT(%struct.TYPE_6__* %55)
  %57 = load i32, i32* @UDLD_HEADER_LEN, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %10, align 8
  br label %61

61:                                               ; preds = %140, %49
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = icmp ult i32* %62, %66
  br i1 %67, label %68, label %145

68:                                               ; preds = %61
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ND_TCHECK2(i32 %70, i32 4)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @EXTRACT_16BITS(i32* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = call i32 @EXTRACT_16BITS(i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = load i32, i32* @udld_tlv_values, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @tok2str(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_6__*
  %85 = call i32 @ND_PRINT(%struct.TYPE_6__* %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %68
  br label %146

89:                                               ; preds = %68
  %90 = load i32, i32* %9, align 4
  %91 = icmp sle i32 %90, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %146

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 4
  store i32 %95, i32* %9, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32* %97, i32** %10, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @ND_TCHECK2(i32 %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  switch i32 %102, label %139 [
    i32 134, label %103
    i32 130, label %103
    i32 133, label %103
    i32 132, label %110
    i32 131, label %117
    i32 128, label %117
    i32 129, label %128
  ]

103:                                              ; preds = %93, %93, %93
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.6 to %struct.TYPE_6__*))
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @fn_printzp(%struct.TYPE_6__* %106, i32* %107, i32 %108, i32* null)
  br label %140

110:                                              ; preds = %93
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.6 to %struct.TYPE_6__*))
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @fn_printn(%struct.TYPE_6__* %113, i32* %114, i32 %115, i32* null)
  br label %140

117:                                              ; preds = %93, %93
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %146

121:                                              ; preds = %117
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to %struct.TYPE_6__*
  %127 = call i32 @ND_PRINT(%struct.TYPE_6__* %126)
  br label %140

128:                                              ; preds = %93
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 4
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %146

132:                                              ; preds = %128
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @EXTRACT_32BITS(i32* %134)
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to %struct.TYPE_6__*
  %138 = call i32 @ND_PRINT(%struct.TYPE_6__* %137)
  br label %140

139:                                              ; preds = %93
  br label %140

140:                                              ; preds = %139, %132, %121, %110, %103
  %141 = load i32, i32* %9, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %10, align 8
  br label %61

145:                                              ; preds = %61
  br label %158

146:                                              ; preds = %131, %120, %92, %88
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = load i32, i32* @istr, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to %struct.TYPE_6__*
  %151 = call i32 @ND_PRINT(%struct.TYPE_6__* %150)
  br label %158

152:                                              ; preds = %14
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = load i32, i32* @tstr, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to %struct.TYPE_6__*
  %157 = call i32 @ND_PRINT(%struct.TYPE_6__* %156)
  br label %158

158:                                              ; preds = %152, %146, %145, %48
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @UDLD_EXTRACT_OPCODE(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @UDLD_EXTRACT_VERSION(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @fn_printzp(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i32 @fn_printn(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
