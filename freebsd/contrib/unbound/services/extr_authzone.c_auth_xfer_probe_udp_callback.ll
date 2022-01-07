; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_probe_udp_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_probe_udp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32 }
%struct.comm_reply = type { i32* }
%struct.auth_xfer = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32*, i32, %struct.module_env* }
%struct.module_env = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.auth_master = type { i32 }

@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"auth zone %s: soa probe serial is %u\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"auth_zone updated, start transfer\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"auth_zone master reports unchanged soa serial\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"auth zone %s: bad reply to soa probe\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"auth zone %s: soa probe failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_xfer_probe_udp_callback(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca %struct.auth_xfer*, align 8
  %11 = alloca %struct.module_env*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca %struct.auth_master*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca [256 x i8], align 16
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.auth_xfer*
  store %struct.auth_xfer* %18, %struct.auth_xfer** %10, align 8
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = call i32 @log_assert(%struct.TYPE_8__* %21)
  %23 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %24 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %23, i32 0, i32 2
  %25 = call i32 @lock_basic_lock(i32* %24)
  %26 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %27 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load %struct.module_env*, %struct.module_env** %29, align 8
  store %struct.module_env* %30, %struct.module_env** %11, align 8
  %31 = load %struct.module_env*, %struct.module_env** %11, align 8
  %32 = getelementptr inbounds %struct.module_env, %struct.module_env* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %39 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %38, i32 0, i32 2
  %40 = call i32 @lock_basic_unlock(i32* %39)
  store i32 0, i32* %5, align 4
  br label %175

41:                                               ; preds = %4
  %42 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %43 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %45 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @comm_timer_disable(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @NETEVENT_NOERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %145

53:                                               ; preds = %41
  store i64 0, i64* %12, align 8
  %54 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %55 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %58 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %59 = call i64 @check_packet_ok(i32 %56, i32 %57, %struct.auth_xfer* %58, i64* %12)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %130

61:                                               ; preds = %53
  %62 = load i64, i64* @verbosity, align 8
  %63 = load i64, i64* @VERB_ALGO, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %67 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %70 = call i32 @dname_str(i32 %68, i8* %69)
  %71 = load i64, i64* @VERB_ALGO, align 8
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %73 = load i64, i64* %12, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i64, i8*, ...) @verbose(i64 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %74)
  br label %76

76:                                               ; preds = %65, %61
  %77 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @xfr_serial_means_update(%struct.auth_xfer* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %76
  %82 = load i64, i64* @VERB_ALGO, align 8
  %83 = call i32 (i64, i8*, ...) @verbose(i64 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %85 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %84, i32 0, i32 3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %116

90:                                               ; preds = %81
  %91 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %92 = call %struct.auth_master* @xfr_probe_current_master(%struct.auth_xfer* %91)
  store %struct.auth_master* %92, %struct.auth_master** %14, align 8
  %93 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %94 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = icmp ne %struct.TYPE_6__* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %90
  %100 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %101 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %100, i32 0, i32 3
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  store %struct.auth_master* null, %struct.auth_master** %14, align 8
  br label %109

109:                                              ; preds = %108, %99, %90
  %110 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %111 = call i32 @xfr_probe_disown(%struct.auth_xfer* %110)
  %112 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %113 = load %struct.module_env*, %struct.module_env** %11, align 8
  %114 = load %struct.auth_master*, %struct.auth_master** %14, align 8
  %115 = call i32 @xfr_start_transfer(%struct.auth_xfer* %112, %struct.module_env* %113, %struct.auth_master* %114)
  store i32 0, i32* %5, align 4
  br label %175

116:                                              ; preds = %81
  %117 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %118 = call i32 @xfr_probe_disown(%struct.auth_xfer* %117)
  %119 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %120 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %119, i32 0, i32 2
  %121 = call i32 @lock_basic_unlock(i32* %120)
  store i32 0, i32* %5, align 4
  br label %175

122:                                              ; preds = %76
  %123 = load i64, i64* @VERB_ALGO, align 8
  %124 = call i32 (i64, i8*, ...) @verbose(i64 %123, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %126 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %122
  br label %144

130:                                              ; preds = %53
  %131 = load i64, i64* @verbosity, align 8
  %132 = load i64, i64* @VERB_ALGO, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %136 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %139 = call i32 @dname_str(i32 %137, i8* %138)
  %140 = load i64, i64* @VERB_ALGO, align 8
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %142 = call i32 (i64, i8*, ...) @verbose(i64 %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %134, %130
  br label %144

144:                                              ; preds = %143, %129
  br label %159

145:                                              ; preds = %41
  %146 = load i64, i64* @verbosity, align 8
  %147 = load i64, i64* @VERB_ALGO, align 8
  %148 = icmp sge i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %151 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %154 = call i32 @dname_str(i32 %152, i8* %153)
  %155 = load i64, i64* @VERB_ALGO, align 8
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %157 = call i32 (i64, i8*, ...) @verbose(i64 %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %149, %145
  br label %159

159:                                              ; preds = %158, %144
  %160 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %161 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @comm_point_delete(i32* %164)
  %166 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %167 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  store i32* null, i32** %169, align 8
  %170 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %171 = call i32 @xfr_probe_nextmaster(%struct.auth_xfer* %170)
  %172 = load %struct.auth_xfer*, %struct.auth_xfer** %10, align 8
  %173 = load %struct.module_env*, %struct.module_env** %11, align 8
  %174 = call i32 @xfr_probe_send_or_end(%struct.auth_xfer* %172, %struct.module_env* %173)
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %159, %116, %109, %37
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @log_assert(%struct.TYPE_8__*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @comm_timer_disable(i32) #1

declare dso_local i64 @check_packet_ok(i32, i32, %struct.auth_xfer*, i64*) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @verbose(i64, i8*, ...) #1

declare dso_local i64 @xfr_serial_means_update(%struct.auth_xfer*, i64) #1

declare dso_local %struct.auth_master* @xfr_probe_current_master(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_probe_disown(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_start_transfer(%struct.auth_xfer*, %struct.module_env*, %struct.auth_master*) #1

declare dso_local i32 @comm_point_delete(i32*) #1

declare dso_local i32 @xfr_probe_nextmaster(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_probe_send_or_end(%struct.auth_xfer*, %struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
