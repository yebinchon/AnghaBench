; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_move_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_move_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32 }
%struct.ctl_be_lun = type { %struct.ctl_be_ramdisk_lun* }
%struct.ctl_be_ramdisk_lun = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"ctl_backend_ramdisk_move_done\0A\00", align 1
@M_RAMDISK = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_MASK = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_OUT = common dso_local global i32 0, align 4
@CTL_LLF_COMPARE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_backend_ramdisk_move_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_backend_ramdisk_move_done(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_be_lun*, align 8
  %5 = alloca %struct.ctl_be_ramdisk_lun*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %6 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %7 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %6)
  store %struct.ctl_be_lun* %7, %struct.ctl_be_lun** %4, align 8
  %8 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %9 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %8, i32 0, i32 0
  %10 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %9, align 8
  store %struct.ctl_be_ramdisk_lun* %10, %struct.ctl_be_ramdisk_lun** %5, align 8
  %11 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %13 = bitcast %union.ctl_io* %12 to %struct.TYPE_8__*
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %18 = bitcast %union.ctl_io* %17 to %struct.TYPE_7__*
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @M_RAMDISK, align 4
  %28 = call i32 @free(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %31 = bitcast %union.ctl_io* %30 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %35 = bitcast %union.ctl_io* %34 to %struct.TYPE_7__*
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %33
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %42 = bitcast %union.ctl_io* %41 to %struct.TYPE_8__*
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %183

49:                                               ; preds = %29
  %50 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %51 = bitcast %union.ctl_io* %50 to %struct.TYPE_8__*
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %57 = bitcast %union.ctl_io* %56 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CTL_STATUS_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @CTL_STATUS_NONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %66 = bitcast %union.ctl_io* %65 to %struct.TYPE_8__*
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CTL_STATUS_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @CTL_SUCCESS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %64, %55
  %74 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %75 = bitcast %union.ctl_io* %74 to %struct.TYPE_7__*
  %76 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %77 = bitcast %union.ctl_io* %76 to %struct.TYPE_8__*
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ctl_set_internal_failure(%struct.TYPE_7__* %75, i32 1, i64 %79)
  br label %182

81:                                               ; preds = %64, %49
  %82 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %83 = bitcast %union.ctl_io* %82 to %struct.TYPE_7__*
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %89 = bitcast %union.ctl_io* %88 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CTL_FLAG_DATA_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @CTL_FLAG_DATA_OUT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %87
  %97 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %98 = bitcast %union.ctl_io* %97 to %struct.TYPE_8__*
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CTL_STATUS_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @CTL_STATUS_NONE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %114, label %105

105:                                              ; preds = %96
  %106 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %107 = bitcast %union.ctl_io* %106 to %struct.TYPE_8__*
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CTL_STATUS_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @CTL_SUCCESS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %105, %96
  %115 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %116 = bitcast %union.ctl_io* %115 to %struct.TYPE_7__*
  %117 = call i32 @ctl_set_invalid_field_ciu(%struct.TYPE_7__* %116)
  br label %181

118:                                              ; preds = %105, %87, %81
  %119 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %120 = bitcast %union.ctl_io* %119 to %struct.TYPE_8__*
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %180

124:                                              ; preds = %118
  %125 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %126 = bitcast %union.ctl_io* %125 to %struct.TYPE_8__*
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CTL_STATUS_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @CTL_STATUS_NONE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %180

133:                                              ; preds = %124
  %134 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %135 = call %struct.TYPE_10__* @ARGS(%union.ctl_io* %134)
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @CTL_LLF_COMPARE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %143 = call i64 @ctl_backend_ramdisk_cmp(%union.ctl_io* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %184

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %133
  %148 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %149 = call %struct.TYPE_10__* @ARGS(%union.ctl_io* %148)
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %153 = call %struct.TYPE_9__* @PRIV(%union.ctl_io* %152)
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %151, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %147
  %158 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %159 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %158, i32 0, i32 2
  %160 = call i32 @mtx_lock(i32* %159)
  %161 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %162 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %161, i32 0, i32 3
  %163 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %164 = bitcast %union.ctl_io* %163 to %struct.TYPE_8__*
  %165 = load i32, i32* @links, align 4
  %166 = call i32 @STAILQ_INSERT_TAIL(i32* %162, %struct.TYPE_8__* %164, i32 %165)
  %167 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %168 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %167, i32 0, i32 2
  %169 = call i32 @mtx_unlock(i32* %168)
  %170 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %171 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %174 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %173, i32 0, i32 0
  %175 = call i32 @taskqueue_enqueue(i32 %172, i32* %174)
  store i32 0, i32* %2, align 4
  br label %187

176:                                              ; preds = %147
  %177 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %178 = bitcast %union.ctl_io* %177 to %struct.TYPE_7__*
  %179 = call i32 @ctl_set_success(%struct.TYPE_7__* %178)
  br label %180

180:                                              ; preds = %176, %124, %118
  br label %181

181:                                              ; preds = %180, %114
  br label %182

182:                                              ; preds = %181, %73
  br label %183

183:                                              ; preds = %182, %48
  br label %184

184:                                              ; preds = %183, %145
  %185 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %186 = call i32 @ctl_data_submit_done(%union.ctl_io* %185)
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %184, %157
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @ctl_set_internal_failure(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @ctl_set_invalid_field_ciu(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_10__* @ARGS(%union.ctl_io*) #1

declare dso_local i64 @ctl_backend_ramdisk_cmp(%union.ctl_io*) #1

declare dso_local %struct.TYPE_9__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @ctl_set_success(%struct.TYPE_7__*) #1

declare dso_local i32 @ctl_data_submit_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
