; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibportstate.c_get_port_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibportstate.c_get_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@IB_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"smp query port 0 portinfo failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"smp query portinfo failed\00", align 1
@IB_PORT_CAPMASK_F = common dso_local global i32 0, align 4
@IB_PORT_CAP_HAS_EXT_SPEEDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @get_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port_info(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @IB_ATTR_PORT_INFO, align 4
  %22 = load i32, i32* @srcport, align 4
  %23 = call i32 @smp_query_via(i32* %16, i32* %20, i32 %21, i32 0, i32 0, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = call i32 @IBEXIT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  store i32* %16, i32** %11, align 8
  br label %30

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %11, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @IB_ATTR_PORT_INFO, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @srcport, align 4
  %36 = call i32 @smp_query_via(i32* %31, i32* %32, i32 %33, i32 %34, i32 0, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = call i32 @IBEXIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %30
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @IB_PORT_CAPMASK_F, align 4
  %43 = call i32 @mad_get_field(i32* %41, i32 0, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @IB_PORT_CAP_HAS_EXT_SPEEDS, align 4
  %46 = call i32 @CL_NTOH32(i32 %45)
  %47 = and i32 %44, %46
  %48 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %48)
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @smp_query_via(i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @IBEXIT(i8*) #2

declare dso_local i32 @mad_get_field(i32*, i32, i32) #2

declare dso_local i32 @CL_NTOH32(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
