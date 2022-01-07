; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_serv.c_mad_send_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_serv.c_mad_send_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ibmad_port = type { i32*, i32 }

@IB_MAD_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"rmpp %p data %p\00", align 1
@ibdebug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"data offs %d sz %d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"mad send data\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"send failed; %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mad_send_via(%struct.TYPE_4__* %0, i32* %1, i32* %2, i8* %3, %struct.ibmad_port* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ibmad_port*, align 8
  %12 = alloca [1024 x i32], align 16
  %13 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.ibmad_port* %4, %struct.ibmad_port** %11, align 8
  %14 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %13, align 8
  %16 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %17 = call i64 (...) @umad_size()
  %18 = load i64, i64* @IB_MAD_SIZE, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @memset(i32* %16, i32 0, i64 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %21, i8* %22)
  %24 = load i8*, i8** %13, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @mad_build_pkt(i8* %24, %struct.TYPE_4__* %25, i32* %26, i32* %27, i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %84

32:                                               ; preds = %5
  %33 = load i64, i64* @ibdebug, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, ...) @IBWARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call i64 @umad_get_mad(i8* %44)
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @xdump(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %54)
  br label %56

56:                                               ; preds = %35, %32
  %57 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %58 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %61 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i64, i64* @IB_MAD_SIZE, align 8
  %72 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mad_get_timeout(%struct.ibmad_port* %72, i32 %75)
  %77 = call i64 @umad_send(i32 %59, i32 %69, i8* %70, i64 %71, i32 %76, i32 0)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %56
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @strerror(i32 %80)
  %82 = call i32 (i8*, i32, ...) @IBWARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  store i32 -1, i32* %6, align 4
  br label %84

83:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %79, %31
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @umad_size(...) #1

declare dso_local i32 @DEBUG(i8*, i32*, i8*) #1

declare dso_local i64 @mad_build_pkt(i8*, %struct.TYPE_4__*, i32*, i32*, i8*) #1

declare dso_local i32 @IBWARN(i8*, i32, ...) #1

declare dso_local i32 @xdump(i32, i8*, i8*, i32) #1

declare dso_local i64 @umad_get_mad(i8*) #1

declare dso_local i64 @umad_send(i32, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @mad_get_timeout(%struct.ibmad_port*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
