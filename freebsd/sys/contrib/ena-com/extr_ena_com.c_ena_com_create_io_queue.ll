; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_create_io_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_create_io_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_com_io_sq*, %struct.ena_com_io_sq* }
%struct.ena_com_io_sq = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.ena_com_create_io_ctx = type { i64, i64, i32, i32, i32 }
%struct.ena_com_io_cq = type { i64, i64, i32, i32, i32, i32, i32 }

@ENA_TOTAL_NUM_QUEUES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Qid (%d) is bigger than max num of queues (%d)\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@SZ_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_create_io_queue(%struct.ena_com_dev* %0, %struct.ena_com_create_io_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_com_create_io_ctx*, align 8
  %6 = alloca %struct.ena_com_io_sq*, align 8
  %7 = alloca %struct.ena_com_io_cq*, align 8
  %8 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_com_create_io_ctx* %1, %struct.ena_com_create_io_ctx** %5, align 8
  %9 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %19 = call i32 @ena_trc_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %143

21:                                               ; preds = %2
  %22 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %23 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %22, i32 0, i32 2
  %24 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %23, align 8
  %25 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %24, i64 %27
  store %struct.ena_com_io_sq* %28, %struct.ena_com_io_sq** %6, align 8
  %29 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %30 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %29, i32 0, i32 1
  %31 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %30, align 8
  %32 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %31, i64 %34
  %36 = bitcast %struct.ena_com_io_sq* %35 to %struct.ena_com_io_cq*
  store %struct.ena_com_io_cq* %36, %struct.ena_com_io_cq** %7, align 8
  %37 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %38 = call i32 @memset(%struct.ena_com_io_sq* %37, i32 0, i32 40)
  %39 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %40 = bitcast %struct.ena_com_io_cq* %39 to %struct.ena_com_io_sq*
  %41 = call i32 @memset(%struct.ena_com_io_sq* %40, i32 0, i32 40)
  %42 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %46 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %51 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %56 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %61 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %66 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %71 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %76 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %81 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %21
  %88 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %89 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SZ_256, align 4
  %92 = call i32 @ENA_MIN32(i32 %90, i32 %91)
  %93 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %94 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %87, %21
  %96 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %97 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %98 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %99 = call i32 @ena_com_init_io_sq(%struct.ena_com_dev* %96, %struct.ena_com_create_io_ctx* %97, %struct.ena_com_io_sq* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %136

103:                                              ; preds = %95
  %104 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %105 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %106 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %107 = bitcast %struct.ena_com_io_cq* %106 to %struct.ena_com_io_sq*
  %108 = call i32 @ena_com_init_io_cq(%struct.ena_com_dev* %104, %struct.ena_com_create_io_ctx* %105, %struct.ena_com_io_sq* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %136

112:                                              ; preds = %103
  %113 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %114 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %115 = bitcast %struct.ena_com_io_cq* %114 to %struct.ena_com_io_sq*
  %116 = call i32 @ena_com_create_io_cq(%struct.ena_com_dev* %113, %struct.ena_com_io_sq* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %136

120:                                              ; preds = %112
  %121 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %122 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %123 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %124 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ena_com_create_io_sq(%struct.ena_com_dev* %121, %struct.ena_com_io_sq* %122, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %131

130:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %143

131:                                              ; preds = %129
  %132 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %133 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %134 = bitcast %struct.ena_com_io_cq* %133 to %struct.ena_com_io_sq*
  %135 = call i32 @ena_com_destroy_io_cq(%struct.ena_com_dev* %132, %struct.ena_com_io_sq* %134)
  br label %136

136:                                              ; preds = %131, %119, %111, %102
  %137 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %138 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %139 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %140 = bitcast %struct.ena_com_io_cq* %139 to %struct.ena_com_io_sq*
  %141 = call i32 @ena_com_io_queue_free(%struct.ena_com_dev* %137, %struct.ena_com_io_sq* %138, %struct.ena_com_io_sq* %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %136, %130, %14
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ena_trc_err(i8*, i64, i64) #1

declare dso_local i32 @memset(%struct.ena_com_io_sq*, i32, i32) #1

declare dso_local i32 @ENA_MIN32(i32, i32) #1

declare dso_local i32 @ena_com_init_io_sq(%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_init_io_cq(%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_create_io_cq(%struct.ena_com_dev*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_create_io_sq(%struct.ena_com_dev*, %struct.ena_com_io_sq*, i32) #1

declare dso_local i32 @ena_com_destroy_io_cq(%struct.ena_com_dev*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_io_queue_free(%struct.ena_com_dev*, %struct.ena_com_io_sq*, %struct.ena_com_io_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
