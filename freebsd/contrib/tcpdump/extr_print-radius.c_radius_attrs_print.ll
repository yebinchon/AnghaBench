; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_radius_attrs_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_radius_attrs_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 (%struct.TYPE_8__*, i32*, i32, i64)* }
%struct.TYPE_8__ = type { i32 }
%struct.radius_attr = type { i64, i32 }

@attr_type = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"\0A\09  %s Attribute (%u), length: %u (bogus, must be >= 2)\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"\0A\09  %s Attribute (%u), length: %u (bogus, goes past end of packet)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0A\09  %s Attribute (%u), length: %u, Value: \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32)* @radius_attrs_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_attrs_print(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radius_attr*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.radius_attr*
  store %struct.radius_attr* %10, %struct.radius_attr** %7, align 8
  br label %11

11:                                               ; preds = %150, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %164

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %165

18:                                               ; preds = %14
  %19 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %20 = bitcast %struct.radius_attr* %19 to { i64, i32 }*
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ND_TCHECK(i64 %22, i32 %24)
  %26 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %27 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %18
  %31 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %32 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @attr_type, align 8
  %35 = call i64 @TAM_SIZE(%struct.TYPE_9__* %34)
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @attr_type, align 8
  %39 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %40 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %8, align 8
  br label %46

45:                                               ; preds = %30, %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %46

46:                                               ; preds = %45, %37
  %47 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %48 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %55 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %58 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_8__*
  %62 = call i32 @ND_PRINT(%struct.TYPE_8__* %61)
  br label %171

63:                                               ; preds = %46
  %64 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %65 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %73 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %76 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to %struct.TYPE_8__*
  %80 = call i32 @ND_PRINT(%struct.TYPE_8__* %79)
  br label %171

81:                                               ; preds = %63
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %85 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %88 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to %struct.TYPE_8__*
  %92 = call i32 @ND_PRINT(%struct.TYPE_8__* %91)
  %93 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %94 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @attr_type, align 8
  %97 = call i64 @TAM_SIZE(%struct.TYPE_9__* %96)
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %99, label %135

99:                                               ; preds = %81
  %100 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %101 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %134

104:                                              ; preds = %99
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** @attr_type, align 8
  %106 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %107 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32 (%struct.TYPE_8__*, i32*, i32, i64)*, i32 (%struct.TYPE_8__*, i32*, i32, i64)** %110, align 8
  %112 = icmp ne i32 (%struct.TYPE_8__*, i32*, i32, i64)* %111, null
  br i1 %112, label %113, label %133

113:                                              ; preds = %104
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @attr_type, align 8
  %115 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %116 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32 (%struct.TYPE_8__*, i32*, i32, i64)*, i32 (%struct.TYPE_8__*, i32*, i32, i64)** %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %123 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %122, i64 1
  %124 = bitcast %struct.radius_attr* %123 to i32*
  %125 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %126 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 2
  %129 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %130 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 %120(%struct.TYPE_8__* %121, i32* %124, i32 %128, i64 %131)
  br label %133

133:                                              ; preds = %113, %104
  br label %134

134:                                              ; preds = %133, %99
  br label %135

135:                                              ; preds = %134, %81
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %143 = bitcast %struct.radius_attr* %142 to i32*
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %146 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 2
  %149 = call i32 @print_unknown_data(%struct.TYPE_8__* %141, i32* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %140, %135
  %151 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %152 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sub nsw i32 %154, %153
  store i32 %155, i32* %6, align 4
  %156 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %157 = bitcast %struct.radius_attr* %156 to i8*
  %158 = load %struct.radius_attr*, %struct.radius_attr** %7, align 8
  %159 = getelementptr inbounds %struct.radius_attr, %struct.radius_attr* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  %163 = bitcast i8* %162 to %struct.radius_attr*
  store %struct.radius_attr* %163, %struct.radius_attr** %7, align 8
  br label %11

164:                                              ; preds = %11
  br label %171

165:                                              ; preds = %17
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = load i32, i32* @tstr, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to %struct.TYPE_8__*
  %170 = call i32 @ND_PRINT(%struct.TYPE_8__* %169)
  br label %171

171:                                              ; preds = %165, %164, %69, %51
  ret void
}

declare dso_local i32 @ND_TCHECK(i64, i32) #1

declare dso_local i64 @TAM_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_8__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
