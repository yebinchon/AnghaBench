; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_rc_pingpong.c_parse_single_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_rc_pingpong.c_parse_single_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_context = type { i32, i32, i64 }
%struct.ts_params = type { i32, i64, i32, i64, i32, i32 }

@IBV_WC_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed status %s (%d) for wr_id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't post receive (%d)\0A\00", align 1
@use_ts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Completion for unknown wr_id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Couldn't post send\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pingpong_context*, i32*, i32*, i32*, i32, i64, i32, i64, %struct.ts_params*)* @parse_single_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_single_wc(%struct.pingpong_context* %0, i32* %1, i32* %2, i32* %3, i32 %4, i64 %5, i32 %6, i64 %7, %struct.ts_params* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.pingpong_context*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.ts_params*, align 8
  %20 = alloca i64, align 8
  store %struct.pingpong_context* %0, %struct.pingpong_context** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store %struct.ts_params* %8, %struct.ts_params** %19, align 8
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* @IBV_WC_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %9
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %17, align 4
  %27 = call i8* @ibv_wc_status_str(i32 %26)
  %28 = load i32, i32* %17, align 4
  %29 = load i64, i64* %16, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28, i32 %30)
  store i32 1, i32* %10, align 4
  br label %169

32:                                               ; preds = %9
  %33 = load i64, i64* %16, align 8
  %34 = trunc i64 %33 to i32
  switch i32 %34, label %136 [
    i32 128, label %35
    i32 129, label %39
  ]

35:                                               ; preds = %32
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %141

39:                                               ; preds = %32
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = icmp sle i32 %42, 1
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load %struct.pingpong_context*, %struct.pingpong_context** %11, align 8
  %46 = load %struct.pingpong_context*, %struct.pingpong_context** %11, align 8
  %47 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %48, %50
  %52 = call i32 @pp_post_recv(%struct.pingpong_context* %45, i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pingpong_context*, %struct.pingpong_context** %11, align 8
  %59 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %44
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  store i32 1, i32* %10, align 4
  br label %169

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @use_ts, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %132

74:                                               ; preds = %68
  %75 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %76 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %74
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %82 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i64, i64* %18, align 8
  %87 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %88 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  store i64 %90, i64* %20, align 8
  br label %102

91:                                               ; preds = %79
  %92 = load %struct.pingpong_context*, %struct.pingpong_context** %11, align 8
  %93 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %96 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = load i64, i64* %18, align 8
  %100 = add nsw i64 %98, %99
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %20, align 8
  br label %102

102:                                              ; preds = %91, %85
  %103 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %104 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %20, align 8
  %107 = call i32 @MAX(i32 %105, i64 %106)
  %108 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %109 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %111 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %20, align 8
  %114 = call i32 @MIN(i32 %112, i64 %113)
  %115 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %116 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %20, align 8
  %118 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %119 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %123 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %102, %74
  %127 = load i64, i64* %18, align 8
  %128 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %129 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %131 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %135

132:                                              ; preds = %68
  %133 = load %struct.ts_params*, %struct.ts_params** %19, align 8
  %134 = getelementptr inbounds %struct.ts_params, %struct.ts_params* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %126
  br label %141

136:                                              ; preds = %32
  %137 = load i32, i32* @stderr, align 4
  %138 = load i64, i64* %16, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  store i32 1, i32* %10, align 4
  br label %169

141:                                              ; preds = %135, %35
  %142 = load i64, i64* %16, align 8
  %143 = trunc i64 %142 to i32
  %144 = xor i32 %143, -1
  %145 = load %struct.pingpong_context*, %struct.pingpong_context** %11, align 8
  %146 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %141
  %154 = load %struct.pingpong_context*, %struct.pingpong_context** %11, align 8
  %155 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %153
  %159 = load %struct.pingpong_context*, %struct.pingpong_context** %11, align 8
  %160 = call i64 @pp_post_send(%struct.pingpong_context* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %169

165:                                              ; preds = %158
  %166 = load %struct.pingpong_context*, %struct.pingpong_context** %11, align 8
  %167 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %166, i32 0, i32 1
  store i32 129, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %153, %141
  store i32 0, i32* %10, align 4
  br label %169

169:                                              ; preds = %168, %162, %136, %62, %24
  %170 = load i32, i32* %10, align 4
  ret i32 %170
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @ibv_wc_status_str(i32) #1

declare dso_local i32 @pp_post_recv(%struct.pingpong_context*, i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i64 @pp_post_send(%struct.pingpong_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
