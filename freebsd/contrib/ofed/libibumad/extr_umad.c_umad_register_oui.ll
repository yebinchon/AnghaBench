; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_register_oui.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_register_oui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_user_mad_reg_req = type { i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"fd %d mgmt_class %u rmpp_version %d oui 0x%x%x%x method_mask %p\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"mgmt class %d not in vendor range 2\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_USER_MAD_REGISTER_AGENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"fd %d registered to use agent %d qp %d class 0x%x oui %p\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"fd %d registering qp %d class 0x%x version %d oui %p failed: %m\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umad_register_oui(i32 %0, i32 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.ib_user_mad_reg_req, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i64, i64* %9, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i64*, i64** %10, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64*, i64** %10, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64*, i64** %10, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64*, i64** %11, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %16, i32 %20, i32 %24, i32 %28, i64* %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 48
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 79
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %5
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %94

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = call i32 @memcpy(i32 %47, i64* %48, i32 4)
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 3
  store i64 %50, i64* %51, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i64*, i64** %11, align 8
  %58 = call i32 @memcpy(i32 %56, i64* %57, i32 4)
  br label %63

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(i32 %61, i32 0, i32 4)
  br label %63

63:                                               ; preds = %59, %54
  %64 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ib_user_mad_reg_req* %12, i32 40)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @IB_USER_MAD_REGISTER_AGENT, align 4
  %67 = bitcast %struct.ib_user_mad_reg_req* %12 to i8*
  %68 = call i32 @ioctl(i32 %65, i32 %66, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64*, i64** %10, align 8
  %79 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %73, i32 %75, i32 %77, i64* %78)
  %80 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %6, align 4
  br label %94

82:                                               ; preds = %63
  %83 = load i32, i32* %7, align 4
  %84 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.ib_user_mad_reg_req, %struct.ib_user_mad_reg_req* %12, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i64*, i64** %10, align 8
  %91 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %85, i32 %87, i32 %89, i64* %90)
  %92 = load i32, i32* @EPERM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %82, %70, %36
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @DEBUG(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ib_user_mad_reg_req*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
