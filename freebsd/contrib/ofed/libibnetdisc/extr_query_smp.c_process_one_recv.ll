; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_query_smp.c_process_one_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_query_smp.c_process_one_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32)*, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }

@IB_MAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"umad_recv failed: %d\0A\00", align 1
@IB_MAD_TRID_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to find matching smp for trid (%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"umad (%s Attr 0x%x:%u) bad status %d; %s\0A\00", align 1
@IB_ATTR_MLNX_EXT_PORT_INFO = common dso_local global i64 0, align 8
@IB_DRSMP_STATUS_F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"mad (%s Attr 0x%x:%u) bad status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @process_one_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_one_recv(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @IB_MAD_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 4, %14
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = call i32 (...) @umad_size()
  %19 = load i32, i32* @IB_MAD_SIZE, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = mul nuw i64 4, %15
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32* %17, i32 0, i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @umad_recv(i32 %26, i32* %17, i32* %11, i32 -1)
  store i32 %27, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, i32, ...) @IBND_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %149

32:                                               ; preds = %1
  %33 = call i32* @umad_get_mad(i32* %17)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @IB_MAD_TRID_F, align 4
  %36 = call i64 @mad_get_field64(i32* %34, i32 0, i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @cl_qmap_remove(i32* %39, i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %6, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = bitcast %struct.TYPE_15__* %43 to i32*
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = call i32* @cl_qmap_end(i32* %46)
  %48 = icmp eq i32* %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, i32, ...) @IBND_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %149

52:                                               ; preds = %32
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = call i32 @process_smp_queue(%struct.TYPE_14__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %145

58:                                               ; preds = %52
  %59 = call i32 @umad_status(i32* %17)
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %58
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = call i32 @portid2str(i32* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 (i8*, i32, ...) @IBND_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %64, i64 %69, i32 %74, i32 %75, i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IB_ATTR_MLNX_EXT_PORT_INFO, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %61
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @mlnx_ext_port_info_err(%struct.TYPE_14__* %87, %struct.TYPE_15__* %88, i32* %89, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %86, %61
  br label %144

95:                                               ; preds = %58
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @IB_DRSMP_STATUS_F, align 4
  %98 = call i32 @mad_get_field(i32* %96, i32 0, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = call i32 @portid2str(i32* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 (i8*, i32, ...) @IBND_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %103, i64 %108, i32 %113, i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IB_ATTR_MLNX_EXT_PORT_INFO, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %100
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @mlnx_ext_port_info_err(%struct.TYPE_14__* %124, %struct.TYPE_15__* %125, i32* %126, i32 %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %123, %100
  br label %143

132:                                              ; preds = %95
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32)** %134, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %135(%struct.TYPE_14__* %136, %struct.TYPE_15__* %137, i32* %138, i32 %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %132, %131
  br label %144

144:                                              ; preds = %143, %94
  br label %145

145:                                              ; preds = %144, %57
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = call i32 @free(%struct.TYPE_15__* %146)
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %149

149:                                              ; preds = %145, %49, %29
  %150 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @umad_size(...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @umad_recv(i32, i32*, i32*, i32) #2

declare dso_local i32 @IBND_ERROR(i8*, i32, ...) #2

declare dso_local i32* @umad_get_mad(i32*) #2

declare dso_local i64 @mad_get_field64(i32*, i32, i32) #2

declare dso_local i64 @cl_qmap_remove(i32*, i32) #2

declare dso_local i32* @cl_qmap_end(i32*) #2

declare dso_local i32 @process_smp_queue(%struct.TYPE_14__*) #2

declare dso_local i32 @umad_status(i32*) #2

declare dso_local i32 @portid2str(i32*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @mlnx_ext_port_info_err(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32) #2

declare dso_local i32 @mad_get_field(i32*, i32, i32) #2

declare dso_local i32 @free(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
