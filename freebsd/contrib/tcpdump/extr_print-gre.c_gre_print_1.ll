; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_print_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_print_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c", Flags [%s]\00", align 1
@gre_flag_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@GRE_KP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c", call %d\00", align 1
@GRE_SP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c", seq %u\00", align 1
@GRE_AP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c", ack %u\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c", no-payload\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c", proto %s (0x%04x)\00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c", length %u\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gre-proto-0x%x\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @gre_print_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gre_print_1(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @EXTRACT_16BITS(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 2
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load i32, i32* @gre_flag_values, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @bittok2str(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_5__*
  %29 = call i32 @ND_PRINT(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %22, %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ND_TCHECK2(i32 %32, i32 2)
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %172

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @EXTRACT_16BITS(i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GRE_KP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %37
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ND_TCHECK2(i32 %50, i32 4)
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %172

55:                                               ; preds = %48
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @EXTRACT_32BITS(i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 65535
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  %63 = call i32 @ND_PRINT(%struct.TYPE_5__* %62)
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 4
  store i32 %65, i32* %7, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32* %67, i32** %5, align 8
  br label %68

68:                                               ; preds = %55, %37
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @GRE_SP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ND_TCHECK2(i32 %75, i32 4)
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %172

80:                                               ; preds = %73
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @EXTRACT_32BITS(i32* %82)
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_5__*
  %86 = call i32 @ND_PRINT(%struct.TYPE_5__* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  store i32* %88, i32** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %80, %68
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @GRE_AP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ND_TCHECK2(i32 %98, i32 4)
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %172

103:                                              ; preds = %96
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @EXTRACT_32BITS(i32* %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to %struct.TYPE_5__*
  %109 = call i32 @ND_PRINT(%struct.TYPE_5__* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32* %111, i32** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %103, %91
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @GRE_SP, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([13 x i8]* @.str.5 to %struct.TYPE_5__*))
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = load i32, i32* @ethertype_values, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @tok2str(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.TYPE_5__*
  %135 = call i32 @ND_PRINT(%struct.TYPE_5__* %134)
  br label %136

136:                                              ; preds = %127, %122
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to %struct.TYPE_5__*
  %141 = call i32 @ND_PRINT(%struct.TYPE_5__* %140)
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @GRE_SP, align 4
  %144 = and i32 %142, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %178

147:                                              ; preds = %136
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.9 to %struct.TYPE_5__*))
  br label %158

155:                                              ; preds = %147
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.10 to %struct.TYPE_5__*))
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %9, align 4
  switch i32 %159, label %165 [
    i32 128, label %160
  ]

160:                                              ; preds = %158
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @ppp_print(%struct.TYPE_5__* %161, i32* %162, i32 %163)
  br label %171

165:                                              ; preds = %158
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to %struct.TYPE_5__*
  %170 = call i32 @ND_PRINT(%struct.TYPE_5__* %169)
  br label %171

171:                                              ; preds = %165, %160
  br label %178

172:                                              ; preds = %102, %79, %54, %36
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = load i32, i32* @tstr, align 4
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to %struct.TYPE_5__*
  %177 = call i32 @ND_PRINT(%struct.TYPE_5__* %176)
  br label %178

178:                                              ; preds = %172, %171, %146
  ret void
}

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ppp_print(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
