; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_rpc.c_mad_rpc_open_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_rpc.c_mad_rpc_open_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmad_port = type { i32, i32, %struct.ibmad_port*, i32 }

@MAX_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"too many classes %d requested\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"can't init UMAD library\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"can't open UMAD port (%s:%d)\00", align 1
@EIO = common dso_local global i64 0, align 8
@IB_SA_CLASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"client_register for mgmt %d failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibmad_port* @mad_rpc_open_port(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ibmad_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibmad_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MAX_CLASS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @EINVAL, align 8
  store i64 %20, i64* @errno, align 8
  store %struct.ibmad_port* null, %struct.ibmad_port** %5, align 8
  br label %111

21:                                               ; preds = %4
  %22 = call i64 (...) @umad_init()
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @ENODEV, align 8
  store i64 %26, i64* @errno, align 8
  store %struct.ibmad_port* null, %struct.ibmad_port** %5, align 8
  br label %111

27:                                               ; preds = %21
  %28 = call %struct.ibmad_port* @malloc(i32 24)
  store %struct.ibmad_port* %28, %struct.ibmad_port** %10, align 8
  %29 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %30 = icmp ne %struct.ibmad_port* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @ENOMEM, align 8
  store i64 %32, i64* @errno, align 8
  store %struct.ibmad_port* null, %struct.ibmad_port** %5, align 8
  br label %111

33:                                               ; preds = %27
  %34 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %35 = call i32 @memset(%struct.ibmad_port* %34, i32 0, i32 24)
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @umad_open_port(i8* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i64, i64* @errno, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* @EIO, align 8
  store i64 %47, i64* @errno, align 8
  br label %48

48:                                               ; preds = %46, %40
  %49 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %50 = call i32 @free(%struct.ibmad_port* %49)
  store %struct.ibmad_port* null, %struct.ibmad_port** %5, align 8
  br label %111

51:                                               ; preds = %33
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %54 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %59 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strncpy(i32 %60, i8* %61, i32 3)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %66 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %68 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %67, i32 0, i32 2
  %69 = load %struct.ibmad_port*, %struct.ibmad_port** %68, align 8
  %70 = call i32 @memset(%struct.ibmad_port* %69, i32 255, i32 8)
  br label %71

71:                                               ; preds = %108, %63
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %9, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %8, align 8
  %78 = load i32, i32* %76, align 4
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @IB_SA_CLASS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %75
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @MAX_CLASS, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %94 = call i64 @mad_register_client_via(i32 %91, i32 %92, %struct.ibmad_port* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90, %86, %83
  %97 = load i32, i32* %13, align 4
  %98 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i64, i64* @errno, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load i64, i64* @EINVAL, align 8
  store i64 %102, i64* @errno, align 8
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @umad_close_port(i32 %104)
  %106 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %107 = call i32 @free(%struct.ibmad_port* %106)
  store %struct.ibmad_port* null, %struct.ibmad_port** %5, align 8
  br label %111

108:                                              ; preds = %90
  br label %71

109:                                              ; preds = %71
  %110 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  store %struct.ibmad_port* %110, %struct.ibmad_port** %5, align 8
  br label %111

111:                                              ; preds = %109, %103, %48, %31, %24, %17
  %112 = load %struct.ibmad_port*, %struct.ibmad_port** %5, align 8
  ret %struct.ibmad_port* %112
}

declare dso_local i32 @IBWARN(i8*, ...) #1

declare dso_local i64 @umad_init(...) #1

declare dso_local %struct.ibmad_port* @malloc(i32) #1

declare dso_local i32 @memset(%struct.ibmad_port*, i32, i32) #1

declare dso_local i32 @umad_open_port(i8*, i32) #1

declare dso_local i32 @free(%struct.ibmad_port*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @mad_register_client_via(i32, i32, %struct.ibmad_port*) #1

declare dso_local i32 @umad_close_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
