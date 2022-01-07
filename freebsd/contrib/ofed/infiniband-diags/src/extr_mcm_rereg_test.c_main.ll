; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_mcm_rereg_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_mcm_rereg_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"port_guids.list\00", align 1
@IB_SMI_CLASS = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to open port\00", align 1
@IB_DEFAULT_QP1_QKEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot alloc mem for umad: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IB_SA_CLASS = common dso_local global i32 0, align 4
@TMO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* @IB_SMI_CLASS, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %26 = call i32 @mad_rpc_open_port(i32* null, i32 0, i32* %25, i32 2)
  store i32 %26, i32* @srcport, align 4
  %27 = load i32, i32* @srcport, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = call i32 @resolve_sm_portid(i32* null, i32 0, %struct.TYPE_4__* %8)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @IB_DEFAULT_QP1_QKEY, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %31
  %41 = call i32 (...) @umad_size()
  %42 = add nsw i32 %41, 256
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32* @calloc(i32 1, i32 %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @strerror(i32 %48)
  %50 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %3, align 4
  br label %72

51:                                               ; preds = %40
  %52 = load i32, i32* @srcport, align 4
  %53 = call i32 @mad_rpc_portid(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @IB_SA_CLASS, align 4
  %56 = call i32 @umad_register(i32 %54, i32 %55, i32 2, i32 0, i32* null)
  store i32 %56, i32* %10, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @TMO, align 4
  %61 = call i32 @rereg_and_test_port(i8* %57, i32 %58, i32 %59, %struct.TYPE_4__* %8, i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = call i32* @umad_get_mad(i32* %62)
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @free(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @umad_unregister(i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @umad_close_port(i32 %69)
  %71 = call i32 (...) @umad_done()
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %51, %47
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mad_rpc_open_port(i32*, i32, i32*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @resolve_sm_portid(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @umad_size(...) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @mad_rpc_portid(i32) #1

declare dso_local i32 @umad_register(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rereg_and_test_port(i8*, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32* @umad_get_mad(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @umad_unregister(i32, i32) #1

declare dso_local i32 @umad_close_port(i32) #1

declare dso_local i32 @umad_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
