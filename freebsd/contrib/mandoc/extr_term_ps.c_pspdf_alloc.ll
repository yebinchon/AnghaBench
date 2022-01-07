; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_pspdf_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_pspdf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64 }
%struct.manoutput = type { i8* }

@TERMENC_ASCII = common dso_local global i32 0, align 4
@TERMFONT_NONE = common dso_local global i32 0, align 4
@ps_advance = common dso_local global i32 0, align 4
@ps_begin = common dso_local global i32 0, align 4
@ps_end = common dso_local global i32 0, align 4
@ps_endline = common dso_local global i32 0, align 4
@ps_hspan = common dso_local global i32 0, align 4
@ps_letter = common dso_local global i32 0, align 4
@ps_setwidth = common dso_local global i32 0, align 4
@ps_width = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Letter\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"letter\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"a5\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"legal\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Legal\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%ux%u\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"CustomSize\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"%s: Unknown paper\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.termp* (%struct.manoutput*, i32)* @pspdf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.termp* @pspdf_alloc(%struct.manoutput* %0, i32 %1) #0 {
  %3 = alloca %struct.manoutput*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.termp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.manoutput* %0, %struct.manoutput** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i8* @mandoc_calloc(i32 1, i32 96)
  %13 = bitcast i8* %12 to %struct.termp*
  store %struct.termp* %13, %struct.termp** %5, align 8
  %14 = call i8* @mandoc_calloc(i32 1, i32 1)
  %15 = load %struct.termp*, %struct.termp** %5, align 8
  %16 = getelementptr inbounds %struct.termp, %struct.termp* %15, i32 0, i32 16
  store i8* %14, i8** %16, align 8
  %17 = load %struct.termp*, %struct.termp** %5, align 8
  %18 = getelementptr inbounds %struct.termp, %struct.termp* %17, i32 0, i32 17
  store i8* %14, i8** %18, align 8
  %19 = load %struct.termp*, %struct.termp** %5, align 8
  %20 = getelementptr inbounds %struct.termp, %struct.termp* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.termp*, %struct.termp** %5, align 8
  %23 = getelementptr inbounds %struct.termp, %struct.termp* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @TERMENC_ASCII, align 4
  %25 = load %struct.termp*, %struct.termp** %5, align 8
  %26 = getelementptr inbounds %struct.termp, %struct.termp* %25, i32 0, i32 15
  store i32 %24, i32* %26, align 8
  %27 = load %struct.termp*, %struct.termp** %5, align 8
  %28 = getelementptr inbounds %struct.termp, %struct.termp* %27, i32 0, i32 2
  store i32 8, i32* %28, align 8
  %29 = call i32* @mandoc_reallocarray(i32* null, i32 8, i32 4)
  %30 = load %struct.termp*, %struct.termp** %5, align 8
  %31 = getelementptr inbounds %struct.termp, %struct.termp* %30, i32 0, i32 14
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* @TERMFONT_NONE, align 4
  %33 = load %struct.termp*, %struct.termp** %5, align 8
  %34 = getelementptr inbounds %struct.termp, %struct.termp* %33, i32 0, i32 13
  store i32 %32, i32* %34, align 8
  %35 = load %struct.termp*, %struct.termp** %5, align 8
  %36 = getelementptr inbounds %struct.termp, %struct.termp* %35, i32 0, i32 14
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %32, i32* %38, align 4
  %39 = call i8* @mandoc_calloc(i32 1, i32 80)
  %40 = bitcast i8* %39 to %struct.TYPE_2__*
  %41 = load %struct.termp*, %struct.termp** %5, align 8
  %42 = getelementptr inbounds %struct.termp, %struct.termp* %41, i32 0, i32 4
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %42, align 8
  %43 = load i32, i32* @ps_advance, align 4
  %44 = load %struct.termp*, %struct.termp** %5, align 8
  %45 = getelementptr inbounds %struct.termp, %struct.termp* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ps_begin, align 4
  %47 = load %struct.termp*, %struct.termp** %5, align 8
  %48 = getelementptr inbounds %struct.termp, %struct.termp* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @ps_end, align 4
  %50 = load %struct.termp*, %struct.termp** %5, align 8
  %51 = getelementptr inbounds %struct.termp, %struct.termp* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ps_endline, align 4
  %53 = load %struct.termp*, %struct.termp** %5, align 8
  %54 = getelementptr inbounds %struct.termp, %struct.termp* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @ps_hspan, align 4
  %56 = load %struct.termp*, %struct.termp** %5, align 8
  %57 = getelementptr inbounds %struct.termp, %struct.termp* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ps_letter, align 4
  %59 = load %struct.termp*, %struct.termp** %5, align 8
  %60 = getelementptr inbounds %struct.termp, %struct.termp* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @ps_setwidth, align 4
  %62 = load %struct.termp*, %struct.termp** %5, align 8
  %63 = getelementptr inbounds %struct.termp, %struct.termp* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ps_width, align 4
  %65 = load %struct.termp*, %struct.termp** %5, align 8
  %66 = getelementptr inbounds %struct.termp, %struct.termp* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.termp*, %struct.termp** %5, align 8
  %68 = getelementptr inbounds %struct.termp, %struct.termp* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %70, align 8
  store i32 216, i32* %6, align 4
  store i32 279, i32* %7, align 4
  %71 = load %struct.manoutput*, %struct.manoutput** %3, align 8
  %72 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %133

76:                                               ; preds = %2
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strcasecmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %133

80:                                               ; preds = %76
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @strcasecmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.termp*, %struct.termp** %5, align 8
  %86 = getelementptr inbounds %struct.termp, %struct.termp* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %88, align 8
  store i32 297, i32* %6, align 4
  store i32 420, i32* %7, align 4
  br label %132

89:                                               ; preds = %80
  %90 = load i8*, i8** %11, align 8
  %91 = call i64 @strcasecmp(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.termp*, %struct.termp** %5, align 8
  %95 = getelementptr inbounds %struct.termp, %struct.termp* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %97, align 8
  store i32 210, i32* %6, align 4
  store i32 297, i32* %7, align 4
  br label %131

98:                                               ; preds = %89
  %99 = load i8*, i8** %11, align 8
  %100 = call i64 @strcasecmp(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.termp*, %struct.termp** %5, align 8
  %104 = getelementptr inbounds %struct.termp, %struct.termp* %103, i32 0, i32 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %106, align 8
  store i32 148, i32* %6, align 4
  store i32 210, i32* %7, align 4
  br label %130

107:                                              ; preds = %98
  %108 = load i8*, i8** %11, align 8
  %109 = call i64 @strcasecmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.termp*, %struct.termp** %5, align 8
  %113 = getelementptr inbounds %struct.termp, %struct.termp* %112, i32 0, i32 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %115, align 8
  store i32 216, i32* %6, align 4
  store i32 356, i32* %7, align 4
  br label %129

116:                                              ; preds = %107
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @sscanf(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* %6, i32* %7)
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.termp*, %struct.termp** %5, align 8
  %122 = getelementptr inbounds %struct.termp, %struct.termp* %121, i32 0, i32 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %124, align 8
  br label %128

125:                                              ; preds = %116
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %111
  br label %130

130:                                              ; preds = %129, %102
  br label %131

131:                                              ; preds = %130, %93
  br label %132

132:                                              ; preds = %131, %84
  br label %133

133:                                              ; preds = %132, %76, %2
  %134 = load %struct.termp*, %struct.termp** %5, align 8
  %135 = getelementptr inbounds %struct.termp, %struct.termp* %134, i32 0, i32 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 11, i32* %137, align 8
  %138 = load %struct.termp*, %struct.termp** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = uitofp i32 %139 to double
  %141 = fmul double %140, 7.200000e+01
  %142 = fdiv double %141, 2.540000e+01
  %143 = call i8* @PNT2AFM(%struct.termp* %138, double %142)
  %144 = ptrtoint i8* %143 to i32
  store i32 %144, i32* %6, align 4
  %145 = load %struct.termp*, %struct.termp** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = uitofp i32 %146 to double
  %148 = fmul double %147, 7.200000e+01
  %149 = fdiv double %148, 2.540000e+01
  %150 = call i8* @PNT2AFM(%struct.termp* %145, double %149)
  %151 = ptrtoint i8* %150 to i32
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %6, align 4
  %153 = uitofp i32 %152 to double
  %154 = fdiv double %153, 9.000000e+00
  %155 = fptoui double %154 to i64
  store i64 %155, i64* %8, align 8
  %156 = load i32, i32* %7, align 4
  %157 = uitofp i32 %156 to double
  %158 = fdiv double %157, 9.000000e+00
  %159 = fptoui double %158 to i64
  store i64 %159, i64* %9, align 8
  %160 = load %struct.termp*, %struct.termp** %5, align 8
  %161 = load %struct.termp*, %struct.termp** %5, align 8
  %162 = getelementptr inbounds %struct.termp, %struct.termp* %161, i32 0, i32 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sitofp i32 %165 to double
  %167 = fmul double %166, 1.400000e+00
  %168 = call i8* @PNT2AFM(%struct.termp* %160, double %167)
  %169 = ptrtoint i8* %168 to i64
  store i64 %169, i64* %10, align 8
  %170 = load i32, i32* %6, align 4
  %171 = zext i32 %170 to i64
  %172 = load %struct.termp*, %struct.termp** %5, align 8
  %173 = getelementptr inbounds %struct.termp, %struct.termp* %172, i32 0, i32 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  store i64 %171, i64* %175, align 8
  %176 = load %struct.termp*, %struct.termp** %5, align 8
  %177 = getelementptr inbounds %struct.termp, %struct.termp* %176, i32 0, i32 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  store i64 %171, i64* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = zext i32 %180 to i64
  %182 = load %struct.termp*, %struct.termp** %5, align 8
  %183 = getelementptr inbounds %struct.termp, %struct.termp* %182, i32 0, i32 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 4
  store i64 %181, i64* %185, align 8
  %186 = load i32, i32* %7, align 4
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %9, align 8
  %189 = udiv i64 %188, 2
  %190 = sub i64 %187, %189
  %191 = load i64, i64* %10, align 8
  %192 = udiv i64 %191, 2
  %193 = sub i64 %190, %192
  %194 = trunc i64 %193 to i32
  %195 = load %struct.termp*, %struct.termp** %5, align 8
  %196 = getelementptr inbounds %struct.termp, %struct.termp* %195, i32 0, i32 4
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 5
  store i32 %194, i32* %198, align 8
  %199 = load i32, i32* %7, align 4
  %200 = zext i32 %199 to i64
  %201 = load i64, i64* %9, align 8
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = load %struct.termp*, %struct.termp** %5, align 8
  %205 = getelementptr inbounds %struct.termp, %struct.termp* %204, i32 0, i32 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 6
  store i32 %203, i32* %207, align 4
  %208 = load i64, i64* %9, align 8
  %209 = udiv i64 %208, 2
  %210 = load i64, i64* %10, align 8
  %211 = udiv i64 %210, 2
  %212 = sub i64 %209, %211
  %213 = load %struct.termp*, %struct.termp** %5, align 8
  %214 = getelementptr inbounds %struct.termp, %struct.termp* %213, i32 0, i32 4
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 7
  store i64 %212, i64* %216, align 8
  %217 = load i64, i64* %9, align 8
  %218 = load %struct.termp*, %struct.termp** %5, align 8
  %219 = getelementptr inbounds %struct.termp, %struct.termp* %218, i32 0, i32 4
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 8
  store i64 %217, i64* %221, align 8
  %222 = load i64, i64* %8, align 8
  %223 = load %struct.termp*, %struct.termp** %5, align 8
  %224 = getelementptr inbounds %struct.termp, %struct.termp* %223, i32 0, i32 4
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 9
  store i64 %222, i64* %226, align 8
  %227 = load i64, i64* %10, align 8
  %228 = load %struct.termp*, %struct.termp** %5, align 8
  %229 = getelementptr inbounds %struct.termp, %struct.termp* %228, i32 0, i32 4
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 10
  store i64 %227, i64* %231, align 8
  %232 = load i32, i32* %6, align 4
  %233 = zext i32 %232 to i64
  %234 = load i64, i64* %8, align 8
  %235 = mul i64 %234, 2
  %236 = sub i64 %233, %235
  %237 = trunc i64 %236 to i32
  %238 = load %struct.termp*, %struct.termp** %5, align 8
  %239 = getelementptr inbounds %struct.termp, %struct.termp* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 4
  %240 = load %struct.termp*, %struct.termp** %5, align 8
  ret %struct.termp* %240
}

declare dso_local i8* @mandoc_calloc(i32, i32) #1

declare dso_local i32* @mandoc_reallocarray(i32*, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i8* @PNT2AFM(%struct.termp*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
