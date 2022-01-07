; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_conn_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_conn_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ha_softc = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__*, i64, i64, i32* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SBS_CANTRCVMORE = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@CTL_HA_CHAN_MAX = common dso_local global i32 0, align 4
@CTL_HA_EVT_LINK_CHANGE = common dso_local global i32 0, align 4
@CTL_HA_LINK_ONLINE = common dso_local global i32 0, align 4
@ctl_ha_rx_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ha_rx\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error creating CTL HA rx thread!\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctl_ha_conn_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_ha_conn_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ha_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ha_softc*
  store %struct.ha_softc* %6, %struct.ha_softc** %3, align 8
  br label %7

7:                                                ; preds = %1, %193
  %8 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %12, %7
  %18 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %19 = call i32 @ctl_ha_close(%struct.ha_softc* %18)
  %20 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %17
  %30 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %31 = call i32 @ctl_ha_lclose(%struct.ha_softc* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %199

40:                                               ; preds = %32
  br label %67

41:                                               ; preds = %12
  %42 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %42, i32 0, i32 6
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %47, i32 0, i32 6
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %46
  %54 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %54, i32 0, i32 6
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53, %46
  %64 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %65 = call i32 @ctl_ha_close(%struct.ha_softc* %64)
  br label %66

66:                                               ; preds = %63, %53, %41
  br label %67

67:                                               ; preds = %66, %40
  %68 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %68, i32 0, i32 6
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp eq %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %99

72:                                               ; preds = %67
  %73 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %73, i32 0, i32 10
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %79 = call i32 @ctl_ha_accept(%struct.ha_softc* %78)
  br label %98

80:                                               ; preds = %72
  %81 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %87 = call i32 @ctl_ha_listen(%struct.ha_softc* %86)
  br label %97

88:                                               ; preds = %80
  %89 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %95 = call i32 @ctl_ha_connect(%struct.ha_softc* %94)
  br label %96

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97, %77
  br label %99

99:                                               ; preds = %98, %67
  %100 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %101 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %100, i32 0, i32 6
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = icmp ne %struct.TYPE_6__* %102, null
  br i1 %103, label %104, label %154

104:                                              ; preds = %99
  %105 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %104
  %110 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %110, i32 0, i32 6
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %109
  %117 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %118 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %117, i32 0, i32 6
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SS_ISCONNECTING, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %116
  %126 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %127 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %129 = load i32, i32* @CTL_HA_CHAN_MAX, align 4
  %130 = load i32, i32* @CTL_HA_EVT_LINK_CHANGE, align 4
  %131 = load i32, i32* @CTL_HA_LINK_ONLINE, align 4
  %132 = call i32 @ctl_ha_evt(%struct.ha_softc* %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %134 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  %135 = load i32, i32* @ctl_ha_rx_thread, align 4
  %136 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %137 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %137, i32 0, i32 7
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = call i32 @kproc_kthread_add(i32 %135, %struct.ha_softc* %136, i32* %140, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %125
  %145 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %146 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %147 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %146, i32 0, i32 3
  store i32 0, i32* %147, align 4
  %148 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %149 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %144, %125
  br label %151

151:                                              ; preds = %150, %116, %109, %104
  %152 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %153 = call i32 @ctl_ha_send(%struct.ha_softc* %152)
  br label %154

154:                                              ; preds = %151, %99
  %155 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %156 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %155, i32 0, i32 4
  %157 = call i32 @mtx_lock(i32* %156)
  %158 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %159 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %158, i32 0, i32 6
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = icmp ne %struct.TYPE_6__* %160, null
  br i1 %161, label %162, label %180

162:                                              ; preds = %154
  %163 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %164 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %163, i32 0, i32 6
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %162
  %170 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %171 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %170, i32 0, i32 6
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169, %162
  br label %193

180:                                              ; preds = %169, %154
  %181 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %182 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %180
  %186 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %187 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %186, i32 0, i32 5
  %188 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %188, i32 0, i32 4
  %190 = load i32, i32* @hz, align 4
  %191 = call i32 @msleep(i64* %187, i32* %189, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %185, %180
  br label %193

193:                                              ; preds = %192, %179
  %194 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %195 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %194, i32 0, i32 5
  store i64 0, i64* %195, align 8
  %196 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %197 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %196, i32 0, i32 4
  %198 = call i32 @mtx_unlock(i32* %197)
  br label %7

199:                                              ; preds = %39
  %200 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %201 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %200, i32 0, i32 4
  %202 = call i32 @mtx_lock(i32* %201)
  %203 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %204 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %203, i32 0, i32 1
  store i32 2, i32* %204, align 4
  %205 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %206 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %205, i32 0, i32 5
  %207 = call i32 @wakeup(i64* %206)
  %208 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %209 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %208, i32 0, i32 4
  %210 = call i32 @mtx_unlock(i32* %209)
  %211 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @ctl_ha_close(%struct.ha_softc*) #1

declare dso_local i32 @ctl_ha_lclose(%struct.ha_softc*) #1

declare dso_local i32 @ctl_ha_accept(%struct.ha_softc*) #1

declare dso_local i32 @ctl_ha_listen(%struct.ha_softc*) #1

declare dso_local i32 @ctl_ha_connect(%struct.ha_softc*) #1

declare dso_local i32 @ctl_ha_evt(%struct.ha_softc*, i32, i32, i32) #1

declare dso_local i32 @kproc_kthread_add(i32, %struct.ha_softc*, i32*, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ctl_ha_send(%struct.ha_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
