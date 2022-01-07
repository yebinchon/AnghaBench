; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igmp.c_print_igmpv3_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igmp.c_print_igmpv3_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c" [invalid len %d]\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c", %d group record(s)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" [invalid number of groups]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [gaddr %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@igmpv3report2str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c" [v3-report-#%d]\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c" [invalid number of sources %d]\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c", %d source(s)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @print_igmpv3_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_igmpv3_report(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.TYPE_5__*
  %23 = call i32 @ND_PRINT(%struct.TYPE_5__* %22)
  br label %171

24:                                               ; preds = %14
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ND_TCHECK2(i32 %27, i32 2)
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  %31 = call i32 @EXTRACT_16BITS(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_5__*
  %36 = call i32 @ND_PRINT(%struct.TYPE_5__* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %164

41:                                               ; preds = %24
  store i32 8, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %160, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %163

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 8
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([28 x i8]* @.str.2 to %struct.TYPE_5__*))
  br label %171

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ND_TCHECK2(i32 %60, i32 4)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = call i32 @ipaddr_string(%struct.TYPE_5__* %63, i32* %68)
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.TYPE_5__*
  %72 = call i32 @ND_PRINT(%struct.TYPE_5__* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = load i32, i32* @igmpv3report2str, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @tok2str(i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.TYPE_5__*
  %83 = call i32 @ND_PRINT(%struct.TYPE_5__* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = call i32 @EXTRACT_16BITS(i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 8
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %93, 2
  %95 = add nsw i32 %92, %94
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %54
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to %struct.TYPE_5__*
  %102 = call i32 @ND_PRINT(%struct.TYPE_5__* %101)
  br label %171

103:                                              ; preds = %54
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to %struct.TYPE_5__*
  %113 = call i32 @ND_PRINT(%struct.TYPE_5__* %112)
  br label %152

114:                                              ; preds = %103
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.8 to %struct.TYPE_5__*))
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %146, %114
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %117
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 8
  %125 = load i32, i32* %11, align 4
  %126 = shl i32 %125, 2
  %127 = add nsw i32 %124, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %122, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ND_TCHECK2(i32 %130, i32 4)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 8
  %137 = load i32, i32* %11, align 4
  %138 = shl i32 %137, 2
  %139 = add nsw i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  %142 = call i32 @ipaddr_string(%struct.TYPE_5__* %133, i32* %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to %struct.TYPE_5__*
  %145 = call i32 @ND_PRINT(%struct.TYPE_5__* %144)
  br label %146

146:                                              ; preds = %121
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %117

149:                                              ; preds = %117
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.9 to %struct.TYPE_5__*))
  br label %152

152:                                              ; preds = %149, %108
  %153 = load i32, i32* %8, align 4
  %154 = shl i32 %153, 2
  %155 = add nsw i32 8, %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str.10 to %struct.TYPE_5__*))
  br label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %42

163:                                              ; preds = %42
  br label %164

164:                                              ; preds = %163, %24
  br label %171

165:                                              ; No predecessors!
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %167 = load i32, i32* @tstr, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to %struct.TYPE_5__*
  %170 = call i32 @ND_PRINT(%struct.TYPE_5__* %169)
  br label %171

171:                                              ; preds = %165, %164, %97, %51, %18
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
