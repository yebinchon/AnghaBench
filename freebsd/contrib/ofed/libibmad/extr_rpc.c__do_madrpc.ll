; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_rpc.c__do_madrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_rpc.c__do_madrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ibdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c">>> sending: len %d pktsz %zu\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"send buf\0A\00", align 1
@save_mad = common dso_local global i64 0, align 8
@save_mad_len = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"max_retries %d <= 0\00", align 1
@IB_MAD_TRID_F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"retry %d (timeout %d ms)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"send failed; %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"recv failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rcv buf:\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"rcv buf\0A\00", align 1
@IB_MAD_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"timeout after %d retries, %d ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32, i32, i32, i32, i32*)* @_do_madrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_do_madrpc(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %22 = load i32, i32* @ibdebug, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %38

24:                                               ; preds = %8
  %25 = load i32, i32* %14, align 4
  %26 = call i64 (...) @umad_size()
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %29)
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 (...) @umad_size()
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @xdump(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %36)
  br label %38

38:                                               ; preds = %24, %8
  %39 = load i64, i64* @save_mad, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i64, i64* @save_mad, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @umad_get_mad(i8* %43)
  %45 = load i32, i32* @save_mad_len, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @save_mad_len, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %14, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @memcpy(i64 %42, i8* %44, i32 %53)
  store i64 0, i64* @save_mad, align 8
  br label %55

55:                                               ; preds = %52, %38
  %56 = load i32, i32* %16, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i8*, i8** @EINVAL, align 8
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* @errno, align 4
  %61 = load i8*, i8** @EINVAL, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %17, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 (i8*, i32, ...) @ERRS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %9, align 4
  br label %158

66:                                               ; preds = %55
  %67 = load i8*, i8** %11, align 8
  %68 = call i8* @umad_get_mad(i8* %67)
  %69 = load i32, i32* @IB_MAD_TRID_F, align 4
  %70 = call i64 @mad_get_field64(i8* %68, i32 0, i32 %69)
  store i64 %70, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %71

71:                                               ; preds = %146, %66
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %149

75:                                               ; preds = %71
  %76 = load i32, i32* %19, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 (i8*, i32, ...) @ERRS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i64 @umad_send(i32 %84, i32 %85, i8* %86, i32 %87, i32 %88, i32 0)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @strerror(i32 %92)
  %94 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  store i32 -1, i32* %9, align 4
  br label %158

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %125, %95
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i64 @umad_recv(i32 %98, i8* %99, i32* %20, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @errno, align 4
  %105 = call i32 @strerror(i32 %104)
  %106 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  store i32 -1, i32* %9, align 4
  br label %158

107:                                              ; preds = %96
  %108 = load i32, i32* @ibdebug, align 4
  %109 = icmp sgt i32 %108, 2
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @umad_get_mad_addr(i8* %111)
  %113 = call i32 @umad_addr_dump(i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* @ibdebug, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8*, i8** %12, align 8
  %121 = call i8* @umad_get_mad(i8* %120)
  %122 = load i64, i64* @IB_MAD_SIZE, align 8
  %123 = call i32 @xdump(i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %121, i64 %122)
  br label %124

124:                                              ; preds = %117, %114
  br label %125

125:                                              ; preds = %124
  %126 = load i8*, i8** %12, align 8
  %127 = call i8* @umad_get_mad(i8* %126)
  %128 = load i32, i32* @IB_MAD_TRID_F, align 4
  %129 = call i64 @mad_get_field64(i8* %127, i32 0, i32 %128)
  %130 = load i64, i64* %18, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %96, label %132

132:                                              ; preds = %125
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @umad_status(i8* %133)
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %21, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %20, align 4
  store i32 %138, i32* %9, align 4
  br label %158

139:                                              ; preds = %132
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %20, align 4
  store i32 %144, i32* %9, align 4
  br label %158

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %19, align 4
  br label %71

149:                                              ; preds = %71
  %150 = load i32, i32* %21, align 4
  store i32 %150, i32* @errno, align 4
  %151 = load i32, i32* @ETIMEDOUT, align 4
  %152 = load i32*, i32** %17, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %19, align 4
  %156 = mul nsw i32 %154, %155
  %157 = call i32 (i8*, i32, ...) @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %153, i32 %156)
  store i32 -1, i32* %9, align 4
  br label %158

158:                                              ; preds = %149, %143, %137, %103, %91, %58
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local i32 @IBWARN(i8*, ...) #1

declare dso_local i64 @umad_size(...) #1

declare dso_local i32 @xdump(i32, i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i8* @umad_get_mad(i8*) #1

declare dso_local i32 @ERRS(i8*, i32, ...) #1

declare dso_local i64 @mad_get_field64(i8*, i32, i32) #1

declare dso_local i64 @umad_send(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @umad_recv(i32, i8*, i32*, i32) #1

declare dso_local i32 @umad_addr_dump(i32) #1

declare dso_local i32 @umad_get_mad_addr(i8*) #1

declare dso_local i32 @umad_status(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
