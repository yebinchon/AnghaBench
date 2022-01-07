; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_release_service_messages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_release_service_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@VCHIQ_SLOT_SIZE = common dso_local global i32 0, align 4
@VCHIQ_SLOT_MASK = common dso_local global i32 0, align 4
@VCHIQ_MSGID_CLAIMED = common dso_local global i32 0, align 4
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"  fsi - hdr %x\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"fsi - pos %x: header %x, msgid %x, header->msgid %x, header->size %x\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid slot position\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @release_service_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_service_messages(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %3, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_16__* %27, i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %6, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @VCHIQ_MSG_DSTPORT(i32 %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = call i32 @release_message_sync(%struct.TYPE_16__* %44, %struct.TYPE_19__* %45)
  br label %47

47:                                               ; preds = %43, %26
  br label %155

48:                                               ; preds = %1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %152, %48
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %155

58:                                               ; preds = %54
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.TYPE_17__* @SLOT_INFO_FROM_INDEX(%struct.TYPE_16__* %59, i32 %60)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %7, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %151

69:                                               ; preds = %58
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_16__* %70, i32 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %8, align 8
  %74 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VCHIQ_SLOT_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %80, %69
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %149, %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %150

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = bitcast i8* %95 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %96, %struct.TYPE_19__** %11, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @VCHIQ_MSG_DSTPORT(i32 %100)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %91
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @VCHIQ_MSGID_CLAIMED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load i32, i32* @vchiq_core_log_level, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %117 = ptrtoint %struct.TYPE_19__* %116 to i32
  %118 = call i32 @vchiq_log_info(i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %122 = call i32 @release_slot(%struct.TYPE_16__* %119, %struct.TYPE_17__* %120, %struct.TYPE_19__* %121, i32* null)
  br label %123

123:                                              ; preds = %114, %109, %91
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @calc_stride(i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %134 = icmp ugt i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %123
  %136 = load i32, i32* @vchiq_core_log_level, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %139 = ptrtoint %struct.TYPE_19__* %138 to i32
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @vchiq_log_error(i32 %136, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %139, i32 %140, i32 %143, i32 %146)
  %148 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %135, %123
  br label %87

150:                                              ; preds = %87
  br label %151

151:                                              ; preds = %150, %58
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %54

155:                                              ; preds = %47, %54
  ret void
}

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i32 @release_message_sync(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @SLOT_INFO_FROM_INDEX(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32) #1

declare dso_local i32 @release_slot(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i64 @calc_stride(i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
