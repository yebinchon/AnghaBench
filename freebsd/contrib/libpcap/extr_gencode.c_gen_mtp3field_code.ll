; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mtp3field_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_mtp3field_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@OFFSET_NOT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"'sio' supported only on SS7\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"sio value %u too big; max value = 255\00", align 1
@OR_PACKET = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"'opc' supported only on SS7\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"opc value %u too big; max value = 16383\00", align 1
@BPF_W = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"'dpc' supported only on SS7\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"dpc value %u too big; max value = 16383\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"'sls' supported only on SS7\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"sls value %u too big; max value = 15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_mtp3field_code(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %174 [
    i32 133, label %32
    i32 129, label %35
    i32 134, label %60
    i32 130, label %63
    i32 135, label %105
    i32 131, label %108
    i32 132, label %144
    i32 128, label %147
  ]

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 3
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %5, %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OFFSET_NOT_SET, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = call i32 (%struct.TYPE_5__*, i8*, ...) @bpf_error(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 255
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (%struct.TYPE_5__*, i8*, ...) @bpf_error(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = load i32, i32* @OR_PACKET, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @BPF_B, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %52, i32 %53, i32 %54, i32 %55, i32 -1, i32 %56, i32 %57, i32 %58)
  store %struct.block* %59, %struct.block** %11, align 8
  br label %176

60:                                               ; preds = %5
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 3
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %5, %60
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OFFSET_NOT_SET, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = call i32 (%struct.TYPE_5__*, i8*, ...) @bpf_error(%struct.TYPE_5__* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 16383
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (%struct.TYPE_5__*, i8*, ...) @bpf_error(%struct.TYPE_5__* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 15360
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = ashr i32 %82, 10
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 1020
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = shl i32 %86, 6
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 3
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = shl i32 %90, 22
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %8, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = load i32, i32* @OR_PACKET, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @BPF_W, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %97, i32 %98, i32 %99, i32 %100, i32 12648207, i32 %101, i32 %102, i32 %103)
  store %struct.block* %104, %struct.block** %11, align 8
  br label %176

105:                                              ; preds = %5
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 3
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %5, %105
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @OFFSET_NOT_SET, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = call i32 (%struct.TYPE_5__*, i8*, ...) @bpf_error(%struct.TYPE_5__* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %108
  %118 = load i32, i32* %8, align 4
  %119 = icmp sgt i32 %118, 16383
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (%struct.TYPE_5__*, i8*, ...) @bpf_error(%struct.TYPE_5__* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, 255
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = shl i32 %127, 24
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %8, align 4
  %130 = and i32 %129, 16128
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = shl i32 %131, 8
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %8, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %137 = load i32, i32* @OR_PACKET, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @BPF_W, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %136, i32 %137, i32 %138, i32 %139, i32 -12648448, i32 %140, i32 %141, i32 %142)
  store %struct.block* %143, %struct.block** %11, align 8
  br label %176

144:                                              ; preds = %5
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 3
  store i32 %146, i32* %18, align 4
  br label %147

147:                                              ; preds = %5, %144
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @OFFSET_NOT_SET, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = call i32 (%struct.TYPE_5__*, i8*, ...) @bpf_error(%struct.TYPE_5__* %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %147
  %157 = load i32, i32* %8, align 4
  %158 = icmp sgt i32 %157, 15
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 (%struct.TYPE_5__*, i8*, ...) @bpf_error(%struct.TYPE_5__* %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32, i32* %8, align 4
  %165 = shl i32 %164, 4
  store i32 %165, i32* %8, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %167 = load i32, i32* @OR_PACKET, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* @BPF_B, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %166, i32 %167, i32 %168, i32 %169, i32 240, i32 %170, i32 %171, i32 %172)
  store %struct.block* %173, %struct.block** %11, align 8
  br label %176

174:                                              ; preds = %5
  %175 = call i32 (...) @abort() #3
  unreachable

176:                                              ; preds = %163, %124, %79, %51
  %177 = load %struct.block*, %struct.block** %11, align 8
  ret %struct.block* %177
}

declare dso_local i32 @bpf_error(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.block* @gen_ncmp(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
