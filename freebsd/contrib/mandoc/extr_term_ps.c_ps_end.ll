; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8, i64, i64, i64, i32*, i32, i32 }

@PS_NEWPAGE = common dso_local global i32 0, align 4
@TERMTYPE_PS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%%%%Trailer\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%%%%Pages: %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%%%%EOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"<<\0A/Type /Pages\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"/MediaBox [0 0 %zu %zu]\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"/Count %zu\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"/Kids [\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" %zu 0 R\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"]\0A>>\0Aendobj\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"/Type /Catalog\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"/Pages 2 0 R\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c">>\0Aendobj\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"xref\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"0 %zu\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"0000000000 65535 f \0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"%.10zu 00000 n \0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"trailer\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"/Size %zu\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"/Root %zu 0 R\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"/Info 1 0 R\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"startxref\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*)* @ps_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_end(%struct.termp* %0) #0 {
  %2 = alloca %struct.termp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %2, align 8
  %6 = load %struct.termp*, %struct.termp** %2, align 8
  %7 = call i32 @ps_plast(%struct.termp* %6)
  %8 = load %struct.termp*, %struct.termp** %2, align 8
  %9 = call i32 @ps_pclose(%struct.termp* %8)
  %10 = load i32, i32* @PS_NEWPAGE, align 4
  %11 = load %struct.termp*, %struct.termp** %2, align 8
  %12 = getelementptr inbounds %struct.termp, %struct.termp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %1
  %19 = load %struct.termp*, %struct.termp** %2, align 8
  %20 = getelementptr inbounds %struct.termp, %struct.termp* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 0, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.termp*, %struct.termp** %2, align 8
  %28 = getelementptr inbounds %struct.termp, %struct.termp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 4
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 0, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.termp*, %struct.termp** %2, align 8
  %37 = call i32 @ps_closepage(%struct.termp* %36)
  br label %38

38:                                               ; preds = %18, %1
  %39 = load i64, i64* @TERMTYPE_PS, align 8
  %40 = load %struct.termp*, %struct.termp** %2, align 8
  %41 = getelementptr inbounds %struct.termp, %struct.termp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.termp*, %struct.termp** %2, align 8
  %46 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.termp*, %struct.termp** %2, align 8
  %48 = load %struct.termp*, %struct.termp** %2, align 8
  %49 = getelementptr inbounds %struct.termp, %struct.termp* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load %struct.termp*, %struct.termp** %2, align 8
  %55 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %193

56:                                               ; preds = %38
  %57 = load %struct.termp*, %struct.termp** %2, align 8
  %58 = call i32 @pdf_obj(%struct.termp* %57, i64 2)
  %59 = load %struct.termp*, %struct.termp** %2, align 8
  %60 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.termp*, %struct.termp** %2, align 8
  %62 = load %struct.termp*, %struct.termp** %2, align 8
  %63 = load %struct.termp*, %struct.termp** %2, align 8
  %64 = getelementptr inbounds %struct.termp, %struct.termp* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @AFM2PNT(%struct.termp* %62, i32 %67)
  %69 = load %struct.termp*, %struct.termp** %2, align 8
  %70 = load %struct.termp*, %struct.termp** %2, align 8
  %71 = getelementptr inbounds %struct.termp, %struct.termp* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @AFM2PNT(%struct.termp* %69, i32 %74)
  %76 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %68, i64 %75)
  %77 = load %struct.termp*, %struct.termp** %2, align 8
  %78 = load %struct.termp*, %struct.termp** %2, align 8
  %79 = getelementptr inbounds %struct.termp, %struct.termp* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %82)
  %84 = load %struct.termp*, %struct.termp** %2, align 8
  %85 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %86

86:                                               ; preds = %106, %56
  %87 = load i64, i64* %3, align 8
  %88 = load %struct.termp*, %struct.termp** %2, align 8
  %89 = getelementptr inbounds %struct.termp, %struct.termp* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %87, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = load %struct.termp*, %struct.termp** %2, align 8
  %96 = load i64, i64* %3, align 8
  %97 = mul i64 %96, 4
  %98 = load %struct.termp*, %struct.termp** %2, align 8
  %99 = getelementptr inbounds %struct.termp, %struct.termp* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %97, %102
  %104 = add i64 %103, 3
  %105 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %94
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %3, align 8
  br label %86

109:                                              ; preds = %86
  %110 = load %struct.termp*, %struct.termp** %2, align 8
  %111 = getelementptr inbounds %struct.termp, %struct.termp* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, 1
  %116 = mul i64 %115, 4
  %117 = load %struct.termp*, %struct.termp** %2, align 8
  %118 = getelementptr inbounds %struct.termp, %struct.termp* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %116, %121
  %123 = add i64 %122, 4
  store i64 %123, i64* %5, align 8
  %124 = load %struct.termp*, %struct.termp** %2, align 8
  %125 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %126 = load %struct.termp*, %struct.termp** %2, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @pdf_obj(%struct.termp* %126, i64 %127)
  %129 = load %struct.termp*, %struct.termp** %2, align 8
  %130 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %131 = load %struct.termp*, %struct.termp** %2, align 8
  %132 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %133 = load %struct.termp*, %struct.termp** %2, align 8
  %134 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %135 = load %struct.termp*, %struct.termp** %2, align 8
  %136 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %137 = load %struct.termp*, %struct.termp** %2, align 8
  %138 = getelementptr inbounds %struct.termp, %struct.termp* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %4, align 8
  %142 = load %struct.termp*, %struct.termp** %2, align 8
  %143 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %144 = load %struct.termp*, %struct.termp** %2, align 8
  %145 = load i64, i64* %5, align 8
  %146 = add i64 %145, 1
  %147 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 %146)
  %148 = load %struct.termp*, %struct.termp** %2, align 8
  %149 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %150

150:                                              ; preds = %167, %109
  %151 = load i64, i64* %3, align 8
  %152 = load i64, i64* %5, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %150
  %155 = load %struct.termp*, %struct.termp** %2, align 8
  %156 = load %struct.termp*, %struct.termp** %2, align 8
  %157 = getelementptr inbounds %struct.termp, %struct.termp* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 5
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %3, align 8
  %162 = trunc i64 %161 to i32
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %154
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %3, align 8
  br label %150

170:                                              ; preds = %150
  %171 = load %struct.termp*, %struct.termp** %2, align 8
  %172 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %173 = load %struct.termp*, %struct.termp** %2, align 8
  %174 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %175 = load %struct.termp*, %struct.termp** %2, align 8
  %176 = load i64, i64* %5, align 8
  %177 = add i64 %176, 1
  %178 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 %177)
  %179 = load %struct.termp*, %struct.termp** %2, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %179, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i64 %180)
  %182 = load %struct.termp*, %struct.termp** %2, align 8
  %183 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %184 = load %struct.termp*, %struct.termp** %2, align 8
  %185 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %186 = load %struct.termp*, %struct.termp** %2, align 8
  %187 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %188 = load %struct.termp*, %struct.termp** %2, align 8
  %189 = load i64, i64* %4, align 8
  %190 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 %189)
  %191 = load %struct.termp*, %struct.termp** %2, align 8
  %192 = call i32 (%struct.termp*, i8*, ...) @ps_printf(%struct.termp* %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %193

193:                                              ; preds = %170, %44
  ret void
}

declare dso_local i32 @ps_plast(%struct.termp*) #1

declare dso_local i32 @ps_pclose(%struct.termp*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ps_closepage(%struct.termp*) #1

declare dso_local i32 @ps_printf(%struct.termp*, i8*, ...) #1

declare dso_local i32 @pdf_obj(%struct.termp*, i64) #1

declare dso_local i64 @AFM2PNT(%struct.termp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
