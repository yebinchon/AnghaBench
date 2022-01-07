; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_timer.c_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_timer.c_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i64, i32, %struct.peer* }
%struct.TYPE_3__ = type { i32 }

@current_time = common dso_local global i32 0, align 4
@adjust_timer = common dso_local global i32 0, align 4
@peer_list = common dso_local global %struct.peer* null, align 8
@sys_orphan = common dso_local global i64 0, align 8
@STRATUM_UNSPEC = common dso_local global i64 0, align 8
@sys_peer = common dso_local global i32* null, align 8
@orphwait = common dso_local global i32 0, align 4
@sys_leap = common dso_local global i64 0, align 8
@LEAP_NOTINSYNC = common dso_local global i64 0, align 8
@LEAP_NOWARNING = common dso_local global i32 0, align 4
@sys_stratum = common dso_local global i32 0, align 4
@LOOPBACKADR = common dso_local global i32 0, align 4
@sys_refid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LOOP\00", align 1
@sys_offset = common dso_local global i64 0, align 8
@sys_rootdelay = common dso_local global i64 0, align 8
@sys_rootdisp = common dso_local global i64 0, align 8
@leapsec = common dso_local global i64 0, align 8
@LSPROX_NOWARN = common dso_local global i64 0, align 8
@LSPROX_ANNOUNCE = common dso_local global i64 0, align 8
@leapdif = common dso_local global i64 0, align 8
@LEAP_ADDSECOND = common dso_local global i32 0, align 4
@LEAP_DELSECOND = common dso_local global i32 0, align 4
@huffpuff_timer = common dso_local global i32 0, align 4
@HUFFPUFF = common dso_local global i64 0, align 8
@interface_interval = common dso_local global i64 0, align 8
@interface_timer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"timer: interface update\0A\00", align 1
@worker_idle_timer = common dso_local global i32 0, align 4
@stats_timer = common dso_local global i32 0, align 4
@SECSPERHR = common dso_local global i64 0, align 8
@leapf_timer = common dso_local global i32 0, align 4
@SECSPERDAY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FLAG_REFCLOCK = common dso_local global i32 0, align 4
@crypto_flags = common dso_local global i64 0, align 8
@keys_timer = common dso_local global i32 0, align 4
@revoke_timer = common dso_local global i32 0, align 4
@sys_automax = common dso_local global i64 0, align 8
@sys_private = common dso_local global i32 0, align 4
@sys_revoke = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer() #0 {
  %1 = alloca %struct.peer*, align 8
  %2 = alloca %struct.peer*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @current_time, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @current_time, align 4
  %7 = load i32, i32* @adjust_timer, align 4
  %8 = load i32, i32* @current_time, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @adjust_timer, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @adjust_timer, align 4
  %13 = call i32 (...) @adj_host_clock()
  br label %14

14:                                               ; preds = %10, %0
  %15 = load %struct.peer*, %struct.peer** @peer_list, align 8
  store %struct.peer* %15, %struct.peer** %1, align 8
  br label %16

16:                                               ; preds = %42, %14
  %17 = load %struct.peer*, %struct.peer** %1, align 8
  %18 = icmp ne %struct.peer* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load %struct.peer*, %struct.peer** %1, align 8
  %21 = getelementptr inbounds %struct.peer, %struct.peer* %20, i32 0, i32 3
  %22 = load %struct.peer*, %struct.peer** %21, align 8
  store %struct.peer* %22, %struct.peer** %2, align 8
  %23 = load %struct.peer*, %struct.peer** %1, align 8
  %24 = getelementptr inbounds %struct.peer, %struct.peer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.peer*, %struct.peer** %1, align 8
  %29 = getelementptr inbounds %struct.peer, %struct.peer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.peer*, %struct.peer** %1, align 8
  %34 = getelementptr inbounds %struct.peer, %struct.peer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @current_time, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.peer*, %struct.peer** %1, align 8
  %40 = call i32 @transmit(%struct.peer* %39)
  br label %41

41:                                               ; preds = %38, %32
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.peer*, %struct.peer** %2, align 8
  store %struct.peer* %43, %struct.peer** %1, align 8
  br label %16

44:                                               ; preds = %16
  %45 = load i64, i64* @sys_orphan, align 8
  %46 = load i64, i64* @STRATUM_UNSPEC, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load i32*, i32** @sys_peer, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i32, i32* @current_time, align 4
  %53 = load i32, i32* @orphwait, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i64, i64* @sys_leap, align 8
  %57 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @LEAP_NOWARNING, align 4
  %61 = call i32 @set_sys_leap(i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i64, i64* @sys_orphan, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* @sys_stratum, align 4
  %65 = load i32, i32* @sys_stratum, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @LOOPBACKADR, align 4
  %69 = call i32 @htonl(i32 %68)
  store i32 %69, i32* @sys_refid, align 4
  br label %72

70:                                               ; preds = %62
  %71 = call i32 @memcpy(i32* @sys_refid, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %72

72:                                               ; preds = %70, %67
  store i64 0, i64* @sys_offset, align 8
  store i64 0, i64* @sys_rootdelay, align 8
  store i64 0, i64* @sys_rootdisp, align 8
  br label %73

73:                                               ; preds = %72, %51, %48, %44
  %74 = call i32 @get_systime(%struct.TYPE_3__* %3)
  %75 = call i32 @time(i32* %4)
  %76 = load i64, i64* @leapsec, align 8
  %77 = load i64, i64* @LSPROX_NOWARN, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @current_time, align 4
  %81 = and i32 %80, 7
  %82 = icmp eq i32 0, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79, %73
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @sys_leap, align 8
  %87 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @check_leapsec(i32 %85, i32* %4, i32 %89)
  br label %91

91:                                               ; preds = %83, %79
  %92 = load i64, i64* @sys_leap, align 8
  %93 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load i64, i64* @leapsec, align 8
  %97 = load i64, i64* @LSPROX_ANNOUNCE, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i64, i64* @leapdif, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i64, i64* @leapdif, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @LEAP_ADDSECOND, align 4
  %107 = call i32 @set_sys_leap(i32 %106)
  br label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @LEAP_DELSECOND, align 4
  %110 = call i32 @set_sys_leap(i32 %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %115

112:                                              ; preds = %99, %95
  %113 = load i32, i32* @LEAP_NOWARNING, align 4
  %114 = call i32 @set_sys_leap(i32 %113)
  br label %115

115:                                              ; preds = %112, %111
  br label %116

116:                                              ; preds = %115, %91
  %117 = load i32, i32* @huffpuff_timer, align 4
  %118 = load i32, i32* @current_time, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i64, i64* @HUFFPUFF, align 8
  %122 = load i32, i32* @huffpuff_timer, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* @huffpuff_timer, align 4
  %126 = call i32 (...) @huffpuff()
  br label %127

127:                                              ; preds = %120, %116
  %128 = load i64, i64* @interface_interval, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i32, i32* @interface_timer, align 4
  %132 = load i32, i32* @current_time, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load i32, i32* @current_time, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @interface_interval, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @timer_interfacetimeout(i64 %138)
  %140 = call i32 @DPRINTF(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %141 = call i32 @interface_update(i32* null, i32* null)
  br label %142

142:                                              ; preds = %134, %130, %127
  %143 = load i32, i32* @worker_idle_timer, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* @worker_idle_timer, align 4
  %147 = load i32, i32* @current_time, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call i32 (...) @worker_idle_timer_fired()
  br label %151

151:                                              ; preds = %149, %145, %142
  %152 = load i32, i32* @stats_timer, align 4
  %153 = load i32, i32* @current_time, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %181

155:                                              ; preds = %151
  %156 = load i64, i64* @SECSPERHR, align 8
  %157 = load i32, i32* @stats_timer, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* @stats_timer, align 4
  %161 = call i32 (...) @write_stats()
  %162 = load i32, i32* @leapf_timer, align 4
  %163 = load i32, i32* @current_time, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %155
  %166 = load i64, i64* @SECSPERDAY, align 8
  %167 = load i32, i32* @leapf_timer, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* @leapf_timer, align 4
  %171 = load i32, i32* @TRUE, align 4
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @check_leap_file(i32 %171, i32 %173, i32* %4)
  br label %180

175:                                              ; preds = %155
  %176 = load i32, i32* @FALSE, align 4
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @check_leap_file(i32 %176, i32 %178, i32* %4)
  br label %180

180:                                              ; preds = %175, %165
  br label %181

181:                                              ; preds = %180, %151
  ret void
}

declare dso_local i32 @adj_host_clock(...) #1

declare dso_local i32 @transmit(%struct.peer*) #1

declare dso_local i32 @set_sys_leap(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @get_systime(%struct.TYPE_3__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @check_leapsec(i32, i32*, i32) #1

declare dso_local i32 @huffpuff(...) #1

declare dso_local i32 @timer_interfacetimeout(i64) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @interface_update(i32*, i32*) #1

declare dso_local i32 @worker_idle_timer_fired(...) #1

declare dso_local i32 @write_stats(...) #1

declare dso_local i32 @check_leap_file(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
