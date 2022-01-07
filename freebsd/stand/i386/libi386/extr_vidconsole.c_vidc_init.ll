; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@vidc_started = common dso_local global i32 0, align 4
@VGA_REG_BASE = common dso_local global i32 0, align 4
@VGA_GEN_MISC_OUTPUT_R = common dso_local global i32 0, align 4
@VGA_GEN_MO_IOA = common dso_local global i32 0, align 4
@VGA_TXT_BASE = common dso_local global i64 0, align 8
@vgatext = common dso_local global i32* null, align 8
@VGA_MEM_BASE = common dso_local global i64 0, align 8
@VGA_MEM_SIZE = common dso_local global i64 0, align 8
@VGA_AC_MODE_CONTROL = common dso_local global i32 0, align 4
@VGA_AC_MC_BI = common dso_local global i32 0, align 4
@VGA_AC_MC_ELG = common dso_local global i32 0, align 4
@TEXT_ROWS = common dso_local global i32 0, align 4
@tp = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@TEXT_COLS = common dso_local global i32 0, align 4
@buffer = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@teken = common dso_local global i32 0, align 4
@tf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"teken.fg_color\00", align 1
@EV_VOLATILE = common dso_local global i32 0, align 4
@vidc_set_colors = common dso_local global i32 0, align 4
@env_nounset = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"teken.bg_color\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vidc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidc_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @vidc_started, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %148

16:                                               ; preds = %12, %1
  store i32 1, i32* @vidc_started, align 4
  %17 = load i32, i32* @VGA_REG_BASE, align 4
  %18 = load i32, i32* @VGA_GEN_MISC_OUTPUT_R, align 4
  %19 = call i32 @vga_get_reg(i32 %17, i32 %18)
  %20 = load i32, i32* @VGA_GEN_MO_IOA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i64, i64* @VGA_TXT_BASE, align 8
  %25 = call i64 @PTOV(i64 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** @vgatext, align 8
  br label %33

27:                                               ; preds = %16
  %28 = load i64, i64* @VGA_MEM_BASE, align 8
  %29 = load i64, i64* @VGA_MEM_SIZE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @PTOV(i64 %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** @vgatext, align 8
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* @VGA_REG_BASE, align 4
  %35 = load i32, i32* @VGA_AC_MODE_CONTROL, align 4
  %36 = call i32 @vga_get_atr(i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @VGA_AC_MC_BI, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @VGA_AC_MC_ELG, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @VGA_REG_BASE, align 4
  %46 = load i32, i32* @VGA_AC_MODE_CONTROL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @vga_set_atr(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @TEXT_ROWS, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 0), align 4
  %50 = load i32, i32* @TEXT_COLS, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 1), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 0), align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 1), align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 12
  %56 = trunc i64 %55 to i32
  %57 = call %struct.TYPE_9__* @malloc(i32 %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** @buffer, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @buffer, align 8
  %59 = icmp eq %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %148

61:                                               ; preds = %33
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 0), align 4
  %64 = call i32 @snprintf(i8* %62, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %66 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %65, i32 1)
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 1), align 4
  %69 = call i32 @snprintf(i8* %67, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %71 = call i32 @setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 1)
  %72 = call i32 @teken_init(i32* @teken, i32* @tf, i32* null)
  %73 = call i32 @teken_set_winsize(i32* @teken, %struct.TYPE_8__* @tp)
  %74 = call %struct.TYPE_7__* @teken_get_defattr(i32* @teken)
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @snprintf(i8* %75, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EV_VOLATILE, align 4
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %82 = load i32, i32* @vidc_set_colors, align 4
  %83 = load i32, i32* @env_nounset, align 4
  %84 = call i32 @env_setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %80, i8* %81, i32 %82, i32 %83)
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @snprintf(i8* %85, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EV_VOLATILE, align 4
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %92 = load i32, i32* @vidc_set_colors, align 4
  %93 = load i32, i32* @env_nounset, align 4
  %94 = call i32 @env_setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %90, i8* %91, i32 %92, i32 %93)
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %130, %61
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 0), align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %95
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %126, %99
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 1), align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %100
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** @buffer, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 1), align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i8 32, i8* %113, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @buffer, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tp, i32 0, i32 1), align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %115, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = bitcast %struct.TYPE_7__* %122 to i8*
  %125 = bitcast %struct.TYPE_7__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 8, i1 false)
  br label %126

126:                                              ; preds = %104
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %100

129:                                              ; preds = %100
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %95

133:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %144, %133
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 10
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = call i64 (...) @vidc_ischar()
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi i1 [ false, %134 ], [ %139, %137 ]
  br i1 %141, label %142, label %147

142:                                              ; preds = %140
  %143 = call i32 (...) @vidc_getchar()
  br label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %134

147:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %60, %15
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @vga_get_reg(i32, i32) #1

declare dso_local i64 @PTOV(i64) #1

declare dso_local i32 @vga_get_atr(i32, i32) #1

declare dso_local i32 @vga_set_atr(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @teken_init(i32*, i32*, i32*) #1

declare dso_local i32 @teken_set_winsize(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @teken_get_defattr(i32*) #1

declare dso_local i32 @env_setenv(i8*, i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vidc_ischar(...) #1

declare dso_local i32 @vidc_getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
