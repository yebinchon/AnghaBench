; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_flow = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ibv_qp = type { %struct.TYPE_8__*, i32 }
%struct.ibv_flow_attr = type { i32, i32, i32, i32, i32 }
%struct.ibv_create_flow = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ibv_create_flow_resp = type { i32 }
%struct.ibv_kern_spec = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ibv_flow_spec = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@CREATE_FLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_flow* @ibv_cmd_create_flow(%struct.ibv_qp* %0, %struct.ibv_flow_attr* %1) #0 {
  %3 = alloca %struct.ibv_flow*, align 8
  %4 = alloca %struct.ibv_qp*, align 8
  %5 = alloca %struct.ibv_flow_attr*, align 8
  %6 = alloca %struct.ibv_create_flow*, align 8
  %7 = alloca %struct.ibv_create_flow_resp, align 4
  %8 = alloca %struct.ibv_flow*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %4, align 8
  store %struct.ibv_flow_attr* %1, %struct.ibv_flow_attr** %5, align 8
  %15 = load %struct.ibv_flow_attr*, %struct.ibv_flow_attr** %5, align 8
  %16 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = add i64 28, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.ibv_create_flow* @alloca(i64 %21)
  store %struct.ibv_create_flow* %22, %struct.ibv_create_flow** %6, align 8
  %23 = call %struct.ibv_flow* @malloc(i32 16)
  store %struct.ibv_flow* %23, %struct.ibv_flow** %8, align 8
  %24 = load %struct.ibv_flow*, %struct.ibv_flow** %8, align 8
  %25 = icmp ne %struct.ibv_flow* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store %struct.ibv_flow* null, %struct.ibv_flow** %3, align 8
  br label %155

27:                                               ; preds = %2
  %28 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @memset(%struct.ibv_create_flow* %28, i32 0, i64 %29)
  %31 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %32 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %35 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ibv_flow_attr*, %struct.ibv_flow_attr** %5, align 8
  %37 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %40 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ibv_flow_attr*, %struct.ibv_flow_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %46 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ibv_flow_attr*, %struct.ibv_flow_attr** %5, align 8
  %49 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %52 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ibv_flow_attr*, %struct.ibv_flow_attr** %5, align 8
  %55 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %58 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ibv_flow_attr*, %struct.ibv_flow_attr** %5, align 8
  %61 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %64 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %67 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %66, i64 1
  %68 = bitcast %struct.ibv_create_flow* %67 to i8*
  store i8* %68, i8** %13, align 8
  %69 = load %struct.ibv_flow_attr*, %struct.ibv_flow_attr** %5, align 8
  %70 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %69, i64 1
  %71 = bitcast %struct.ibv_flow_attr* %70 to i8*
  store i8* %71, i8** %14, align 8
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %114, %27
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ibv_flow_attr*, %struct.ibv_flow_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %117

78:                                               ; preds = %72
  %79 = load i8*, i8** %14, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @ib_spec_to_kern_spec(i8* %79, i8* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* @errno, align 4
  br label %152

86:                                               ; preds = %78
  %87 = load i8*, i8** %13, align 8
  %88 = bitcast i8* %87 to %struct.ibv_kern_spec*
  %89 = getelementptr inbounds %struct.ibv_kern_spec, %struct.ibv_kern_spec* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %93 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %91
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = bitcast i8* %99 to %struct.ibv_kern_spec*
  %101 = getelementptr inbounds %struct.ibv_kern_spec, %struct.ibv_kern_spec* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr i8, i8* %104, i64 %103
  store i8* %105, i8** %13, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = bitcast i8* %106 to %struct.ibv_flow_spec*
  %108 = getelementptr inbounds %struct.ibv_flow_spec, %struct.ibv_flow_spec* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr i8, i8* %111, i64 %112
  store i8* %113, i8** %14, align 8
  br label %114

114:                                              ; preds = %86
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %72

117:                                              ; preds = %72
  %118 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %119 = getelementptr inbounds %struct.ibv_create_flow, %struct.ibv_create_flow* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 28, %122
  store i64 %123, i64* %10, align 8
  %124 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i32, i32* @CREATE_FLOW, align 4
  %128 = call i32 @IBV_INIT_CMD_RESP_EX_VCMD(%struct.ibv_create_flow* %124, i64 %125, i64 %126, i32 %127, %struct.ibv_create_flow_resp* %7, i32 4)
  %129 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %130 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ibv_create_flow*, %struct.ibv_create_flow** %6, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i64 @write(i32 %133, %struct.ibv_create_flow* %134, i64 %135)
  %137 = load i64, i64* %10, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %117
  br label %152

140:                                              ; preds = %117
  %141 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_flow_resp* %7, i32 4)
  %142 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %143 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load %struct.ibv_flow*, %struct.ibv_flow** %8, align 8
  %146 = getelementptr inbounds %struct.ibv_flow, %struct.ibv_flow* %145, i32 0, i32 1
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %146, align 8
  %147 = getelementptr inbounds %struct.ibv_create_flow_resp, %struct.ibv_create_flow_resp* %7, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ibv_flow*, %struct.ibv_flow** %8, align 8
  %150 = getelementptr inbounds %struct.ibv_flow, %struct.ibv_flow* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ibv_flow*, %struct.ibv_flow** %8, align 8
  store %struct.ibv_flow* %151, %struct.ibv_flow** %3, align 8
  br label %155

152:                                              ; preds = %139, %84
  %153 = load %struct.ibv_flow*, %struct.ibv_flow** %8, align 8
  %154 = call i32 @free(%struct.ibv_flow* %153)
  store %struct.ibv_flow* null, %struct.ibv_flow** %3, align 8
  br label %155

155:                                              ; preds = %152, %140, %26
  %156 = load %struct.ibv_flow*, %struct.ibv_flow** %3, align 8
  ret %struct.ibv_flow* %156
}

declare dso_local %struct.ibv_create_flow* @alloca(i64) #1

declare dso_local %struct.ibv_flow* @malloc(i32) #1

declare dso_local i32 @memset(%struct.ibv_create_flow*, i32, i64) #1

declare dso_local i32 @ib_spec_to_kern_spec(i8*, i8*) #1

declare dso_local i32 @IBV_INIT_CMD_RESP_EX_VCMD(%struct.ibv_create_flow*, i64, i64, i32, %struct.ibv_create_flow_resp*, i32) #1

declare dso_local i64 @write(i32, %struct.ibv_create_flow*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_flow_resp*, i32) #1

declare dso_local i32 @free(%struct.ibv_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
