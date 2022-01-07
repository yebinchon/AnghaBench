; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_print_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32, %struct.TYPE_14__, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i8* }

@.str = private unnamed_addr constant [30 x i8] c"   OpenSM Version       : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"   SM State             : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"   SM Priority          : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"   SA State             : %s\0A\00", align 1
@OSM_ROUTING_ENGINE_TYPE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"   Routing Engine       : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"   Loaded event plugins :\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" <none>\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [457 x i8] c"\0A   MAD stats\0A   ---------\0A   QP0 MADs outstanding           : %u\0A   QP0 MADs outstanding (on wire) : %u\0A   QP0 MADs rcvd                  : %u\0A   QP0 MADs sent                  : %u\0A   QP0 unicasts sent              : %u\0A   QP0 unknown MADs rcvd          : %u\0A   SA MADs outstanding            : %u\0A   SA MADs rcvd                   : %u\0A   SA MADs sent                   : %u\0A   SA unknown MADs rcvd           : %u\0A   SA MADs ignored                : %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [307 x i8] c"\0A   Subnet flags\0A   ------------\0A   Sweeping enabled               : %d\0A   Sweep interval (seconds)       : %u\0A   Ignore existing lfts           : %d\0A   Subnet Init errors             : %d\0A   In sweep hop 0                 : %d\0A   First time master sweep        : %d\0A   Coming out of standby          : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*)* @print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %189

9:                                                ; preds = %2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = call i32 @cl_plock_acquire(i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @sm_state_str(i32 %22)
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @sa_state_str(i32 %36)
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %9
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @osm_routing_engine_type_str(i32 %48)
  br label %53

50:                                               ; preds = %9
  %51 = load i32, i32* @OSM_ROUTING_ENGINE_TYPE_NONE, align 4
  %52 = call i8* @osm_routing_engine_type_str(i32 %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i8* [ %49, %43 ], [ %52, %50 ]
  store i8* %54, i8** %6, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 5
  %62 = call i32* @cl_qlist_head(i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 5
  %65 = call i32* @cl_qlist_end(i32* %64)
  %66 = icmp eq i32* %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %53
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 5
  %73 = call i32* @cl_qlist_head(i32* %72)
  store i32* %73, i32** %5, align 8
  br label %74

74:                                               ; preds = %87, %70
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 5
  %78 = call i32* @cl_qlist_end(i32* %77)
  %79 = icmp ne i32* %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = bitcast i32* %82 to %struct.TYPE_16__*
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %80
  %88 = load i32*, i32** %5, align 8
  %89 = call i32* @cl_qlist_next(i32* %88)
  store i32* %89, i32** %5, align 8
  br label %74

90:                                               ; preds = %74
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 10
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([457 x i8], [457 x i8]* @.str.9, i64 0, i64 0), i32 %98, i32 %103, i32 %108, i32 %113, i32 %118, i32 %123, i32 %128, i32 %133, i32 %138, i32 %143, i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.10, i64 0, i64 0), i32 %154, i32 %159, i32 %163, i32 %167, i32 %171, i32 %175, i32 %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 @dump_sms(%struct.TYPE_15__* %181, i32* %182)
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 (i32*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = call i32 @cl_plock_release(i32* %187)
  br label %189

189:                                              ; preds = %90, %2
  ret void
}

declare dso_local i32 @cl_plock_acquire(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @sm_state_str(i32) #1

declare dso_local i8* @sa_state_str(i32) #1

declare dso_local i8* @osm_routing_engine_type_str(i32) #1

declare dso_local i32* @cl_qlist_head(i32*) #1

declare dso_local i32* @cl_qlist_end(i32*) #1

declare dso_local i32* @cl_qlist_next(i32*) #1

declare dso_local i32 @dump_sms(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @cl_plock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
