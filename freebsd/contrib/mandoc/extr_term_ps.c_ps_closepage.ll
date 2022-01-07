; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_closepage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_closepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i64* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TERMTYPE_PS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"endstream\0Aendobj\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%zu\0Aendobj\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"<<\0A/ProcSet [/PDF /Text]\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"/Font <<\0A\00", align 1
@TERMFONT__MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"/F%d %d 0 R\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c">>\0A>>\0Aendobj\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"/Type /Page\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"/Parent 2 0 R\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"/Resources %zu 0 R\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"/Contents %zu 0 R\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c">>\0Aendobj\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"showpage\0A\00", align 1
@PS_NEWPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*)* @ps_closepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_closepage(%struct.termp* %0) #0 {
  %2 = alloca %struct.termp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %2, align 8
  %6 = load %struct.termp*, %struct.termp** %2, align 8
  %7 = getelementptr inbounds %struct.termp, %struct.termp* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 7
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.termp*, %struct.termp** %2, align 8
  %14 = getelementptr inbounds %struct.termp, %struct.termp* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %12, %1
  %22 = phi i1 [ false, %1 ], [ %20, %12 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.termp*, %struct.termp** %2, align 8
  %26 = load %struct.termp*, %struct.termp** %2, align 8
  %27 = getelementptr inbounds %struct.termp, %struct.termp* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  %30 = load i64*, i64** %29, align 8
  %31 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %30)
  %32 = load i64, i64* @TERMTYPE_PS, align 8
  %33 = load %struct.termp*, %struct.termp** %2, align 8
  %34 = getelementptr inbounds %struct.termp, %struct.termp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %115

37:                                               ; preds = %21
  %38 = load %struct.termp*, %struct.termp** %2, align 8
  %39 = getelementptr inbounds %struct.termp, %struct.termp* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.termp*, %struct.termp** %2, align 8
  %44 = getelementptr inbounds %struct.termp, %struct.termp* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %42, %47
  store i64 %48, i64* %4, align 8
  %49 = load %struct.termp*, %struct.termp** %2, align 8
  %50 = getelementptr inbounds %struct.termp, %struct.termp* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 4
  %55 = load %struct.termp*, %struct.termp** %2, align 8
  %56 = getelementptr inbounds %struct.termp, %struct.termp* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %54, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %5, align 8
  %62 = load %struct.termp*, %struct.termp** %2, align 8
  %63 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.termp*, %struct.termp** %2, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  %67 = call i32 @pdf_obj(%struct.termp* %64, i64 %66)
  %68 = load %struct.termp*, %struct.termp** %2, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  %71 = load %struct.termp*, %struct.termp** %2, align 8
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 2
  %74 = call i32 @pdf_obj(%struct.termp* %71, i64 %73)
  %75 = load %struct.termp*, %struct.termp** %2, align 8
  %76 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.termp*, %struct.termp** %2, align 8
  %78 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %90, %37
  %80 = load i32, i32* %3, align 4
  %81 = load i64, i64* @TERMFONT__MAX, align 8
  %82 = trunc i64 %81 to i32
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.termp*, %struct.termp** %2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 3, %87
  %89 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %79

93:                                               ; preds = %79
  %94 = load %struct.termp*, %struct.termp** %2, align 8
  %95 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %96 = load %struct.termp*, %struct.termp** %2, align 8
  %97 = load i64, i64* %5, align 8
  %98 = add i64 %97, 3
  %99 = call i32 @pdf_obj(%struct.termp* %96, i64 %98)
  %100 = load %struct.termp*, %struct.termp** %2, align 8
  %101 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %102 = load %struct.termp*, %struct.termp** %2, align 8
  %103 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %104 = load %struct.termp*, %struct.termp** %2, align 8
  %105 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %106 = load %struct.termp*, %struct.termp** %2, align 8
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 2
  %109 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %108)
  %110 = load %struct.termp*, %struct.termp** %2, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 %111)
  %113 = load %struct.termp*, %struct.termp** %2, align 8
  %114 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %118

115:                                              ; preds = %21
  %116 = load %struct.termp*, %struct.termp** %2, align 8
  %117 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %93
  %119 = load %struct.termp*, %struct.termp** %2, align 8
  %120 = getelementptr inbounds %struct.termp, %struct.termp* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.termp*, %struct.termp** %2, align 8
  %126 = getelementptr inbounds %struct.termp, %struct.termp* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.termp*, %struct.termp** %2, align 8
  %131 = getelementptr inbounds %struct.termp, %struct.termp* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 6
  store i32 %129, i32* %133, align 8
  %134 = load i32, i32* @PS_NEWPAGE, align 4
  %135 = load %struct.termp*, %struct.termp** %2, align 8
  %136 = getelementptr inbounds %struct.termp, %struct.termp* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %134, %139
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i32, i32* @PS_NEWPAGE, align 4
  %146 = load %struct.termp*, %struct.termp** %2, align 8
  %147 = getelementptr inbounds %struct.termp, %struct.termp* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ps_printf(%struct.termp*, i8*, ...) #1

declare dso_local i32 @pdf_obj(%struct.termp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
