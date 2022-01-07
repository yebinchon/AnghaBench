; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_sflow_print_flow_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_sflow_print_flow_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sflow_flow_record_t = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"\0A\09    enterprise %u %s (%u) length %u\00", align 1
@sflow_flow_type_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i64, i64)* @sflow_print_flow_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sflow_print_flow_records(%struct.TYPE_8__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sflow_flow_record_t*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %111, %4
  %21 = load i64, i64* %10, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %120

23:                                               ; preds = %20
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %122

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = bitcast i32* %28 to %struct.sflow_flow_record_t*
  store %struct.sflow_flow_record_t* %29, %struct.sflow_flow_record_t** %16, align 8
  %30 = load %struct.sflow_flow_record_t*, %struct.sflow_flow_record_t** %16, align 8
  %31 = bitcast %struct.sflow_flow_record_t* %30 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call i32 @ND_TCHECK(i64 %32)
  %34 = load %struct.sflow_flow_record_t*, %struct.sflow_flow_record_t** %16, align 8
  %35 = getelementptr inbounds %struct.sflow_flow_record_t, %struct.sflow_flow_record_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @EXTRACT_32BITS(i32 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = and i64 %38, 4095
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %14, align 8
  %41 = ashr i64 %40, 12
  store i64 %41, i64* %14, align 8
  %42 = load %struct.sflow_flow_record_t*, %struct.sflow_flow_record_t** %16, align 8
  %43 = getelementptr inbounds %struct.sflow_flow_record_t, %struct.sflow_flow_record_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @EXTRACT_32BITS(i32 %44)
  store i64 %45, i64* %15, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %27
  %51 = load i32, i32* @sflow_flow_type_values, align 4
  %52 = load i64, i64* %13, align 8
  %53 = call i8* @tok2str(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %55

54:                                               ; preds = %27
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8* [ %53, %50 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %54 ]
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %15, align 8
  %59 = inttoptr i64 %58 to %struct.TYPE_8__*
  %60 = call i32 @ND_PRINT(%struct.TYPE_8__* %59)
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  store i32* %62, i32** %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = sub i64 %63, 8
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %15, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %122

69:                                               ; preds = %55
  %70 = load i64, i64* %14, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %69
  %73 = load i64, i64* %13, align 8
  switch i64 %73, label %99 [
    i64 128, label %74
    i64 134, label %82
    i64 143, label %90
    i64 130, label %98
    i64 129, label %98
    i64 135, label %98
    i64 142, label %98
    i64 132, label %98
    i64 133, label %98
    i64 141, label %98
    i64 136, label %98
    i64 138, label %98
    i64 137, label %98
    i64 140, label %98
    i64 139, label %98
    i64 131, label %98
  ]

74:                                               ; preds = %72
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @print_sflow_raw_packet(%struct.TYPE_8__* %75, i32* %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %5, align 4
  br label %122

81:                                               ; preds = %74
  br label %110

82:                                               ; preds = %72
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @print_sflow_extended_switch_data(%struct.TYPE_8__* %83, i32* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %122

89:                                               ; preds = %82
  br label %110

90:                                               ; preds = %72
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @print_sflow_ethernet_frame(%struct.TYPE_8__* %91, i32* %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 1, i32* %5, align 4
  br label %122

97:                                               ; preds = %90
  br label %110

98:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72
  br label %110

99:                                               ; preds = %72
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @print_unknown_data(%struct.TYPE_8__* %105, i32* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %98, %97, %89, %81
  br label %111

111:                                              ; preds = %110, %69
  %112 = load i64, i64* %15, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %112
  store i32* %114, i32** %11, align 8
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %12, align 8
  %117 = sub nsw i64 %116, %115
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* %10, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %10, align 8
  br label %20

120:                                              ; preds = %20
  store i32 0, i32* %5, align 4
  br label %122

121:                                              ; No predecessors!
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %120, %96, %88, %80, %68, %26
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i64 @EXTRACT_32BITS(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i8* @tok2str(i32, i8*, i64) #1

declare dso_local i32 @print_sflow_raw_packet(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i32 @print_sflow_extended_switch_data(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i32 @print_sflow_ethernet_frame(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_8__*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
