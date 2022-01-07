; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dtp.c_dtp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dtp.c_dtp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@DTP_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DTPv%u, length %u\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\0A\09%s (0x%04x) TLV, length %u\00", align 1
@dtp_tlv_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c", 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtp_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DTP_HEADER_LEN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %126

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DTP_HEADER_LEN, align 4
  %19 = call i32 @ND_TCHECK2(i32 %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  %26 = call i32 @ND_PRINT(%struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %132

32:                                               ; preds = %14
  %33 = load i32, i32* @DTP_HEADER_LEN, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %9, align 8
  br label %37

37:                                               ; preds = %114, %32
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = icmp ult i32* %38, %42
  br i1 %43, label %44, label %119

44:                                               ; preds = %37
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ND_TCHECK2(i32 %46, i32 4)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @EXTRACT_16BITS(i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = call i32 @EXTRACT_16BITS(i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %132

56:                                               ; preds = %44
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = load i32, i32* @dtp_tlv_values, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @tok2str(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.TYPE_6__*
  %65 = call i32 @ND_PRINT(%struct.TYPE_6__* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %120

69:                                               ; preds = %56
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ND_TCHECK2(i32 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  switch i32 %74, label %113 [
    i32 131, label %75
    i32 128, label %88
    i32 130, label %88
    i32 129, label %100
  ]

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.3 to %struct.TYPE_6__*))
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @fn_printzp(%struct.TYPE_6__* %78, i32* %80, i32 %82, i32* %86)
  br label %114

88:                                               ; preds = %69, %69
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 5
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %120

92:                                               ; preds = %88
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to %struct.TYPE_6__*
  %99 = call i32 @ND_PRINT(%struct.TYPE_6__* %98)
  br label %114

100:                                              ; preds = %69
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 10
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %120

104:                                              ; preds = %100
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = call i32 @etheraddr_string(%struct.TYPE_6__* %106, i32* %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to %struct.TYPE_6__*
  %112 = call i32 @ND_PRINT(%struct.TYPE_6__* %111)
  br label %114

113:                                              ; preds = %69
  br label %114

114:                                              ; preds = %113, %104, %92, %75
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %9, align 8
  br label %37

119:                                              ; preds = %37
  br label %132

120:                                              ; preds = %103, %91, %68
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = load i32, i32* @istr, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to %struct.TYPE_6__*
  %125 = call i32 @ND_PRINT(%struct.TYPE_6__* %124)
  br label %132

126:                                              ; preds = %13
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = load i32, i32* @tstr, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to %struct.TYPE_6__*
  %131 = call i32 @ND_PRINT(%struct.TYPE_6__* %130)
  br label %132

132:                                              ; preds = %126, %120, %119, %55, %31
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @fn_printzp(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
