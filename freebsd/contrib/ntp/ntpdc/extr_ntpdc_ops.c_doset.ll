; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_doset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_doset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.conf_sys_flags = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@SYS_FLAG_AUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"bclient\00", align 1
@SYS_FLAG_BCLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"calibrate\00", align 1
@SYS_FLAG_CAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@SYS_FLAG_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@SYS_FLAG_MONITOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ntp\00", align 1
@SYS_FLAG_NTP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@SYS_FLAG_PPS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@SYS_FLAG_FILEGEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"Unknown flag %s\0A\00", align 1
@impl_ver = common dso_local global i64 0, align 8
@INFO_ERR_IMPL = common dso_local global i32 0, align 4
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*, i32)* @doset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doset(%struct.parse* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.conf_sys_flags, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %157, %3
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.parse*, %struct.parse** %4, align 8
  %16 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %160

19:                                               ; preds = %13
  %20 = load %struct.parse*, %struct.parse** %4, align 8
  %21 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @STREQ(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @SYS_FLAG_AUTH, align 4
  %31 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %156

34:                                               ; preds = %19
  %35 = load %struct.parse*, %struct.parse** %4, align 8
  %36 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @STREQ(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* @SYS_FLAG_BCLIENT, align 4
  %46 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %155

49:                                               ; preds = %34
  %50 = load %struct.parse*, %struct.parse** %4, align 8
  %51 = getelementptr inbounds %struct.parse, %struct.parse* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @STREQ(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* @SYS_FLAG_CAL, align 4
  %61 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %154

64:                                               ; preds = %49
  %65 = load %struct.parse*, %struct.parse** %4, align 8
  %66 = getelementptr inbounds %struct.parse, %struct.parse* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @STREQ(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i32, i32* @SYS_FLAG_KERNEL, align 4
  %76 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %153

79:                                               ; preds = %64
  %80 = load %struct.parse*, %struct.parse** %4, align 8
  %81 = getelementptr inbounds %struct.parse, %struct.parse* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @STREQ(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load i32, i32* @SYS_FLAG_MONITOR, align 4
  %91 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %152

94:                                               ; preds = %79
  %95 = load %struct.parse*, %struct.parse** %4, align 8
  %96 = getelementptr inbounds %struct.parse, %struct.parse* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @STREQ(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load i32, i32* @SYS_FLAG_NTP, align 4
  %106 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %151

109:                                              ; preds = %94
  %110 = load %struct.parse*, %struct.parse** %4, align 8
  %111 = getelementptr inbounds %struct.parse, %struct.parse* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @STREQ(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load i32, i32* @SYS_FLAG_PPS, align 4
  %121 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %150

124:                                              ; preds = %109
  %125 = load %struct.parse*, %struct.parse** %4, align 8
  %126 = getelementptr inbounds %struct.parse, %struct.parse* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @STREQ(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %124
  %135 = load i32, i32* @SYS_FLAG_FILEGEN, align 4
  %136 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %149

139:                                              ; preds = %124
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.parse*, %struct.parse** %4, align 8
  %142 = getelementptr inbounds %struct.parse, %struct.parse* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i64, i64* %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %147)
  store i32 1, i32* %11, align 4
  br label %149

149:                                              ; preds = %139, %134
  br label %150

150:                                              ; preds = %149, %119
  br label %151

151:                                              ; preds = %150, %104
  br label %152

152:                                              ; preds = %151, %89
  br label %153

153:                                              ; preds = %152, %74
  br label %154

154:                                              ; preds = %153, %59
  br label %155

155:                                              ; preds = %154, %44
  br label %156

156:                                              ; preds = %155, %29
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %8, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %8, align 8
  br label %13

160:                                              ; preds = %13
  %161 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @htonl(i32 %162)
  %164 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %7, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %160
  br label %193

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %185, %172
  %174 = load i64, i64* @impl_ver, align 8
  %175 = load i32, i32* %6, align 4
  %176 = bitcast %struct.conf_sys_flags* %7 to i8*
  %177 = call i32 @doquery(i64 %174, i32 %175, i32 1, i32 1, i32 4, i8* %176, i64* %8, i64* %9, i8** %10, i32 0, i32 4)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @INFO_ERR_IMPL, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load i64, i64* @impl_ver, align 8
  %183 = load i64, i64* @IMPL_XNTPD, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %186, i64* @impl_ver, align 8
  br label %173

187:                                              ; preds = %181, %173
  %188 = load i32, i32* %11, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32*, i32** %5, align 8
  %192 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %193

193:                                              ; preds = %171, %190, %187
  ret void
}

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @doquery(i64, i32, i32, i32, i32, i8*, i64*, i64*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
