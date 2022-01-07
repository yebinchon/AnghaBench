; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_print_ccp_config_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_print_ccp_config_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"\0A\09  %s Option (0x%02x), length %u (length bogus, should be >= 2)\00", align 1
@ccpconfopts_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\0A\09  %s Option (0x%02x), length %u\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" (length bogus, should be >= 3)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c": Version: %u, Dictionary Bits: %u\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c" (length bogus, should be >= 4)\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c": Features: %u, PxP: %s, History: %u, #CTX-ID: %u\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c": Window: %uK, Method: %s (0x%x), MBZ: %u, CHK: %u\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"[|ccp]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @print_ccp_config_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_ccp_config_options(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %181

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK2(i32 %15, i32 2)
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %181

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* @ccpconfopts_values, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @tok2str(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_5__*
  %39 = call i32 @ND_PRINT(%struct.TYPE_5__* %38)
  store i32 0, i32* %4, align 4
  br label %181

40:                                               ; preds = %27
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = load i32, i32* @ccpconfopts_values, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @tok2str(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %struct.TYPE_5__*
  %49 = call i32 @ND_PRINT(%struct.TYPE_5__* %48)
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %151 [
    i32 142, label %51
    i32 135, label %75
    i32 140, label %110
  ]

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([32 x i8]* @.str.3 to %struct.TYPE_5__*))
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %181

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ND_TCHECK(i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 5
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 31
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.TYPE_5__*
  %74 = call i32 @ND_PRINT(%struct.TYPE_5__* %73)
  br label %164

75:                                               ; preds = %40
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([32 x i8]* @.str.5 to %struct.TYPE_5__*))
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %181

82:                                               ; preds = %75
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ND_TCHECK(i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 192
  %92 = ashr i32 %91, 6
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 32
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 31
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to %struct.TYPE_5__*
  %109 = call i32 @ND_PRINT(%struct.TYPE_5__* %108)
  br label %164

110:                                              ; preds = %40
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([32 x i8]* @.str.5 to %struct.TYPE_5__*))
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %181

117:                                              ; preds = %110
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ND_TCHECK(i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 240
  %127 = ashr i32 %126, 4
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 15
  %132 = icmp eq i32 %131, 8
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 15
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 252
  %143 = ashr i32 %142, 2
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 3
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to %struct.TYPE_5__*
  %150 = call i32 @ND_PRINT(%struct.TYPE_5__* %149)
  br label %164

151:                                              ; preds = %40
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %154, 2
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %8, align 4
  %161 = sub nsw i32 %160, 2
  %162 = call i32 @print_unknown_data(%struct.TYPE_5__* %157, i32* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %156, %151
  br label %164

164:                                              ; preds = %163, %117, %82, %58
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %8, align 4
  %174 = sub nsw i32 %173, 2
  %175 = call i32 @print_unknown_data(%struct.TYPE_5__* %170, i32* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %169, %164
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %4, align 4
  br label %181

178:                                              ; No predecessors!
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([7 x i8]* @.str.13 to %struct.TYPE_5__*))
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %178, %176, %113, %78, %54, %30, %26, %12
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_5__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
