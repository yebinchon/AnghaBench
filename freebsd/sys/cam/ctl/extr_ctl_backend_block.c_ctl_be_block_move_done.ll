; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_move_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_move_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32 }
%struct.ctl_be_block_io = type { i64, i32, %struct.ctl_be_block_lun* }
%struct.ctl_be_block_lun = type { i32, i32, i32, i32 }
%struct.ctl_lba_len_flags = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_MASK = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_OUT = common dso_local global i32 0, align 4
@CTL_LLF_READ = common dso_local global i32 0, align 4
@CTL_LLF_COMPARE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_be_block_move_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_move_done(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_be_block_io*, align 8
  %5 = alloca %struct.ctl_be_block_lun*, align 8
  %6 = alloca %struct.ctl_lba_len_flags*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %7 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %8 = call %struct.TYPE_8__* @PRIV(%union.ctl_io* %7)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ctl_be_block_io*
  store %struct.ctl_be_block_io* %11, %struct.ctl_be_block_io** %4, align 8
  %12 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %12, i32 0, i32 2
  %14 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %13, align 8
  store %struct.ctl_be_block_lun* %14, %struct.ctl_be_block_lun** %5, align 8
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %17 = bitcast %union.ctl_io* %16 to %struct.TYPE_7__*
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %26 = bitcast %union.ctl_io* %25 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %24
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %33 = bitcast %union.ctl_io* %32 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %154

40:                                               ; preds = %1
  %41 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %42 = bitcast %union.ctl_io* %41 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %48 = bitcast %union.ctl_io* %47 to %struct.TYPE_7__*
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CTL_STATUS_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @CTL_STATUS_NONE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %46
  %56 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %57 = bitcast %union.ctl_io* %56 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CTL_STATUS_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @CTL_SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %55, %46
  %65 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %66 = bitcast %union.ctl_io* %65 to %struct.TYPE_6__*
  %67 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %68 = bitcast %union.ctl_io* %67 to %struct.TYPE_7__*
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ctl_set_internal_failure(%struct.TYPE_6__* %66, i32 1, i64 %70)
  br label %153

72:                                               ; preds = %55, %40
  %73 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %74 = bitcast %union.ctl_io* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %80 = bitcast %union.ctl_io* %79 to %struct.TYPE_7__*
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CTL_FLAG_DATA_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @CTL_FLAG_DATA_OUT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %78
  %88 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %89 = bitcast %union.ctl_io* %88 to %struct.TYPE_7__*
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CTL_STATUS_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @CTL_STATUS_NONE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %105, label %96

96:                                               ; preds = %87
  %97 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %98 = bitcast %union.ctl_io* %97 to %struct.TYPE_7__*
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CTL_STATUS_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @CTL_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %96, %87
  %106 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %107 = bitcast %union.ctl_io* %106 to %struct.TYPE_6__*
  %108 = call i32 @ctl_set_invalid_field_ciu(%struct.TYPE_6__* %107)
  br label %152

109:                                              ; preds = %96, %78, %72
  %110 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %111 = bitcast %union.ctl_io* %110 to %struct.TYPE_7__*
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %109
  %116 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %117 = bitcast %union.ctl_io* %116 to %struct.TYPE_7__*
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CTL_STATUS_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @CTL_STATUS_NONE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %115
  %125 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %126 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.ctl_lba_len_flags* @ARGS(i32 %127)
  store %struct.ctl_lba_len_flags* %128, %struct.ctl_lba_len_flags** %6, align 8
  %129 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %6, align 8
  %130 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CTL_LLF_READ, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %124
  %136 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %137 = bitcast %union.ctl_io* %136 to %struct.TYPE_6__*
  %138 = call i32 @ctl_set_success(%struct.TYPE_6__* %137)
  br label %150

139:                                              ; preds = %124
  %140 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %6, align 8
  %141 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CTL_LLF_COMPARE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %148 = call i32 @ctl_be_block_compare(%union.ctl_io* %147)
  br label %149

149:                                              ; preds = %146, %139
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %115, %109
  br label %152

152:                                              ; preds = %151, %105
  br label %153

153:                                              ; preds = %152, %64
  br label %154

154:                                              ; preds = %153, %39
  %155 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %156 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @BIO_READ, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %177, label %160

160:                                              ; preds = %154
  %161 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %162 = bitcast %union.ctl_io* %161 to %struct.TYPE_7__*
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %160
  %169 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %170 = bitcast %union.ctl_io* %169 to %struct.TYPE_7__*
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @CTL_STATUS_MASK, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @CTL_STATUS_NONE, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %168, %160, %154
  %178 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %179 = call i32 @ctl_complete_beio(%struct.ctl_be_block_io* %178)
  store i32 0, i32* %2, align 4
  br label %199

180:                                              ; preds = %168
  %181 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %182 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %181, i32 0, i32 2
  %183 = call i32 @mtx_lock(i32* %182)
  %184 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %185 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %184, i32 0, i32 3
  %186 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %187 = bitcast %union.ctl_io* %186 to %struct.TYPE_7__*
  %188 = load i32, i32* @links, align 4
  %189 = call i32 @STAILQ_INSERT_TAIL(i32* %185, %struct.TYPE_7__* %187, i32 %188)
  %190 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %191 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %190, i32 0, i32 2
  %192 = call i32 @mtx_unlock(i32* %191)
  %193 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %194 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %197 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %196, i32 0, i32 0
  %198 = call i32 @taskqueue_enqueue(i32 %195, i32* %197)
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %180, %177
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_8__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ctl_set_internal_failure(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @ctl_set_invalid_field_ciu(%struct.TYPE_6__*) #1

declare dso_local %struct.ctl_lba_len_flags* @ARGS(i32) #1

declare dso_local i32 @ctl_set_success(%struct.TYPE_6__*) #1

declare dso_local i32 @ctl_be_block_compare(%union.ctl_io*) #1

declare dso_local i32 @ctl_complete_beio(%struct.ctl_be_block_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
