; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_enter_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_enter_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.resp_addr = type { i64, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i64 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@respip_redirect = common dso_local global i64 0, align 8
@respip_inform_redirect = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"cannot parse response-ip-data %s: response-ip action for %s is not redirect\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c". %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"bad response-ip-data: %s...\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"bad response-ip-data: %s\00", align 1
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [89 x i8] c"CNAME response-ip data (%s) can not co-exist with other response-ip data for netblock %s\00", align 1
@.str.5 = private unnamed_addr constant [96 x i8] c"response-ip data (%s) can not be added; CNAME response-ip data already in place for netblock %s\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [82 x i8] c"response-ip data %s record type does not correspond to netblock %s address family\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regional*, %struct.resp_addr*, i8*, i8*)* @respip_enter_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @respip_enter_rr(%struct.regional* %0, %struct.resp_addr* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regional*, align 8
  %7 = alloca %struct.resp_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [65536 x i8], align 16
  %19 = alloca [64 x i8], align 16
  %20 = alloca %struct.packed_rrset_data*, align 8
  %21 = alloca %struct.sockaddr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.regional* %0, %struct.regional** %6, align 8
  store %struct.resp_addr* %1, %struct.resp_addr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  store i32* null, i32** %16, align 8
  store i64 0, i64* %17, align 8
  %28 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %29 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @respip_redirect, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %4
  %34 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %35 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @respip_inform_redirect, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %167

43:                                               ; preds = %33, %4
  %44 = getelementptr inbounds [65536 x i8], [65536 x i8]* %18, i64 0, i64 0
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @snprintf(i8* %44, i32 65536, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* %22, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %22, align 4
  %51 = icmp sge i32 %50, 65536
  br i1 %51, label %52, label %58

52:                                               ; preds = %49, %43
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strlcpy(i8* %53, i8* %54, i32 64)
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %57 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %167

58:                                               ; preds = %49
  %59 = getelementptr inbounds [65536 x i8], [65536 x i8]* %18, i64 0, i64 0
  %60 = mul nuw i64 4, %25
  %61 = trunc i64 %60 to i32
  %62 = call i32 @rrstr_get_rr_content(i8* %59, i32** %10, i64* %11, i64* %12, i32* %13, i32* %27, i32 %61, i32** %16, i64* %17)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %167

67:                                               ; preds = %58
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @free(i32* %68)
  %70 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %71 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = bitcast i32* %72 to %struct.sockaddr*
  store %struct.sockaddr* %73, %struct.sockaddr** %21, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %79 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0), i8* %83, i8* %84)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %167

86:                                               ; preds = %77, %67
  %87 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %88 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = icmp ne %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %93 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %99 = call i64 @htons(i64 %98)
  %100 = icmp eq i64 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.5, i64 0, i64 0), i8* %102, i8* %103)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %167

105:                                              ; preds = %91, %86
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %105
  %110 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %111 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AF_INET, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %129, label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %121 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AF_INET6, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125, %115
  %130 = load i8*, i8** %8, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0), i8* %130, i8* %131)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %167

133:                                              ; preds = %125, %119, %105
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %137 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = icmp ne %struct.TYPE_8__* %138, null
  br i1 %139, label %153, label %140

140:                                              ; preds = %135
  %141 = load %struct.regional*, %struct.regional** %6, align 8
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* %12, align 8
  %144 = call %struct.TYPE_8__* @new_rrset(%struct.regional* %141, i64 %142, i64 %143)
  %145 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %146 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %145, i32 0, i32 1
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %146, align 8
  %147 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %148 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = icmp ne %struct.TYPE_8__* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %167

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152, %135
  %154 = load %struct.resp_addr*, %struct.resp_addr** %7, align 8
  %155 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %158, align 8
  store %struct.packed_rrset_data* %159, %struct.packed_rrset_data** %20, align 8
  %160 = load %struct.regional*, %struct.regional** %6, align 8
  %161 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %20, align 8
  %162 = load i32*, i32** %16, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @rrset_insert_rr(%struct.regional* %160, %struct.packed_rrset_data* %161, i32* %162, i64 %163, i32 %164, i8* %165)
  store i32 %166, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %167

167:                                              ; preds = %153, %151, %129, %101, %82, %64, %52, %39
  %168 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_err(i8*, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @rrstr_get_rr_content(i8*, i32**, i64*, i64*, i32*, i32*, i32, i32**, i64*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i64 @htons(i64) #2

declare dso_local %struct.TYPE_8__* @new_rrset(%struct.regional*, i64, i64) #2

declare dso_local i32 @rrset_insert_rr(%struct.regional*, %struct.packed_rrset_data*, i32*, i64, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
