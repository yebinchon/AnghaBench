; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_op_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_op_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_table_entry = type { i32, i32, i8* }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_op_quirk_entry = type { i32, %struct.op_table_entry* }

@T_DIRECT = common dso_local global i32 0, align 4
@scsi_op_quirk_table = common dso_local global %struct.op_table_entry* null, align 8
@scsi_inquiry_match = common dso_local global i32 0, align 4
@scsi_op_codes = common dso_local global %struct.op_table_entry* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Vendor Specific Command\00", align 1
@T_RBC = common dso_local global i32 0, align 4
@T_ZBC_HM = common dso_local global i32 0, align 4
@T_NODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scsi_op_desc(i32 %0, %struct.scsi_inquiry_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x %struct.op_table_entry*], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %5, align 8
  %14 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %15 = icmp eq %struct.scsi_inquiry_data* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @T_DIRECT, align 4
  store i32 %17, i32* %10, align 4
  store i32* null, i32** %6, align 8
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %20 = call i32 @SID_TYPE(%struct.scsi_inquiry_data* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %22 = bitcast %struct.scsi_inquiry_data* %21 to i32*
  %23 = load %struct.op_table_entry*, %struct.op_table_entry** @scsi_op_quirk_table, align 8
  %24 = bitcast %struct.op_table_entry* %23 to i32*
  %25 = load %struct.op_table_entry*, %struct.op_table_entry** @scsi_op_quirk_table, align 8
  %26 = call i32 @nitems(%struct.op_table_entry* %25)
  %27 = load i32, i32* @scsi_inquiry_match, align 4
  %28 = call i32* @cam_quirkmatch(i32* %22, i32* %24, i32 %26, i32 16, i32 %27)
  store i32* %28, i32** %6, align 8
  br label %29

29:                                               ; preds = %18, %16
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = bitcast i32* %33 to %struct.scsi_op_quirk_entry*
  %35 = getelementptr inbounds %struct.scsi_op_quirk_entry, %struct.scsi_op_quirk_entry* %34, i32 0, i32 1
  %36 = load %struct.op_table_entry*, %struct.op_table_entry** %35, align 8
  %37 = getelementptr inbounds [2 x %struct.op_table_entry*], [2 x %struct.op_table_entry*]* %12, i64 0, i64 0
  store %struct.op_table_entry* %36, %struct.op_table_entry** %37, align 16
  %38 = load i32*, i32** %6, align 8
  %39 = bitcast i32* %38 to %struct.scsi_op_quirk_entry*
  %40 = getelementptr inbounds %struct.scsi_op_quirk_entry, %struct.scsi_op_quirk_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.op_table_entry*, %struct.op_table_entry** @scsi_op_codes, align 8
  %44 = getelementptr inbounds [2 x %struct.op_table_entry*], [2 x %struct.op_table_entry*]* %12, i64 0, i64 1
  store %struct.op_table_entry* %43, %struct.op_table_entry** %44, align 8
  %45 = load %struct.op_table_entry*, %struct.op_table_entry** @scsi_op_codes, align 8
  %46 = call i32 @nitems(%struct.op_table_entry* %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  store i32 2, i32* %13, align 4
  br label %64

48:                                               ; preds = %29
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 191
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 95
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 128
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %48
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %155

58:                                               ; preds = %54, %51
  %59 = load %struct.op_table_entry*, %struct.op_table_entry** @scsi_op_codes, align 8
  %60 = getelementptr inbounds [2 x %struct.op_table_entry*], [2 x %struct.op_table_entry*]* %12, i64 0, i64 0
  store %struct.op_table_entry* %59, %struct.op_table_entry** %60, align 16
  %61 = load %struct.op_table_entry*, %struct.op_table_entry** @scsi_op_codes, align 8
  %62 = call i32 @nitems(%struct.op_table_entry* %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %62, i32* %63, align 4
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %58, %32
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @T_RBC, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @T_DIRECT, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @T_ZBC_HM, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @T_DIRECT, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @T_NODEVICE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @T_DIRECT, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 1, %83
  store i32 %84, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %151, %82
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %154

89:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %147, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x %struct.op_table_entry*], [2 x %struct.op_table_entry*]* %12, i64 0, i64 %99
  %101 = load %struct.op_table_entry*, %struct.op_table_entry** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.op_table_entry, %struct.op_table_entry* %101, i64 %103
  %105 = getelementptr inbounds %struct.op_table_entry, %struct.op_table_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = icmp sle i32 %106, %107
  br label %109

109:                                              ; preds = %97, %90
  %110 = phi i1 [ false, %90 ], [ %108, %97 ]
  br i1 %110, label %111, label %150

111:                                              ; preds = %109
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x %struct.op_table_entry*], [2 x %struct.op_table_entry*]* %12, i64 0, i64 %113
  %115 = load %struct.op_table_entry*, %struct.op_table_entry** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.op_table_entry, %struct.op_table_entry* %115, i64 %117
  %119 = getelementptr inbounds %struct.op_table_entry, %struct.op_table_entry* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %111
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x %struct.op_table_entry*], [2 x %struct.op_table_entry*]* %12, i64 0, i64 %125
  %127 = load %struct.op_table_entry*, %struct.op_table_entry** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.op_table_entry, %struct.op_table_entry* %127, i64 %129
  %131 = getelementptr inbounds %struct.op_table_entry, %struct.op_table_entry* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %123
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [2 x %struct.op_table_entry*], [2 x %struct.op_table_entry*]* %12, i64 0, i64 %138
  %140 = load %struct.op_table_entry*, %struct.op_table_entry** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.op_table_entry, %struct.op_table_entry* %140, i64 %142
  %144 = getelementptr inbounds %struct.op_table_entry, %struct.op_table_entry* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %3, align 8
  br label %155

146:                                              ; preds = %123, %111
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %90

150:                                              ; preds = %109
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %85

154:                                              ; preds = %85
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %155

155:                                              ; preds = %154, %136, %57
  %156 = load i8*, i8** %3, align 8
  ret i8* %156
}

declare dso_local i32 @SID_TYPE(%struct.scsi_inquiry_data*) #1

declare dso_local i32* @cam_quirkmatch(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @nitems(%struct.op_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
