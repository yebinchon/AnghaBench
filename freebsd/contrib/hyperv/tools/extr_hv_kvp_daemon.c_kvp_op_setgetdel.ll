; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_op_setgetdel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_op_setgetdel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_msg = type { %struct.TYPE_11__, %struct.TYPE_20__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.kvp_op_hdlr = type { i32 }

@HV_S_OK = common dso_local global i32 0, align 4
@HV_KVP_POOL_AUTO = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Ilegal to write to pool %d from host\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Ilegal to change pool %d from host\0A\00", align 1
@HV_S_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_kvp_msg*, i8*)* @kvp_op_setgetdel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_op_setgetdel(%struct.hv_kvp_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.hv_kvp_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kvp_op_hdlr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hv_kvp_msg* %0, %struct.hv_kvp_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.kvp_op_hdlr*
  store %struct.kvp_op_hdlr* %9, %struct.kvp_op_hdlr** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %11 = icmp ne %struct.hv_kvp_msg* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.kvp_op_hdlr*, %struct.kvp_op_hdlr** %5, align 8
  %15 = icmp ne %struct.kvp_op_hdlr* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %19 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @HV_S_OK, align 4
  %24 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %25 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.kvp_op_hdlr*, %struct.kvp_op_hdlr** %5, align 8
  %28 = getelementptr inbounds %struct.kvp_op_hdlr, %struct.kvp_op_hdlr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %117 [
    i32 128, label %30
    i32 129, label %67
    i32 130, label %95
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @HV_KVP_POOL_AUTO, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @KVP_LOG(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %66

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %41 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %47 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %53 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %60 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kvp_key_add_or_modify(i32 %39, i32 %45, i32 %51, i32 %58, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %38, %34
  br label %118

67:                                               ; preds = %2
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %70 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %76 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %82 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %89 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @kvp_get_value(i32 %68, i32 %74, i32 %80, i32 %87, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %118

95:                                               ; preds = %2
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @HV_KVP_POOL_AUTO, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  store i32 1, i32* %6, align 4
  %100 = load i32, i32* @LOG_ERR, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @KVP_LOG(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %116

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %106 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %111 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @kvp_key_delete(i32 %104, i32 %109, i32 %114)
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %103, %99
  br label %118

117:                                              ; preds = %2
  br label %118

118:                                              ; preds = %117, %116, %67, %66
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* @HV_S_CONT, align 4
  %123 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %124 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @KVP_LOG(i32, i8*, i32) #1

declare dso_local i32 @kvp_key_add_or_modify(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kvp_get_value(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kvp_key_delete(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
