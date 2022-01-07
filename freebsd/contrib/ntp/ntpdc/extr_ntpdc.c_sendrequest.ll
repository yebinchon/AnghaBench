; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_sendrequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_sendrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_pkt = type { i8*, i8*, i8*, %struct.TYPE_2__, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@keyid_entered = common dso_local global i64 0, align 8
@info_auth_keyid = common dso_local global i64 0, align 8
@req_pkt_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Keyid: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid key identifier\0A\00", align 1
@info_auth_keytype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid password\0A\00", align 1
@info_auth_hashlen = common dso_local global i32 0, align 4
@REQ_LEN_NOMAC = common dso_local global i64 0, align 8
@REQ_LEN_HDR = common dso_local global i64 0, align 8
@delay_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Key not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"%zu octet MAC, %zu expected with %zu octet digest\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64, i64, i8*)* @sendrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendrequest(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.req_pkt, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = call i32 @ZERO(%struct.req_pkt* byval(%struct.req_pkt) align 8 %14)
  %23 = call i32 @RM_VN_MODE(i32 0, i32 0, i32 0)
  %24 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 6
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 5
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = mul i64 %33, %34
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %6
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @memcpy(i32 %44, i8* %45, i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = call i8* @ERR_NITEMS(i32 0, i64 %48)
  %50 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i8* @MBZ_ITEMSIZE(i64 %51)
  %53 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  br label %60

54:                                               ; preds = %38, %6
  %55 = call i8* @ERR_NITEMS(i32 0, i64 0)
  %56 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i8* @MBZ_ITEMSIZE(i64 %57)
  %59 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %54, %41
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* @keyid_entered, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i64, i64* @info_auth_keyid, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66, %60
  %70 = call i8* @AUTH_SEQ(i32 0, i32 0)
  %71 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  %72 = load i64, i64* @req_pkt_size, align 8
  %73 = call i32 @sendpkt(%struct.req_pkt* %14, i64 %72)
  store i32 %73, i32* %7, align 4
  br label %170

74:                                               ; preds = %66, %63
  %75 = load i64, i64* @info_auth_keyid, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = call i64 @getkeyid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %78, i64* %17, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %170

84:                                               ; preds = %77
  %85 = load i64, i64* %17, align 8
  store i64 %85, i64* @info_auth_keyid, align 8
  br label %86

86:                                               ; preds = %84, %74
  %87 = load i64, i64* @info_auth_keyid, align 8
  %88 = call i32 @authistrusted(i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @info_auth_keytype, align 4
  %92 = call i8* @getpass_keytype(i32 %91)
  store i8* %92, i8** %21, align 8
  %93 = load i8*, i8** %21, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 0, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %170

101:                                              ; preds = %90
  %102 = load i64, i64* @info_auth_keyid, align 8
  %103 = load i32, i32* @info_auth_keytype, align 4
  %104 = load i8*, i8** %21, align 8
  %105 = bitcast i8* %104 to i8**
  %106 = call i32 @authusekey(i64 %102, i32 %103, i8** %105)
  %107 = load i64, i64* @info_auth_keyid, align 8
  %108 = call i32 @authtrust(i64 %107, i32 1)
  br label %109

109:                                              ; preds = %101, %86
  %110 = call i8* @AUTH_SEQ(i32 1, i32 0)
  %111 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %14, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  %112 = load i32, i32* @info_auth_hashlen, align 4
  %113 = icmp sgt i32 %112, 16
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load i64, i64* @REQ_LEN_NOMAC, align 8
  %116 = load i64, i64* @req_pkt_size, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 1, i32* %7, align 4
  br label %170

119:                                              ; preds = %114
  %120 = load i64, i64* @REQ_LEN_HDR, align 8
  %121 = load i64, i64* %15, align 8
  %122 = add i64 %120, %121
  %123 = add i64 %122, 4
  store i64 %123, i64* %16, align 8
  %124 = load i64, i64* %16, align 8
  %125 = add i64 %124, 3
  %126 = and i64 %125, -4
  store i64 %126, i64* %16, align 8
  br label %129

127:                                              ; preds = %109
  %128 = load i64, i64* @req_pkt_size, align 8
  store i64 %128, i64* %16, align 8
  br label %129

129:                                              ; preds = %127, %119
  %130 = bitcast %struct.req_pkt* %14 to i8*
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = bitcast i8* %132 to i32*
  store i32* %133, i32** %19, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 -1
  store i32* %135, i32** %19, align 8
  %136 = call i32 @get_systime(i32* %18)
  %137 = call i32 @L_ADD(i32* %18, i32* @delay_time)
  %138 = load i32*, i32** %19, align 8
  %139 = call i32 @HTONL_FP(i32* %18, i32* %138)
  %140 = load i64, i64* @info_auth_keyid, align 8
  %141 = bitcast %struct.req_pkt* %14 to i8*
  %142 = load i64, i64* %16, align 8
  %143 = call i32 @size2int_chk(i64 %142)
  %144 = call i64 @authencrypt(i64 %140, i8* %141, i32 %143)
  store i64 %144, i64* %20, align 8
  %145 = load i64, i64* %20, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %129
  %148 = load i32, i32* @stderr, align 4
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %170

150:                                              ; preds = %129
  %151 = load i64, i64* %20, align 8
  %152 = load i32, i32* @info_auth_hashlen, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, 4
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i32, i32* @stderr, align 4
  %158 = load i64, i64* %20, align 8
  %159 = load i32, i32* @info_auth_hashlen, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, 4
  %162 = load i32, i32* @info_auth_hashlen, align 4
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %158, i64 %161, i32 %162)
  store i32 1, i32* %7, align 4
  br label %170

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %20, align 8
  %168 = add i64 %166, %167
  %169 = call i32 @sendpkt(%struct.req_pkt* %14, i64 %168)
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %165, %156, %147, %118, %98, %81, %69
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local i32 @ZERO(%struct.req_pkt* byval(%struct.req_pkt) align 8) #1

declare dso_local i32 @RM_VN_MODE(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i8* @ERR_NITEMS(i32, i64) #1

declare dso_local i8* @MBZ_ITEMSIZE(i64) #1

declare dso_local i8* @AUTH_SEQ(i32, i32) #1

declare dso_local i32 @sendpkt(%struct.req_pkt*, i64) #1

declare dso_local i64 @getkeyid(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @authistrusted(i64) #1

declare dso_local i8* @getpass_keytype(i32) #1

declare dso_local i32 @authusekey(i64, i32, i8**) #1

declare dso_local i32 @authtrust(i64, i32) #1

declare dso_local i32 @get_systime(i32*) #1

declare dso_local i32 @L_ADD(i32*, i32*) #1

declare dso_local i32 @HTONL_FP(i32*, i32*) #1

declare dso_local i64 @authencrypt(i64, i8*, i32) #1

declare dso_local i32 @size2int_chk(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
