; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nscreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nscreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmd = type { i32 }
%struct.nvme_pt_command = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_5__, i64, %struct.nvme_pt_command*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nvme_controller_data = type { i32, i64 }
%struct.nvme_namespace_data = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_5__, i64, %struct.nvme_namespace_data*, %struct.TYPE_4__ }

@create_opt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@NONE64 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Size not specified\0A\00", align 1
@NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_OACS_NSMGMT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"controller does not support namespace management\00", align 1
@NONE = common dso_local global i32 0, align 4
@NVME_NS_DATA_NMIC_MAY_BE_SHARED_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_NMIC_MAY_BE_SHARED_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_FORMAT_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_FORMAT_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_EXTENDED_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_EXTENDED_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_MD_START_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_MD_START_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_PIT_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_PIT_SHIFT = common dso_local global i32 0, align 4
@NVME_OPC_NAMESPACE_MANAGEMENT = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ioctl request to %s failed: %d\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"namespace creation failed: %s\00", align 1
@NVME_STATUS_SC_SHIFT = common dso_local global i32 0, align 4
@NVME_STATUS_SC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"namespace %d created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @nscreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nscreate(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_pt_command, align 8
  %8 = alloca %struct.nvme_controller_data, align 8
  %9 = alloca %struct.nvme_namespace_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load %struct.cmd*, %struct.cmd** %4, align 8
  %15 = call i64 @arg_parse(i32 %12, i8** %13, %struct.cmd* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  ret void

18:                                               ; preds = %3
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 0), align 8
  %20 = load i64, i64* @NONE64, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 1), align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 1), align 8
  %26 = load i64, i64* @NONE64, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load %struct.cmd*, %struct.cmd** %4, align 8
  %34 = call i32 @arg_help(i32 %31, i8** %32, %struct.cmd* %33)
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 9), align 4
  %37 = call i32 @open_dev(i32 %36, i32* %10, i32 1, i32 1)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @read_controller_data(i32 %38, %struct.nvme_controller_data* %8)
  %40 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* @NVME_CTRLR_DATA_OACS_NSMGMT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %35
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 2), align 8
  %51 = load i32, i32* @NONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %8, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @NVME_NS_DATA_NMIC_MAY_BE_SHARED_MASK, align 4
  %59 = load i32, i32* @NVME_NS_DATA_NMIC_MAY_BE_SHARED_SHIFT, align 4
  %60 = shl i32 %58, %59
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %60, %57 ], [ 0, %61 ]
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 2), align 8
  br label %64

64:                                               ; preds = %62, %49
  %65 = bitcast %struct.nvme_namespace_data* %9 to %struct.nvme_pt_command*
  %66 = call i32 @memset(%struct.nvme_pt_command* %65, i32 0, i32 64)
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 1), align 8
  %68 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %9, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 0), align 8
  %70 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %9, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 3), align 4
  %72 = load i32, i32* @NONE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 4), align 8
  %76 = load i32, i32* @NVME_NS_DATA_FLBAS_FORMAT_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @NVME_NS_DATA_FLBAS_FORMAT_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 5), align 4
  %81 = load i32, i32* @NVME_NS_DATA_FLBAS_EXTENDED_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @NVME_NS_DATA_FLBAS_EXTENDED_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %79, %84
  %86 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %9, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  br label %90

87:                                               ; preds = %64
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 3), align 4
  %89 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %9, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %74
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 6), align 8
  %92 = load i32, i32* @NONE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 7), align 4
  %96 = load i32, i32* @NVME_NS_DATA_DPS_MD_START_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @NVME_NS_DATA_DPS_MD_START_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 8), align 8
  %101 = load i32, i32* @NVME_NS_DATA_DPS_PIT_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @NVME_NS_DATA_DPS_PIT_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %99, %104
  %106 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %9, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  br label %110

107:                                              ; preds = %90
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 6), align 8
  %109 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %9, i32 0, i32 3
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %94
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @create_opt, i32 0, i32 2), align 8
  %112 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %9, i32 0, i32 4
  store i32 %111, i32* %112, align 8
  %113 = bitcast %struct.nvme_namespace_data* %9 to %struct.nvme_pt_command*
  %114 = call i32 @nvme_namespace_data_swapbytes(%struct.nvme_pt_command* %113)
  %115 = call i32 @memset(%struct.nvme_pt_command* %7, i32 0, i32 64)
  %116 = load i32, i32* @NVME_OPC_NAMESPACE_MANAGEMENT, align 4
  %117 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 9
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = call i32 @htole32(i32 0)
  %120 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = bitcast %struct.nvme_namespace_data* %9 to %struct.nvme_pt_command*
  %123 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 8
  store %struct.nvme_pt_command* %122, %struct.nvme_pt_command** %123, align 8
  %124 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 5
  store i32 64, i32* %124, align 4
  %125 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 7
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %128 = call i32 @ioctl(i32 %126, i32 %127, %struct.nvme_pt_command* %7)
  store i32 %128, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %110
  %131 = load i8**, i8*** %6, align 8
  %132 = load i64, i64* @optind, align 8
  %133 = getelementptr inbounds i8*, i8** %131, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %110
  %138 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 6
  %139 = call i64 @nvme_completion_is_error(%struct.TYPE_5__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @NVME_STATUS_SC_SHIFT, align 4
  %146 = ashr i32 %144, %145
  %147 = load i32, i32* @NVME_STATUS_SC_MASK, align 4
  %148 = and i32 %146, %147
  %149 = call i32 @get_res_str(i32 %148)
  %150 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %141, %137
  %152 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @arg_help(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i32 @read_controller_data(i32, %struct.nvme_controller_data*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i32 @nvme_namespace_data_swapbytes(%struct.nvme_pt_command*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i64 @nvme_completion_is_error(%struct.TYPE_5__*) #1

declare dso_local i32 @get_res_str(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
