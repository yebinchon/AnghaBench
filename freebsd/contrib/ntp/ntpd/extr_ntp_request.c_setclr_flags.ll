; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_setclr_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_setclr_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_pkt = type { i32, i32 }
%struct.conf_sys_flags = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"setclr_flags: err_nitems > 1\00", align 1
@INFO_ERR_FMT = common dso_local global i32 0, align 4
@SYS_FLAG_BCLIENT = common dso_local global i32 0, align 4
@SYS_FLAG_PPS = common dso_local global i32 0, align 4
@SYS_FLAG_NTP = common dso_local global i32 0, align 4
@SYS_FLAG_KERNEL = common dso_local global i32 0, align 4
@SYS_FLAG_MONITOR = common dso_local global i32 0, align 4
@SYS_FLAG_FILEGEN = common dso_local global i32 0, align 4
@SYS_FLAG_AUTH = common dso_local global i32 0, align 4
@SYS_FLAG_CAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"setclr_flags: extra flags: %#x\00", align 1
@PROTO_BROADCLIENT = common dso_local global i32 0, align 4
@PROTO_PPS = common dso_local global i32 0, align 4
@PROTO_NTP = common dso_local global i32 0, align 4
@PROTO_KERNEL = common dso_local global i32 0, align 4
@PROTO_MONITOR = common dso_local global i32 0, align 4
@PROTO_FILEGEN = common dso_local global i32 0, align 4
@PROTO_AUTHENTICATE = common dso_local global i32 0, align 4
@PROTO_CAL = common dso_local global i32 0, align 4
@INFO_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.req_pkt*, i32)* @setclr_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setclr_flags(i32* %0, i32* %1, %struct.req_pkt* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.req_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.conf_sys_flags*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.req_pkt* %2, %struct.req_pkt** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.req_pkt*, %struct.req_pkt** %7, align 8
  %12 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @INFO_NITEMS(i32 %13)
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = call i32 (i32, i8*, ...) @msyslog(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.req_pkt*, %struct.req_pkt** %7, align 8
  %22 = load i32, i32* @INFO_ERR_FMT, align 4
  %23 = call i32 @req_ack(i32* %19, i32* %20, %struct.req_pkt* %21, i32 %22)
  br label %155

24:                                               ; preds = %4
  %25 = load %struct.req_pkt*, %struct.req_pkt** %7, align 8
  %26 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.conf_sys_flags*
  store %struct.conf_sys_flags* %27, %struct.conf_sys_flags** %9, align 8
  %28 = load %struct.conf_sys_flags*, %struct.conf_sys_flags** %9, align 8
  %29 = getelementptr inbounds %struct.conf_sys_flags, %struct.conf_sys_flags* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohl(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SYS_FLAG_BCLIENT, align 4
  %34 = load i32, i32* @SYS_FLAG_PPS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SYS_FLAG_NTP, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SYS_FLAG_KERNEL, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SYS_FLAG_MONITOR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SYS_FLAG_FILEGEN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SYS_FLAG_AUTH, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SYS_FLAG_CAL, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %32, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %24
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @SYS_FLAG_BCLIENT, align 4
  %55 = load i32, i32* @SYS_FLAG_PPS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SYS_FLAG_NTP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SYS_FLAG_KERNEL, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SYS_FLAG_MONITOR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SYS_FLAG_FILEGEN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SYS_FLAG_AUTH, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SYS_FLAG_CAL, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %53, %69
  %71 = call i32 (i32, i8*, ...) @msyslog(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.req_pkt*, %struct.req_pkt** %7, align 8
  %75 = load i32, i32* @INFO_ERR_FMT, align 4
  %76 = call i32 @req_ack(i32* %72, i32* %73, %struct.req_pkt* %74, i32 %75)
  br label %155

77:                                               ; preds = %24
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @SYS_FLAG_BCLIENT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @PROTO_BROADCLIENT, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @proto_config(i32 %83, i32 %84, i32 0, i32* null)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @SYS_FLAG_PPS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @PROTO_PPS, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @proto_config(i32 %92, i32 %93, i32 0, i32* null)
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @SYS_FLAG_NTP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @PROTO_NTP, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @proto_config(i32 %101, i32 %102, i32 0, i32* null)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @SYS_FLAG_KERNEL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @PROTO_KERNEL, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @proto_config(i32 %110, i32 %111, i32 0, i32* null)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @SYS_FLAG_MONITOR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @PROTO_MONITOR, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @proto_config(i32 %119, i32 %120, i32 0, i32* null)
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @SYS_FLAG_FILEGEN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @PROTO_FILEGEN, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @proto_config(i32 %128, i32 %129, i32 0, i32* null)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @SYS_FLAG_AUTH, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* @PROTO_AUTHENTICATE, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @proto_config(i32 %137, i32 %138, i32 0, i32* null)
  br label %140

140:                                              ; preds = %136, %131
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @SYS_FLAG_CAL, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* @PROTO_CAL, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @proto_config(i32 %146, i32 %147, i32 0, i32* null)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i32*, i32** %5, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = load %struct.req_pkt*, %struct.req_pkt** %7, align 8
  %153 = load i32, i32* @INFO_OKAY, align 4
  %154 = call i32 @req_ack(i32* %150, i32* %151, %struct.req_pkt* %152, i32 %153)
  br label %155

155:                                              ; preds = %149, %51, %16
  ret void
}

declare dso_local i32 @INFO_NITEMS(i32) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @req_ack(i32*, i32*, %struct.req_pkt*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @proto_config(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
