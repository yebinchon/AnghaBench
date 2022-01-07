; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_user_mad_reg_req = type { i32, i32, i32, i32, i32, i32*, i32 }

@IB_OPENIB_OUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"fd %d mgmt_class %u mgmt_version %u rmpp_version %d method_mask %p\00", align 1
@IB_USER_MAD_REGISTER_AGENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"fd %d registered to use agent %d qp %d\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"fd %d registering qp %d class 0x%x version %d failed: %m\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umad_register(i32 %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.ib_user_mad_reg_req, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %15 = load i32, i32* @IB_OPENIB_OUI, align 4
  %16 = call i32 @htobe32(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i64*, i64** %11, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20, i64* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 129
  br label %28

28:                                               ; preds = %25, %5
  %29 = phi i1 [ true, %5 ], [ %27, %25 ]
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 1
  store i32 %31, i32* %14, align 4
  %32 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 6
  store i32 %37, i32* %38, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = call i32 (i32*, ...) @memcpy(i32* %43, i64* %44, i64 8)
  br label %50

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @memset(i32* %48, i32 0, i32 8)
  br label %50

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 4
  %52 = bitcast i32* %13 to i8*
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i32 (i32*, ...) @memcpy(i32* %51, i8* %53, i64 4)
  %55 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ib_user_mad_reg_req* %12, i32 40)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @IB_USER_MAD_REGISTER_AGENT, align 4
  %58 = bitcast %struct.ib_user_mad_reg_req* %12 to i8*
  %59 = call i32 @ioctl(i32 %56, i32 %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 (i8*, i32, i32, i32, ...) @DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64, i32 %65)
  %67 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  br label %77

69:                                               ; preds = %50
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i8*, i32, i32, i32, ...) @DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %69, %61
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @memcpy(i32*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ib_user_mad_reg_req*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
