; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_fill_control_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_fill_control_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_19__, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.enc_fsm_state = type { i32 }
%union.ccb = type { i32 }
%struct.ses_control_page_hdr = type { i32 }
%struct.TYPE_16__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@SESCTL_CSEL = common dso_local global i32 0, align 4
@SES_ENCSTAT_INVOP = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENC_SEMB_SES = common dso_local global i64 0, align 8
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.enc_fsm_state*, %union.ccb*, i32*)* @ses_fill_control_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_fill_control_request(%struct.TYPE_18__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.enc_fsm_state*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.ses_control_page_hdr*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %7, align 8
  store %union.ccb* %2, %union.ccb** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %11, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %12, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = bitcast i32* %25 to %struct.ses_control_page_hdr*
  store %struct.ses_control_page_hdr* %26, %struct.ses_control_page_hdr** %13, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = icmp eq %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* @EIO, align 4
  %35 = call i32 @ses_terminate_control_requests(i32* %33, i32 %34)
  %36 = load i32, i32* @EIO, align 4
  store i32 %36, i32* %5, align 4
  br label %145

37:                                               ; preds = %4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = call i64 @ses_page_length(i32* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call i32 @memcpy(i32* %43, %struct.TYPE_14__* %46, i64 %47)
  store i64 4, i64* %16, align 8
  store i64 4, i64* %16, align 8
  br label %49

49:                                               ; preds = %61, %37
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* @SESCTL_CSEL, align 4
  %55 = xor i32 %54, -1
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %16, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %16, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %16, align 8
  br label %49

64:                                               ; preds = %49
  %65 = load i32, i32* @SES_ENCSTAT_INVOP, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.ses_control_page_hdr*, %struct.ses_control_page_hdr** %13, align 8
  %68 = getelementptr inbounds %struct.ses_control_page_hdr, %struct.ses_control_page_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %96, %93, %64
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = call %struct.TYPE_16__* @TAILQ_FIRST(i32* %73)
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %14, align 8
  %75 = icmp ne %struct.TYPE_16__* %74, null
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %80 = load i32, i32* @links, align 4
  %81 = call i32 @TAILQ_REMOVE(i32* %78, %struct.TYPE_16__* %79, i32 %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %86 = call i64 @ses_encode(%struct.TYPE_18__* %82, i32* %83, i64 %84, %struct.TYPE_16__* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %76
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %95 = call i32 @wakeup(%struct.TYPE_16__* %94)
  br label %71

96:                                               ; preds = %76
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %100 = load i32, i32* @links, align 4
  %101 = call i32 @TAILQ_INSERT_TAIL(i32* %98, %struct.TYPE_16__* %99, i32 %100)
  br label %71

102:                                              ; preds = %71
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = call i64 @TAILQ_EMPTY(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOENT, align 4
  store i32 %108, i32* %5, align 4
  br label %145

109:                                              ; preds = %102
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ENC_SEMB_SES, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %union.ccb*, %union.ccb** %8, align 8
  %117 = bitcast %union.ccb* %116 to i32*
  %118 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = call i64 @ses_page_length(i32* %123)
  %125 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %126 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @semb_send_diagnostic(i32* %117, i32 5, i32* null, i32 %118, i32* %119, i64 %124, i32 %127)
  br label %144

129:                                              ; preds = %109
  %130 = load %union.ccb*, %union.ccb** %8, align 8
  %131 = bitcast %union.ccb* %130 to i32*
  %132 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = call i64 @ses_page_length(i32* %137)
  %139 = load i32, i32* @SSD_FULL_SIZE, align 4
  %140 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %141 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @scsi_send_diagnostic(i32* %131, i32 5, i32* null, i32 %132, i32 0, i32 0, i32 0, i32 1, i32 0, i32* %133, i64 %138, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %129, %115
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %107, %31
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @ses_terminate_control_requests(i32*, i32) #1

declare dso_local i64 @ses_page_length(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_14__*, i64) #1

declare dso_local %struct.TYPE_16__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @ses_encode(%struct.TYPE_18__*, i32*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @wakeup(%struct.TYPE_16__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @semb_send_diagnostic(i32*, i32, i32*, i32, i32*, i64, i32) #1

declare dso_local i32 @scsi_send_diagnostic(i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
