; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nsidentify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nsidentify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 }
%struct.cmd = type { i32 }
%struct.nvme_pt_command = type { i32, i32, i32, %struct.nvme_namespace_data*, %struct.TYPE_3__ }
%struct.nvme_namespace_data = type { i32 }
%struct.TYPE_3__ = type { i8*, i8*, i32 }
%struct.nvme_controller_data = type { i32 }

@identify_opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NONE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No valid NSID specified\0A\00", align 1
@NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_OACS_NSMGMT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"controller does not support namespace management\00", align 1
@NVME_OPC_IDENTIFY = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"identify request failed\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"identify request returned error\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"namespace %d is not allocated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @nsidentify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsidentify(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_pt_command, align 8
  %8 = alloca %struct.nvme_controller_data, align 4
  %9 = alloca %struct.nvme_namespace_data, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8**, i8*** %6, align 8
  %15 = load %struct.cmd*, %struct.cmd** %4, align 8
  %16 = call i64 @arg_parse(i32 %13, i8** %14, %struct.cmd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  ret void

19:                                               ; preds = %3
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @identify_opt, i32 0, i32 0), align 8
  %21 = load i64, i64* @NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %5, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = load %struct.cmd*, %struct.cmd** %4, align 8
  %29 = call i32 @arg_help(i32 %26, i8** %27, %struct.cmd* %28)
  br label %30

30:                                               ; preds = %23, %19
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @identify_opt, i32 0, i32 3), align 8
  %32 = call i32 @open_dev(i32 %31, i32* %11, i32 1, i32 1)
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @read_controller_data(i32 %33, %struct.nvme_controller_data* %8)
  %35 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @NVME_CTRLR_DATA_OACS_NSMGMT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %30
  %45 = call i32 @memset(%struct.nvme_pt_command* %7, i32 0, i32 48)
  %46 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %47 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @identify_opt, i32 0, i32 0), align 8
  %50 = trunc i64 %49 to i32
  %51 = call i8* @htole32(i32 %50)
  %52 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = call i8* @htole32(i32 17)
  %55 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 3
  store %struct.nvme_namespace_data* %9, %struct.nvme_namespace_data** %57, align 8
  %58 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 0
  store i32 4, i32* %58, align 8
  %59 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %62 = call i64 @ioctl(i32 %60, i32 %61, %struct.nvme_pt_command* %7)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %44
  %67 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 2
  %68 = call i64 @nvme_completion_is_error(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @close(i32 %73)
  %75 = bitcast %struct.nvme_namespace_data* %9 to i64*
  store i64* %75, i64** %10, align 8
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %89, %72
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %78, 4
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i64*, i64** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %92

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %76

92:                                               ; preds = %87, %76
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @identify_opt, i32 0, i32 0), align 8
  %98 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %96, %92
  %100 = call i32 @nvme_namespace_data_swapbytes(%struct.nvme_namespace_data* %9)
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @identify_opt, i32 0, i32 2), align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  store i32 4, i32* %12, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @identify_opt, i32 0, i32 1), align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %120, %106
  %108 = load i32, i32* %12, align 4
  %109 = icmp sgt i32 %108, 384
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load i64*, i64** %10, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %123

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %12, align 4
  br label %107

123:                                              ; preds = %118, %107
  br label %124

124:                                              ; preds = %123, %103
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @print_hex(%struct.nvme_namespace_data* %9, i32 %125)
  %127 = call i32 @exit(i32 0) #3
  unreachable

128:                                              ; preds = %99
  %129 = call i32 @print_namespace(%struct.nvme_namespace_data* %9)
  %130 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @arg_help(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i32 @read_controller_data(i32, %struct.nvme_controller_data*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @nvme_namespace_data_swapbytes(%struct.nvme_namespace_data*) #1

declare dso_local i32 @print_hex(%struct.nvme_namespace_data*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @print_namespace(%struct.nvme_namespace_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
