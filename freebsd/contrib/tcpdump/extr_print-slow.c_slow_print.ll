; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-slow.c_slow_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-slow.c_slow_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@LACP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"LACP version %u packet not supported\00", align 1
@MARKER_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"MARKER version %u packet not supported\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%sv%u, length %u\00", align 1
@slow_proto_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"unknown (%u)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s, length %u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" (packet is too short)\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\0A\09\09 packet is too short\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c" (packet exceeded snapshot)\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\0A\09\09 packet exceeded snapshot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slow_print(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %128

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ND_TCHECK(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %66 [
    i32 130, label %19
    i32 129, label %42
    i32 128, label %65
  ]

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %128

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ND_TCHECK(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LACP_VERSION, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_7__*
  %40 = call i32 @ND_PRINT(%struct.TYPE_7__* %39)
  br label %151

41:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %67

42:                                               ; preds = %12
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %128

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ND_TCHECK(i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MARKER_VERSION, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.TYPE_7__*
  %63 = call i32 @ND_PRINT(%struct.TYPE_7__* %62)
  br label %151

64:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  br label %67

65:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %67

66:                                               ; preds = %12
  store i32 -1, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %65, %64, %41
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = load i32, i32* @slow_proto_values, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @tok2str(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.TYPE_7__*
  %81 = call i32 @ND_PRINT(%struct.TYPE_7__* %80)
  br label %91

82:                                               ; preds = %67
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load i32, i32* @slow_proto_values, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @tok2str(i32 %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to %struct.TYPE_7__*
  %90 = call i32 @ND_PRINT(%struct.TYPE_7__* %89)
  br label %91

91:                                               ; preds = %82, %70
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @print_unknown_data(%struct.TYPE_7__* %95, i32* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %151

99:                                               ; preds = %91
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %151

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  switch i32 %106, label %107 [
    i32 128, label %108
    i32 130, label %117
    i32 129, label %117
  ]

107:                                              ; preds = %105
  br label %127

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32* %112, i32** %5, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @slow_oam_print(%struct.TYPE_7__* %113, i32* %114, i32 %115)
  br label %127

117:                                              ; preds = %105, %105
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, 2
  store i32 %119, i32* %6, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32* %121, i32** %5, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @slow_marker_lacp_print(%struct.TYPE_7__* %122, i32* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %117, %108, %107
  br label %151

128:                                              ; preds = %45, %22, %11
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([23 x i8]* @.str.6 to %struct.TYPE_7__*))
  br label %139

136:                                              ; preds = %128
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([24 x i8]* @.str.7 to %struct.TYPE_7__*))
  br label %139

139:                                              ; preds = %136, %133
  br label %151

140:                                              ; No predecessors!
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([28 x i8]* @.str.8 to %struct.TYPE_7__*))
  br label %151

148:                                              ; preds = %140
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([29 x i8]* @.str.9 to %struct.TYPE_7__*))
  br label %151

151:                                              ; preds = %33, %56, %94, %104, %127, %139, %148, %145
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @slow_oam_print(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @slow_marker_lacp_print(%struct.TYPE_7__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
