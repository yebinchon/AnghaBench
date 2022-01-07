; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_set_io_error_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_set_io_error_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpc_list = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@SSD_SKS_SEGMENT_VALID = common dso_local global i32 0, align 4
@SSD_FORWARDED_FSDT = common dso_local global i32 0, align 4
@SSD_KEY_COPY_ABORTED = common dso_local global i32 0, align 4
@SSD_ELEM_COMMAND = common dso_local global i32 0, align 4
@SSD_ELEM_SKS = common dso_local global i32 0, align 4
@SSD_ELEM_SKIP = common dso_local global i32 0, align 4
@SSD_ELEM_DESC = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpc_list*)* @tpc_set_io_error_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpc_set_io_error_sense(%struct.tpc_list* %0) #0 {
  %2 = alloca %struct.tpc_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca [3 x i32], align 4
  %6 = alloca [68 x i32], align 16
  store %struct.tpc_list* %0, %struct.tpc_list** %2, align 8
  %7 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %8 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %11 = call i32 @scsi_ulto4b(i32 %9, i32* %10)
  %12 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %13 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 2047
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load i32, i32* @SSD_SKS_SEGMENT_VALID, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %20 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %23 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %28 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %34 = call i32 @scsi_ulto2b(i32* %32, i32* %33)
  br label %37

35:                                               ; preds = %1
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %16
  %38 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %39 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = getelementptr inbounds [68 x i32], [68 x i32]* %6, i64 0, i64 0
  store i32 12, i32* %43, align 16
  %44 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %45 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [68 x i32], [68 x i32]* %6, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %49 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp sgt i32 %51, 64
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  store i32 64, i32* %3, align 4
  %54 = load i32, i32* @SSD_FORWARDED_FSDT, align 4
  %55 = getelementptr inbounds [68 x i32], [68 x i32]* %6, i64 0, i64 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %42
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 2, %59
  %61 = getelementptr inbounds [68 x i32], [68 x i32]* %6, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %63 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [68 x i32], [68 x i32]* %6, i64 0, i64 3
  store i32 %64, i32* %65, align 4
  %66 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %67 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %66, i32 0, i32 6
  %68 = getelementptr inbounds [68 x i32], [68 x i32]* %6, i64 0, i64 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @bcopy(i32* %67, i32* %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.tpc_list*, %struct.tpc_list** %2, align 8
  %76 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SSD_KEY_COPY_ABORTED, align 4
  %79 = load i32, i32* @SSD_ELEM_COMMAND, align 4
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @SSD_ELEM_SKS, align 4
  br label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @SSD_ELEM_DESC, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load i32, i32* %3, align 4
  %100 = getelementptr inbounds [68 x i32], [68 x i32]* %6, i64 0, i64 0
  %101 = load i32, i32* @SSD_ELEM_NONE, align 4
  %102 = call i32 @ctl_set_sense(i32 %77, i32 1, i32 %78, i32 13, i32 1, i32 %79, i32 16, i32* %80, i32 %89, i32 12, i32* %90, i32 %98, i32 %99, i32* %100, i32 %101)
  ret void
}

declare dso_local i32 @scsi_ulto4b(i32, i32*) #1

declare dso_local i32 @scsi_ulto2b(i32*, i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @ctl_set_sense(i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
