; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_nbp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_nbp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.atNBP = type { i32, i32 }
%struct.atNBPtuple = type { i32, i32, i32, i32 }

@nbpHeaderSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c" truncated-nbp %u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c" nbp-lkup %d:\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" nbp-brRq %d:\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" [ntup=%d]\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" [enum=%d]\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" [addr=%s.%d]\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" nbp-reply %d:\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c" nbp-0x%x  %d (%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.atNBP*, i32, i32, i32, i32)* @nbp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbp_print(%struct.TYPE_7__* %0, %struct.atNBP* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.atNBP*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.atNBPtuple*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.atNBP* %1, %struct.atNBP** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %17 = bitcast %struct.atNBP* %16 to i32*
  %18 = load i32, i32* @nbpHeaderSize, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = bitcast i32* %20 to %struct.atNBPtuple*
  store %struct.atNBPtuple* %21, %struct.atNBPtuple** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @nbpHeaderSize, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_7__*
  %30 = call i32 @ND_PRINT(%struct.TYPE_7__* %29)
  br label %196

31:                                               ; preds = %6
  %32 = load i32, i32* @nbpHeaderSize, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @nbpHeaderSize, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.TYPE_7__*
  %44 = call i32 @ND_PRINT(%struct.TYPE_7__* %43)
  br label %196

45:                                               ; preds = %31
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %15, align 8
  %49 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %50 = bitcast %struct.atNBPtuple* %49 to i32*
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ugt i32* %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = load i32, i32* @tstr, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_7__*
  %58 = call i32 @ND_PRINT(%struct.TYPE_7__* %57)
  br label %196

59:                                               ; preds = %45
  %60 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %61 = getelementptr inbounds %struct.atNBP, %struct.atNBP* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 240
  store i32 %63, i32* %14, align 4
  switch i32 %63, label %184 [
    i32 130, label %64
    i32 129, label %64
    i32 128, label %154
  ]

64:                                               ; preds = %59, %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 129
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  %70 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %71 = getelementptr inbounds %struct.atNBP, %struct.atNBP* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_7__*
  %75 = call i32 @ND_PRINT(%struct.TYPE_7__* %74)
  %76 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %77 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %76, i64 1
  %78 = bitcast %struct.atNBPtuple* %77 to i32*
  %79 = load i32*, i32** %15, align 8
  %80 = icmp ugt i32* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %64
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = load i32, i32* @tstr, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_7__*
  %86 = call i32 @ND_PRINT(%struct.TYPE_7__* %85)
  br label %196

87:                                               ; preds = %64
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @nbp_name_print(%struct.TYPE_7__* %88, %struct.atNBPtuple* %89, i32* %90)
  %92 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %93 = getelementptr inbounds %struct.atNBP, %struct.atNBP* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 15
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %100 = getelementptr inbounds %struct.atNBP, %struct.atNBP* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 15
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to %struct.TYPE_7__*
  %105 = call i32 @ND_PRINT(%struct.TYPE_7__* %104)
  br label %106

106:                                              ; preds = %97, %87
  %107 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %108 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %114 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to %struct.TYPE_7__*
  %118 = call i32 @ND_PRINT(%struct.TYPE_7__* %117)
  br label %119

119:                                              ; preds = %111, %106
  %120 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %121 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %120, i32 0, i32 2
  %122 = call i32 @EXTRACT_16BITS(i32* %121)
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %119
  %126 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %127 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %133 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %131, %125, %119
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %141 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %140, i32 0, i32 2
  %142 = call i32 @EXTRACT_16BITS(i32* %141)
  %143 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %144 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ataddr_string(%struct.TYPE_7__* %139, i32 %142, i32 %145)
  %147 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %148 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_7__*
  %152 = call i32 @ND_PRINT(%struct.TYPE_7__* %151)
  br label %153

153:                                              ; preds = %137, %131
  br label %196

154:                                              ; preds = %59
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %157 = getelementptr inbounds %struct.atNBP, %struct.atNBP* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.TYPE_7__*
  %161 = call i32 @ND_PRINT(%struct.TYPE_7__* %160)
  %162 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %163 = getelementptr inbounds %struct.atNBP, %struct.atNBP* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 15
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %175, %154
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %14, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %172 = icmp ne %struct.atNBPtuple* %171, null
  br label %173

173:                                              ; preds = %170, %166
  %174 = phi i1 [ false, %166 ], [ %172, %170 ]
  br i1 %174, label %175, label %183

175:                                              ; preds = %173
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = load %struct.atNBPtuple*, %struct.atNBPtuple** %13, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call %struct.atNBPtuple* @nbp_tuple_print(%struct.TYPE_7__* %176, %struct.atNBPtuple* %177, i32* %178, i32 %179, i32 %180, i32 %181)
  store %struct.atNBPtuple* %182, %struct.atNBPtuple** %13, align 8
  br label %166

183:                                              ; preds = %173
  br label %196

184:                                              ; preds = %59
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %187 = getelementptr inbounds %struct.atNBP, %struct.atNBP* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.atNBP*, %struct.atNBP** %8, align 8
  %190 = getelementptr inbounds %struct.atNBP, %struct.atNBP* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to %struct.TYPE_7__*
  %195 = call i32 @ND_PRINT(%struct.TYPE_7__* %194)
  br label %196

196:                                              ; preds = %25, %37, %53, %81, %184, %183, %153
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @nbp_name_print(%struct.TYPE_7__*, %struct.atNBPtuple*, i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ataddr_string(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.atNBPtuple* @nbp_tuple_print(%struct.TYPE_7__*, %struct.atNBPtuple*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
