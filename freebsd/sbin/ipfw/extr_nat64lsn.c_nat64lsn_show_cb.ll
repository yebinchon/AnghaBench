; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_show_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_show_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@co = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"set %u \00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"nat64lsn %s prefix4 %s/%u\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c" prefix6 %s/%u\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" states_chunks %u\00", align 1
@NAT64LSN_HOST_AGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c" host_del_age %u\00", align 1
@NAT64LSN_PG_AGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c" pg_del_age %u\00", align 1
@NAT64LSN_TCP_SYN_AGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c" tcp_syn_age %u\00", align 1
@NAT64LSN_TCP_FIN_AGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c" tcp_close_age %u\00", align 1
@NAT64LSN_TCP_EST_AGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c" tcp_est_age %u\00", align 1
@NAT64LSN_UDP_AGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c" udp_age %u\00", align 1
@NAT64LSN_ICMP_AGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c" icmp_age %u\00", align 1
@NAT64LSN_JMAXLEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c" jmaxlen %u\00", align 1
@NAT64_LOG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c" log\00", align 1
@NAT64_ALLOW_PRIVATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c" allow_private\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @nat64lsn_show_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_show_cb(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @ESRCH, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %216

26:                                               ; preds = %17, %3
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @ESRCH, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %216

37:                                               ; preds = %29, %26
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 0), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @AF_INET, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 15
  %54 = trunc i64 %12 to i32
  %55 = call i32 @inet_ntop(i32 %51, i32* %53, i8* %14, i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %14, i32 %61)
  %63 = load i32, i32* @AF_INET6, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 14
  %66 = trunc i64 %12 to i32
  %67 = call i32 @inet_ntop(i32 %63, i32* %65, i8* %14, i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %14, i32 %70)
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %50
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %74, %50
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NAT64LSN_HOST_AGE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87, %84
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %87
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @NAT64LSN_PG_AGE, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101, %98
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %101
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NAT64LSN_TCP_SYN_AGE, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115, %112
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %115
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @NAT64LSN_TCP_FIN_AGE, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %129, %126
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %135, %129
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @NAT64LSN_TCP_EST_AGE, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143, %140
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %149, %143
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @NAT64LSN_UDP_AGE, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %157, %154
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %163, %157
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @NAT64LSN_ICMP_AGE, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %171, %168
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %177, %171
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @co, i32 0, i32 1), align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @NAT64LSN_JMAXLEN, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %185, %182
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 12
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %191, %185
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 13
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @NAT64_LOG, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %196
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 13
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %205
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %216

216:                                              ; preds = %214, %35, %24
  %217 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
