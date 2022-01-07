; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_hip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_hip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@LDNS_STATUS_WIRE_RDATA_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf2buffer_str_hip(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64* @ldns_rdf_data(i32* %11)
  store i64* %12, i64** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @ldns_rdf_size(i32* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 6
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %18, i32* %3, align 4
  br label %96

19:                                               ; preds = %2
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  %27 = call i64 @ldns_read_uint16(i64* %26)
  store i64 %27, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %31, %32
  %34 = add i64 %33, 4
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %24, %19
  %37 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %37, i32* %3, align 4
  br label %96

38:                                               ; preds = %29
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @ldns_buffer_printf(%struct.TYPE_9__* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i64*, i64** %6, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 4
  store i64* %46, i64** %6, align 8
  br label %47

47:                                               ; preds = %56, %38
  %48 = load i64, i64* %8, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ldns_buffer_printf(%struct.TYPE_9__* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %8, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %6, align 8
  br label %47

61:                                               ; preds = %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = call i32 @ldns_buffer_write_u8(%struct.TYPE_9__* %62, i64 32)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @ldns_b64_ntop_calculate_size(i64 %65)
  %67 = call i64 @ldns_buffer_reserve(%struct.TYPE_9__* %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %61
  %70 = load i64*, i64** %6, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = call i64 @ldns_buffer_current(%struct.TYPE_9__* %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = call i64 @ldns_buffer_remaining(%struct.TYPE_9__* %75)
  %77 = call i32 @ldns_b64_ntop(i64* %70, i64 %71, i8* %74, i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = call i64 @ldns_buffer_remaining(%struct.TYPE_9__* %82)
  %84 = trunc i64 %83 to i32
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %80, %69
  br label %93

93:                                               ; preds = %92, %61
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = call i32 @ldns_buffer_status(%struct.TYPE_9__* %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %36, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64* @ldns_rdf_data(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i64 @ldns_read_uint16(i64*) #1

declare dso_local i32 @ldns_buffer_printf(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @ldns_buffer_write_u8(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @ldns_buffer_reserve(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ldns_b64_ntop_calculate_size(i64) #1

declare dso_local i32 @ldns_b64_ntop(i64*, i64, i8*, i64) #1

declare dso_local i64 @ldns_buffer_current(%struct.TYPE_9__*) #1

declare dso_local i64 @ldns_buffer_remaining(%struct.TYPE_9__*) #1

declare dso_local i32 @ldns_buffer_status(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
