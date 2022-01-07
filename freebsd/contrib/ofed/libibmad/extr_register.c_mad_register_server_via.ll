; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_register.c_mad_register_server_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_register.c_mad_register_server_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmad_port = type { i32*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Class 0x%x already registered %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown class 0x%x mgmt_class\00", align 1
@IB_VENDOR_RANGE2_START_CLASS = common dso_local global i32 0, align 4
@IB_VENDOR_RANGE2_END_CLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't register agent for class %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mad_register_server_via(i32 %0, i32 %1, i64* %2, i32 %3, %struct.ibmad_port* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibmad_port*, align 8
  %12 = alloca [2 x i64], align 16
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ibmad_port* %4, %struct.ibmad_port** %11, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %20 = load i64*, i64** %9, align 8
  %21 = call i32 @memcpy(i64* %19, i64* %20, i32 16)
  br label %25

22:                                               ; preds = %5
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %24 = call i32 @memset(i64* %23, i32 255, i32 16)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %27 = icmp ne %struct.ibmad_port* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %111

29:                                               ; preds = %25
  %30 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %31 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %41 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %46)
  store i32 -1, i32* %6, align 4
  br label %111

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mgmt_class_vers(i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %6, align 4
  br label %111

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @IB_VENDOR_RANGE2_START_CLASS, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @IB_VENDOR_RANGE2_END_CLASS, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 255
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %73, i32* %74, align 4
  %75 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %76 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %82 = call i32 @umad_register_oui(i32 %77, i32 %78, i32 %79, i32* %80, i64* %81)
  store i32 %82, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %63
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 -1, i32* %6, align 4
  br label %111

87:                                               ; preds = %63
  br label %102

88:                                               ; preds = %59, %55
  %89 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %90 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %96 = call i32 @umad_register(i32 %91, i32 %92, i32 %93, i32 %94, i64* %95)
  store i32 %96, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %6, align 4
  br label %111

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %87
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %105 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %102, %98, %84, %52, %38, %28
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @DEBUG(i8*, i32, ...) #1

declare dso_local i32 @mgmt_class_vers(i32) #1

declare dso_local i32 @umad_register_oui(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @umad_register(i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
