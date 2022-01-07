; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i32, %struct.TYPE_15__**, i64, i32*, %struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Could not create views: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not set up views\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not setup access control list\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Could not setup TCP connection limits\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"dnscrypt enabled in config but unbound was not built with dnscrypt support\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Could not create local zones: out of memory\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Could not set up local zones\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Could not create response IP set\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Could not set up response IP set\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Could not set up per-view response IP sets\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"auth_zones could not be setup\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"respip\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"response-ip options require respip module\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Could not initialize main thread\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SHM has failed\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"start of service (%s).\00", align 1
@PACKAGE_STRING = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"service stopped (%s).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daemon_fork(%struct.daemon* %0) #0 {
  %2 = alloca %struct.daemon*, align 8
  %3 = alloca i32, align 4
  store %struct.daemon* %0, %struct.daemon** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.daemon*, %struct.daemon** %2, align 8
  %5 = call i32 @log_assert(%struct.daemon* %4)
  %6 = call i32 (...) @views_create()
  %7 = load %struct.daemon*, %struct.daemon** %2, align 8
  %8 = getelementptr inbounds %struct.daemon, %struct.daemon* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = icmp ne i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @fatal_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.daemon*, %struct.daemon** %2, align 8
  %14 = getelementptr inbounds %struct.daemon, %struct.daemon* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.daemon*, %struct.daemon** %2, align 8
  %17 = getelementptr inbounds %struct.daemon, %struct.daemon* %16, i32 0, i32 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = call i32 @views_apply_cfg(i32 %15, %struct.TYPE_16__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = call i32 @fatal_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %12
  %24 = load %struct.daemon*, %struct.daemon** %2, align 8
  %25 = getelementptr inbounds %struct.daemon, %struct.daemon* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.daemon*, %struct.daemon** %2, align 8
  %28 = getelementptr inbounds %struct.daemon, %struct.daemon* %27, i32 0, i32 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = load %struct.daemon*, %struct.daemon** %2, align 8
  %31 = getelementptr inbounds %struct.daemon, %struct.daemon* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @acl_list_apply_cfg(i32 %26, %struct.TYPE_16__* %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %23
  %36 = call i32 @fatal_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %23
  %38 = load %struct.daemon*, %struct.daemon** %2, align 8
  %39 = getelementptr inbounds %struct.daemon, %struct.daemon* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.daemon*, %struct.daemon** %2, align 8
  %42 = getelementptr inbounds %struct.daemon, %struct.daemon* %41, i32 0, i32 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = call i32 @tcl_list_apply_cfg(i32 %40, %struct.TYPE_16__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = call i32 @fatal_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %37
  %49 = load %struct.daemon*, %struct.daemon** %2, align 8
  %50 = getelementptr inbounds %struct.daemon, %struct.daemon* %49, i32 0, i32 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 @fatal_exit(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %48
  %58 = call i32 (...) @local_zones_create()
  %59 = load %struct.daemon*, %struct.daemon** %2, align 8
  %60 = getelementptr inbounds %struct.daemon, %struct.daemon* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 8
  %61 = icmp ne i32 %58, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call i32 @fatal_exit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load %struct.daemon*, %struct.daemon** %2, align 8
  %66 = getelementptr inbounds %struct.daemon, %struct.daemon* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.daemon*, %struct.daemon** %2, align 8
  %69 = getelementptr inbounds %struct.daemon, %struct.daemon* %68, i32 0, i32 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = call i32 @local_zones_apply_cfg(i32 %67, %struct.TYPE_16__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %64
  %74 = call i32 @fatal_exit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %64
  %76 = call i32 (...) @respip_set_create()
  %77 = load %struct.daemon*, %struct.daemon** %2, align 8
  %78 = getelementptr inbounds %struct.daemon, %struct.daemon* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = icmp ne i32 %76, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = call i32 @fatal_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75
  %83 = load %struct.daemon*, %struct.daemon** %2, align 8
  %84 = getelementptr inbounds %struct.daemon, %struct.daemon* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.daemon*, %struct.daemon** %2, align 8
  %87 = getelementptr inbounds %struct.daemon, %struct.daemon* %86, i32 0, i32 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = call i32 @respip_global_apply_cfg(i32 %85, %struct.TYPE_16__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %82
  %92 = call i32 @fatal_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %82
  %94 = load %struct.daemon*, %struct.daemon** %2, align 8
  %95 = getelementptr inbounds %struct.daemon, %struct.daemon* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.daemon*, %struct.daemon** %2, align 8
  %98 = getelementptr inbounds %struct.daemon, %struct.daemon* %97, i32 0, i32 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = call i32 @respip_views_apply_cfg(i32 %96, %struct.TYPE_16__* %99, i32* %3)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %93
  %103 = call i32 @fatal_exit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %93
  %105 = load %struct.daemon*, %struct.daemon** %2, align 8
  %106 = getelementptr inbounds %struct.daemon, %struct.daemon* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @respip_set_is_empty(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %110, %104
  %114 = phi i1 [ true, %104 ], [ %112, %110 ]
  %115 = zext i1 %114 to i32
  %116 = load %struct.daemon*, %struct.daemon** %2, align 8
  %117 = getelementptr inbounds %struct.daemon, %struct.daemon* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.daemon*, %struct.daemon** %2, align 8
  %119 = getelementptr inbounds %struct.daemon, %struct.daemon* %118, i32 0, i32 6
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.daemon*, %struct.daemon** %2, align 8
  %124 = getelementptr inbounds %struct.daemon, %struct.daemon* %123, i32 0, i32 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = call i32 @auth_zones_apply_cfg(i32 %122, %struct.TYPE_16__* %125, i32 1)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %113
  %129 = call i32 @fatal_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %113
  %131 = load %struct.daemon*, %struct.daemon** %2, align 8
  %132 = call i32 @daemon_setup_modules(%struct.daemon* %131)
  %133 = load %struct.daemon*, %struct.daemon** %2, align 8
  %134 = getelementptr inbounds %struct.daemon, %struct.daemon* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load %struct.daemon*, %struct.daemon** %2, align 8
  %139 = getelementptr inbounds %struct.daemon, %struct.daemon* %138, i32 0, i32 5
  %140 = call i64 @modstack_find(i32* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 @fatal_exit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %137, %130
  %145 = load %struct.daemon*, %struct.daemon** %2, align 8
  %146 = call i32 @daemon_create_workers(%struct.daemon* %145)
  %147 = load %struct.daemon*, %struct.daemon** %2, align 8
  %148 = call i32 @daemon_start_others(%struct.daemon* %147)
  %149 = load %struct.daemon*, %struct.daemon** %2, align 8
  %150 = getelementptr inbounds %struct.daemon, %struct.daemon* %149, i32 0, i32 1
  %151 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %151, i64 0
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = load %struct.daemon*, %struct.daemon** %2, align 8
  %155 = getelementptr inbounds %struct.daemon, %struct.daemon* %154, i32 0, i32 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load %struct.daemon*, %struct.daemon** %2, align 8
  %158 = getelementptr inbounds %struct.daemon, %struct.daemon* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @worker_init(%struct.TYPE_15__* %153, %struct.TYPE_16__* %156, i32 %161, i32 1)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %144
  %165 = call i32 @fatal_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %144
  %167 = load %struct.daemon*, %struct.daemon** %2, align 8
  %168 = getelementptr inbounds %struct.daemon, %struct.daemon* %167, i32 0, i32 1
  %169 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %169, i64 0
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = call i32 @signal_handling_playback(%struct.TYPE_15__* %171)
  %173 = load %struct.daemon*, %struct.daemon** %2, align 8
  %174 = call i32 @shm_main_init(%struct.daemon* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %166
  %177 = call i32 @log_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %166
  %179 = load i32, i32* @PACKAGE_STRING, align 4
  %180 = call i32 @log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %179)
  %181 = load %struct.daemon*, %struct.daemon** %2, align 8
  %182 = getelementptr inbounds %struct.daemon, %struct.daemon* %181, i32 0, i32 1
  %183 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %183, i64 0
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = call i32 @worker_work(%struct.TYPE_15__* %185)
  %187 = load i32, i32* @PACKAGE_STRING, align 4
  %188 = call i32 @log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %187)
  %189 = load %struct.daemon*, %struct.daemon** %2, align 8
  %190 = call i32 @daemon_stop_others(%struct.daemon* %189)
  %191 = load %struct.daemon*, %struct.daemon** %2, align 8
  %192 = call i32 @shm_main_shutdown(%struct.daemon* %191)
  %193 = load %struct.daemon*, %struct.daemon** %2, align 8
  %194 = getelementptr inbounds %struct.daemon, %struct.daemon* %193, i32 0, i32 1
  %195 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %195, i64 0
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.daemon*, %struct.daemon** %2, align 8
  %201 = getelementptr inbounds %struct.daemon, %struct.daemon* %200, i32 0, i32 2
  store i64 %199, i64* %201, align 8
  ret void
}

declare dso_local i32 @log_assert(%struct.daemon*) #1

declare dso_local i32 @views_create(...) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @views_apply_cfg(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @acl_list_apply_cfg(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @tcl_list_apply_cfg(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @local_zones_create(...) #1

declare dso_local i32 @local_zones_apply_cfg(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @respip_set_create(...) #1

declare dso_local i32 @respip_global_apply_cfg(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @respip_views_apply_cfg(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @respip_set_is_empty(i32) #1

declare dso_local i32 @auth_zones_apply_cfg(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @daemon_setup_modules(%struct.daemon*) #1

declare dso_local i64 @modstack_find(i32*, i8*) #1

declare dso_local i32 @daemon_create_workers(%struct.daemon*) #1

declare dso_local i32 @daemon_start_others(%struct.daemon*) #1

declare dso_local i32 @worker_init(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @signal_handling_playback(%struct.TYPE_15__*) #1

declare dso_local i32 @shm_main_init(%struct.daemon*) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @worker_work(%struct.TYPE_15__*) #1

declare dso_local i32 @daemon_stop_others(%struct.daemon*) #1

declare dso_local i32 @shm_main_shutdown(%struct.daemon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
