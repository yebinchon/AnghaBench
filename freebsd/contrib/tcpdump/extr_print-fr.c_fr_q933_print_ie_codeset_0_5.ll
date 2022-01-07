; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fr.c_fr_q933_print_ie_codeset_0_5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fr.c_fr_q933_print_ie_codeset_0_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid REPORT TYPE IE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s (%u)\00", align 1
@fr_lmi_report_type_ie_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid LINK VERIFY IE\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"TX Seq: %3d, RX Seq: %3d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid DLCI in PVC STATUS IE\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"DLCI %u: status %s%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"New, \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Inactive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*)* @fr_q933_print_ie_codeset_0_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fr_q933_print_ie_codeset_0_5(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %213 [
    i32 131, label %12
    i32 128, label %12
    i32 134, label %45
    i32 130, label %45
    i32 133, label %45
    i32 132, label %70
    i32 129, label %70
  ]

12:                                               ; preds = %4, %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([3 x i8]* @.str to %struct.TYPE_4__*))
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([23 x i8]* @.str.1 to %struct.TYPE_4__*))
  store i32 1, i32* %5, align 4
  br label %214

26:                                               ; preds = %12
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = load i32, i32* @fr_lmi_report_type_ie_values, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tok2str(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_4__*
  %43 = call i32 @ND_PRINT(%struct.TYPE_4__* %42)
  br label %44

44:                                               ; preds = %31, %26
  store i32 1, i32* %5, align 4
  br label %214

45:                                               ; preds = %4, %4, %4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([3 x i8]* @.str to %struct.TYPE_4__*))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([23 x i8]* @.str.4 to %struct.TYPE_4__*))
  store i32 1, i32* %5, align 4
  br label %214

59:                                               ; preds = %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to %struct.TYPE_4__*
  %69 = call i32 @ND_PRINT(%struct.TYPE_4__* %68)
  store i32 1, i32* %5, align 4
  br label %214

70:                                               ; preds = %4, %4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([3 x i8]* @.str to %struct.TYPE_4__*))
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %144, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 128
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %144, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 128
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %144

96:                                               ; preds = %90, %87
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 128
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %144, label %105

105:                                              ; preds = %99
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 128
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %144

111:                                              ; preds = %105, %96
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 5
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 128
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %144, label %120

120:                                              ; preds = %114
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 128
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %144, label %126

126:                                              ; preds = %120
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 128
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %126, %111
  %133 = load i32, i32* %8, align 4
  %134 = icmp sgt i32 %133, 5
  br i1 %134, label %144, label %135

135:                                              ; preds = %132
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 128
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %135, %132, %126, %120, %114, %105, %99, %90, %81, %78
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([30 x i8]* @.str.6 to %struct.TYPE_4__*))
  store i32 1, i32* %5, align 4
  br label %214

147:                                              ; preds = %135
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 63
  %152 = shl i32 %151, 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 120
  %157 = ashr i32 %156, 3
  %158 = or i32 %152, %157
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 4
  br i1 %160, label %161, label %170

161:                                              ; preds = %147
  %162 = load i32, i32* %10, align 4
  %163 = shl i32 %162, 6
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 126
  %168 = ashr i32 %167, 1
  %169 = or i32 %163, %168
  store i32 %169, i32* %10, align 4
  br label %188

170:                                              ; preds = %147
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, 5
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load i32, i32* %10, align 4
  %175 = shl i32 %174, 13
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 127
  %180 = or i32 %175, %179
  %181 = load i32*, i32** %9, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 126
  %185 = ashr i32 %184, 1
  %186 = or i32 %180, %185
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %173, %170
  br label %188

188:                                              ; preds = %187, %161
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 8
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, 2
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)
  %211 = bitcast i8* %210 to %struct.TYPE_4__*
  %212 = call i32 @ND_PRINT(%struct.TYPE_4__* %211)
  store i32 1, i32* %5, align 4
  br label %214

213:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %188, %144, %59, %56, %44, %23
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
