; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_mldv2_report_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_mldv2_report_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.icmp6_hdr = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c" [invalid len %d]\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c", %d group record(s)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" [invalid number of groups]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [gaddr %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@mldv2report2str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c" [v2-report-#%d]\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c" [invalid number of sources %d]\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c", %d source(s)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"[|icmp6]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @mldv2_report_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mldv2_report_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icmp6_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.icmp6_hdr*
  store %struct.icmp6_hdr* %14, %struct.icmp6_hdr** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  %22 = call i32 @ND_PRINT(%struct.TYPE_5__* %21)
  br label %187

23:                                               ; preds = %3
  %24 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ND_TCHECK(i32 %28)
  %30 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_5__*
  %39 = call i32 @ND_PRINT(%struct.TYPE_5__* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %183

44:                                               ; preds = %23
  store i32 8, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %179, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %182

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 20
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([28 x i8]* @.str.2 to %struct.TYPE_5__*))
  br label %187

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ND_TCHECK2(i32 %63, i32 4)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = call i32 @ip6addr_string(%struct.TYPE_5__* %66, i32* %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_5__*
  %75 = call i32 @ND_PRINT(%struct.TYPE_5__* %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = load i32, i32* @mldv2report2str, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @tok2str(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_5__*
  %86 = call i32 @ND_PRINT(%struct.TYPE_5__* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %93, %99
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 20
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = add i64 %105, %108
  %110 = icmp ult i64 %102, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %57
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_5__*
  %116 = call i32 @ND_PRINT(%struct.TYPE_5__* %115)
  br label %187

117:                                              ; preds = %57
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to %struct.TYPE_5__*
  %127 = call i32 @ND_PRINT(%struct.TYPE_5__* %126)
  br label %168

128:                                              ; preds = %117
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.8 to %struct.TYPE_5__*))
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %162, %128
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %131
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 20
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = add i64 %139, %142
  %144 = getelementptr inbounds i32, i32* %136, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ND_TCHECK2(i32 %145, i32 4)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 20
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = add i64 %152, %155
  %157 = getelementptr inbounds i32, i32* %149, i64 %156
  %158 = call i32 @ip6addr_string(%struct.TYPE_5__* %148, i32* %157)
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.TYPE_5__*
  %161 = call i32 @ND_PRINT(%struct.TYPE_5__* %160)
  br label %162

162:                                              ; preds = %135
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %131

165:                                              ; preds = %131
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %167 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.9 to %struct.TYPE_5__*))
  br label %168

168:                                              ; preds = %165, %122
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = add i64 20, %171
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %8, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str.10 to %struct.TYPE_5__*))
  br label %179

179:                                              ; preds = %168
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %45

182:                                              ; preds = %45
  br label %183

183:                                              ; preds = %182, %23
  br label %187

184:                                              ; No predecessors!
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([9 x i8]* @.str.11 to %struct.TYPE_5__*))
  br label %187

187:                                              ; preds = %184, %183, %111, %54, %17
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ip6addr_string(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
