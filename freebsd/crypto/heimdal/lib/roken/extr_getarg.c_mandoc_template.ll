; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getarg.c_mandoc_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getarg.c_mandoc_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getargs = type { i32, i8*, i64, i8* }

@.str = private unnamed_addr constant [20 x i8] c".\\\22 Things to fix:\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c".\\\22   * correct section, and operating system\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c".\\\22   * remove Op from mandatory flags\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c".\\\22   * use better macros for arguments (like .Pa for files)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".\\\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%B %e, %Y\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".Dd %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c".Dt %s SECTION\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c".Os OPERATING_SYSTEM\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c".Sh NAME\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".Nm %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c".Nd in search of a description\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c".Sh SYNOPSIS\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".Nm\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".Op \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Fl %c%s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Fl Fl %s%s%s\00", align 1
@arg_negative_flag = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c".Oo Fl %c%s \\*(Ba Xo\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c".Fl Fl %s%s\0A.Xc\0A.Oc\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c".Ar %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c".Sh DESCRIPTION\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Supported options:\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c".Bl -tag -width Ds\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c".It Xo\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c".Fl %c\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c".Fl Fl %s%s\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c".Xc\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c".El\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c".\\\22.Sh ENVIRONMENT\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c".\\\22.Sh FILES\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c".\\\22.Sh EXAMPLES\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c".\\\22.Sh DIAGNOSTICS\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c".\\\22.Sh SEE ALSO\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c".\\\22.Sh STANDARDS\0A\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c".\\\22.Sh HISTORY\0A\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c".\\\22.Sh AUTHORS\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c".\\\22.Sh BUGS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.getargs*, i64, i8*, i8*, i8* (i8*)*)* @mandoc_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mandoc_template(%struct.getargs* %0, i64 %1, i8* %2, i8* %3, i8* (i8*)* %4) #0 {
  %6 = alloca %struct.getargs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8* (i8*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [128 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.getargs* %0, %struct.getargs** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* (i8*)* %4, i8* (i8*)** %10, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @time(i32* null)
  store i32 %22, i32* %16, align 4
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %24 = call i32 @localtime(i32* %16)
  %25 = call i32 @strftime(i8* %23, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 47)
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i8*, i8** %15, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %15, align 8
  br label %37

35:                                               ; preds = %5
  %36 = load i8*, i8** %8, align 8
  store i8* %36, i8** %15, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %39 = load i8*, i8** %15, align 8
  %40 = call i32 @strlcpy(i8* %38, i8* %39, i32 64)
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %42 = call i32 @strupr(i8* %41)
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %47 = load i8*, i8** %15, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %47)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %167, %37
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %170

56:                                               ; preds = %52
  %57 = load %struct.getargs*, %struct.getargs** %6, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds %struct.getargs, %struct.getargs* %57, i64 %58
  %60 = call i64 @ISFLAG(%struct.getargs* byval(%struct.getargs) align 8 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %56
  %63 = load %struct.getargs*, %struct.getargs** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.getargs, %struct.getargs* %63, i64 %64
  %66 = getelementptr inbounds %struct.getargs, %struct.getargs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.getargs*, %struct.getargs** %6, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct.getargs, %struct.getargs* %70, i64 %71
  %73 = getelementptr inbounds %struct.getargs, %struct.getargs* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %139

76:                                               ; preds = %69, %62, %56
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %78 = load %struct.getargs*, %struct.getargs** %6, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.getargs, %struct.getargs* %78, i64 %79
  %81 = getelementptr inbounds %struct.getargs, %struct.getargs* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %76
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %86 = load %struct.getargs*, %struct.getargs** %6, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.getargs, %struct.getargs* %86, i64 %87
  %89 = load i8* (i8*)*, i8* (i8*)** %10, align 8
  %90 = call i32 @print_arg(i8* %85, i32 128, i32 1, i32 0, %struct.getargs* %88, i8* (i8*)* %89)
  %91 = load %struct.getargs*, %struct.getargs** %6, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds %struct.getargs, %struct.getargs* %91, i64 %92
  %94 = getelementptr inbounds %struct.getargs, %struct.getargs* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %95, i8* %96)
  %98 = load %struct.getargs*, %struct.getargs** %6, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds %struct.getargs, %struct.getargs* %98, i64 %99
  %101 = getelementptr inbounds %struct.getargs, %struct.getargs* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %84
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %84
  br label %107

107:                                              ; preds = %106, %76
  %108 = load %struct.getargs*, %struct.getargs** %6, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds %struct.getargs, %struct.getargs* %108, i64 %109
  %111 = getelementptr inbounds %struct.getargs, %struct.getargs* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %137

114:                                              ; preds = %107
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %116 = load %struct.getargs*, %struct.getargs** %6, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds %struct.getargs, %struct.getargs* %116, i64 %117
  %119 = load i8* (i8*)*, i8* (i8*)** %10, align 8
  %120 = call i32 @print_arg(i8* %115, i32 128, i32 1, i32 1, %struct.getargs* %118, i8* (i8*)* %119)
  %121 = load %struct.getargs*, %struct.getargs** %6, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds %struct.getargs, %struct.getargs* %121, i64 %122
  %124 = getelementptr inbounds %struct.getargs, %struct.getargs* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @arg_negative_flag, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)
  %130 = load %struct.getargs*, %struct.getargs** %6, align 8
  %131 = load i64, i64* %11, align 8
  %132 = getelementptr inbounds %struct.getargs, %struct.getargs* %130, i64 %131
  %133 = getelementptr inbounds %struct.getargs, %struct.getargs* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %129, i8* %134, i8* %135)
  br label %137

137:                                              ; preds = %114, %107
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %166

139:                                              ; preds = %69
  %140 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %141 = load %struct.getargs*, %struct.getargs** %6, align 8
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds %struct.getargs, %struct.getargs* %141, i64 %142
  %144 = load i8* (i8*)*, i8* (i8*)** %10, align 8
  %145 = call i32 @print_arg(i8* %140, i32 128, i32 1, i32 0, %struct.getargs* %143, i8* (i8*)* %144)
  %146 = load %struct.getargs*, %struct.getargs** %6, align 8
  %147 = load i64, i64* %11, align 8
  %148 = getelementptr inbounds %struct.getargs, %struct.getargs* %146, i64 %147
  %149 = getelementptr inbounds %struct.getargs, %struct.getargs* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %150, i8* %151)
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %154 = load %struct.getargs*, %struct.getargs** %6, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds %struct.getargs, %struct.getargs* %154, i64 %155
  %157 = load i8* (i8*)*, i8* (i8*)** %10, align 8
  %158 = call i32 @print_arg(i8* %153, i32 128, i32 1, i32 1, %struct.getargs* %156, i8* (i8*)* %157)
  %159 = load %struct.getargs*, %struct.getargs** %6, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds %struct.getargs, %struct.getargs* %159, i64 %160
  %162 = getelementptr inbounds %struct.getargs, %struct.getargs* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %163, i8* %164)
  br label %166

166:                                              ; preds = %139, %137
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %11, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %11, align 8
  br label %52

170:                                              ; preds = %52
  %171 = load i8*, i8** %9, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i8*, i8** %9, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %178, %173, %170
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %185

185:                                              ; preds = %269, %181
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %7, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %272

189:                                              ; preds = %185
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %191 = load %struct.getargs*, %struct.getargs** %6, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds %struct.getargs, %struct.getargs* %191, i64 %192
  %194 = getelementptr inbounds %struct.getargs, %struct.getargs* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %222

197:                                              ; preds = %189
  %198 = load %struct.getargs*, %struct.getargs** %6, align 8
  %199 = load i64, i64* %11, align 8
  %200 = getelementptr inbounds %struct.getargs, %struct.getargs* %198, i64 %199
  %201 = getelementptr inbounds %struct.getargs, %struct.getargs* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i32 %202)
  %204 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %205 = load %struct.getargs*, %struct.getargs** %6, align 8
  %206 = load i64, i64* %11, align 8
  %207 = getelementptr inbounds %struct.getargs, %struct.getargs* %205, i64 %206
  %208 = load i8* (i8*)*, i8* (i8*)** %10, align 8
  %209 = call i32 @print_arg(i8* %204, i32 128, i32 1, i32 0, %struct.getargs* %207, i8* (i8*)* %208)
  %210 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %210)
  %212 = load %struct.getargs*, %struct.getargs** %6, align 8
  %213 = load i64, i64* %11, align 8
  %214 = getelementptr inbounds %struct.getargs, %struct.getargs* %212, i64 %213
  %215 = getelementptr inbounds %struct.getargs, %struct.getargs* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %197
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %197
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %189
  %223 = load %struct.getargs*, %struct.getargs** %6, align 8
  %224 = load i64, i64* %11, align 8
  %225 = getelementptr inbounds %struct.getargs, %struct.getargs* %223, i64 %224
  %226 = getelementptr inbounds %struct.getargs, %struct.getargs* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %253

229:                                              ; preds = %222
  %230 = load %struct.getargs*, %struct.getargs** %6, align 8
  %231 = load i64, i64* %11, align 8
  %232 = getelementptr inbounds %struct.getargs, %struct.getargs* %230, i64 %231
  %233 = getelementptr inbounds %struct.getargs, %struct.getargs* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @arg_negative_flag, align 8
  %236 = icmp eq i64 %234, %235
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)
  %239 = load %struct.getargs*, %struct.getargs** %6, align 8
  %240 = load i64, i64* %11, align 8
  %241 = getelementptr inbounds %struct.getargs, %struct.getargs* %239, i64 %240
  %242 = getelementptr inbounds %struct.getargs, %struct.getargs* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* %238, i8* %243)
  %245 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %246 = load %struct.getargs*, %struct.getargs** %6, align 8
  %247 = load i64, i64* %11, align 8
  %248 = getelementptr inbounds %struct.getargs, %struct.getargs* %246, i64 %247
  %249 = load i8* (i8*)*, i8* (i8*)** %10, align 8
  %250 = call i32 @print_arg(i8* %245, i32 128, i32 1, i32 1, %struct.getargs* %248, i8* (i8*)* %249)
  %251 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %251)
  br label %253

253:                                              ; preds = %229, %222
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %255 = load %struct.getargs*, %struct.getargs** %6, align 8
  %256 = load i64, i64* %11, align 8
  %257 = getelementptr inbounds %struct.getargs, %struct.getargs* %255, i64 %256
  %258 = getelementptr inbounds %struct.getargs, %struct.getargs* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %253
  %262 = load %struct.getargs*, %struct.getargs** %6, align 8
  %263 = load i64, i64* %11, align 8
  %264 = getelementptr inbounds %struct.getargs, %struct.getargs* %262, i64 %263
  %265 = getelementptr inbounds %struct.getargs, %struct.getargs* %264, i32 0, i32 3
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %261, %253
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %11, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %11, align 8
  br label %185

272:                                              ; preds = %185
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0))
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0))
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0))
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0))
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0))
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0))
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strupr(i8*) #1

declare dso_local i64 @ISFLAG(%struct.getargs* byval(%struct.getargs) align 8) #1

declare dso_local i32 @print_arg(i8*, i32, i32, i32, %struct.getargs*, i8* (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
