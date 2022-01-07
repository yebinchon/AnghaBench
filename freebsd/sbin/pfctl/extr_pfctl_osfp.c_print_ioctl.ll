; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_print_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_print_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_osfp_ioctl = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@print_ioctl.buf = internal global [1024 x i8] zeroinitializer, align 16
@PF_OSFP_WSIZE_DC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@PF_OSFP_WSIZE_MSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@PF_OSFP_WSIZE_MTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@PF_OSFP_WSIZE_MOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@PF_OSFP_DF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@PF_OSFP_PSIZE_DC = common dso_local global i32 0, align 4
@PF_OSFP_PSIZE_MOD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@PF_OSFP_TCPOPT_BITS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@PF_OSFP_TS0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@PF_OSFP_MSS_DC = common dso_local global i32 0, align 4
@PF_OSFP_MSS_MOD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@PF_OSFP_WSCALE_DC = common dso_local global i32 0, align 4
@PF_OSFP_WSCALE_MOD = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"TcpOpts %d 0x%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @print_ioctl(%struct.pf_osfp_ioctl* %0) #0 {
  %2 = alloca %struct.pf_osfp_ioctl*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pf_osfp_ioctl* %0, %struct.pf_osfp_ioctl** %2, align 8
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), align 16
  %6 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %7 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PF_OSFP_WSIZE_DC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1024)
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %16 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PF_OSFP_WSIZE_MSS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1024)
  br label %50

23:                                               ; preds = %14
  %24 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %25 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PF_OSFP_WSIZE_MTU, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1024)
  br label %49

32:                                               ; preds = %23
  %33 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %34 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PF_OSFP_WSIZE_MOD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1024)
  br label %41

41:                                               ; preds = %39, %32
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %43 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %44 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %42, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %48 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %47, i32 1024)
  br label %49

49:                                               ; preds = %41, %30
  br label %50

50:                                               ; preds = %49, %21
  br label %51

51:                                               ; preds = %50, %12
  %52 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024)
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %54 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %55 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %53, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %59 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %58, i32 1024)
  %60 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024)
  %61 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %62 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PF_OSFP_DF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1024)
  br label %71

69:                                               ; preds = %51
  %70 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1024)
  br label %71

71:                                               ; preds = %69, %67
  %72 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024)
  %73 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %74 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PF_OSFP_PSIZE_DC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1024)
  br label %98

81:                                               ; preds = %71
  %82 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %83 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PF_OSFP_PSIZE_MOD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1024)
  br label %90

90:                                               ; preds = %88, %81
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %92 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %93 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %91, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %97 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %96, i32 1024)
  br label %98

98:                                               ; preds = %90, %79
  %99 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024)
  %100 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %101 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1024)
  br label %106

106:                                              ; preds = %104, %98
  %107 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %108 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %205, %106
  %112 = load i32, i32* %4, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %208

114:                                              ; preds = %111
  %115 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %116 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @PF_OSFP_TCPOPT_BITS, align 4
  %120 = mul nsw i32 %118, %119
  %121 = ashr i32 %117, %120
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* @PF_OSFP_TCPOPT_BITS, align 4
  %123 = shl i32 1, %122
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  switch i32 %127, label %199 [
    i32 131, label %128
    i32 130, label %130
    i32 129, label %132
    i32 132, label %143
    i32 128, label %171
  ]

128:                                              ; preds = %114
  %129 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1024)
  br label %199

130:                                              ; preds = %114
  %131 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1024)
  br label %199

132:                                              ; preds = %114
  %133 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1024)
  %134 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %135 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PF_OSFP_TS0, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1024)
  br label %142

142:                                              ; preds = %140, %132
  br label %199

143:                                              ; preds = %114
  %144 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1024)
  %145 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %146 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PF_OSFP_MSS_DC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1024)
  br label %170

153:                                              ; preds = %143
  %154 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %155 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PF_OSFP_MSS_MOD, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1024)
  br label %162

162:                                              ; preds = %160, %153
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %164 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %165 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %163, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %169 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %168, i32 1024)
  br label %170

170:                                              ; preds = %162, %151
  br label %199

171:                                              ; preds = %114
  %172 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1024)
  %173 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %174 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @PF_OSFP_WSCALE_DC, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1024)
  br label %198

181:                                              ; preds = %171
  %182 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %183 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @PF_OSFP_WSCALE_MOD, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1024)
  br label %190

190:                                              ; preds = %188, %181
  %191 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %192 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %193 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %191, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %197 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %196, i32 1024)
  br label %198

198:                                              ; preds = %190, %179
  br label %199

199:                                              ; preds = %114, %198, %170, %142, %130, %128
  %200 = load i32, i32* %4, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1024)
  br label %204

204:                                              ; preds = %202, %199
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %4, align 4
  br label %111

208:                                              ; preds = %111
  %209 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024)
  %210 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %211 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %213, i32 1024)
  %215 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024)
  %216 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %217 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %219, i32 1024)
  %221 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024)
  %222 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %223 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %225, i32 1024)
  %227 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1024)
  %228 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %229 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %230 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %233 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %228, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %231, i64 %235)
  %237 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %238 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0), i8* %237, i32 1024)
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @print_ioctl.buf, i64 0, i64 0)
}

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
