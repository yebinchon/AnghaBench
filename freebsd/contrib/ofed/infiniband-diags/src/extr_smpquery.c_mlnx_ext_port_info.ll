; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_smpquery.c_mlnx_ext_port_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_smpquery.c_mlnx_ext_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@IB_ATTR_MLNX_EXT_PORT_INFO = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Mellanox ext port info query failed\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"# MLNX ext Port info: %s port %d\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8**, i32)* @mlnx_ext_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlnx_ext_port_info(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2300 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strtol(i8* %22, i32 0, i32 0)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @IB_ATTR_MLNX_EXT_PORT_INFO, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @srcport, align 4
  %29 = call i32 @smp_query_via(i8* %16, i32* %25, i32 %26, i32 %27, i32 0, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %41

32:                                               ; preds = %24
  %33 = getelementptr inbounds [2300 x i8], [2300 x i8]* %8, i64 0, i64 0
  %34 = trunc i64 %14 to i32
  %35 = call i32 @mad_dump_mlnx_ext_port_info(i8* %33, i32 2300, i8* %16, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @portid2str(i32* %36)
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds [2300 x i8], [2300 x i8]* %8, i64 0, i64 0
  %40 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %38, i8* %39)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %32, %31
  %42 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strtol(i8*, i32, i32) #2

declare dso_local i32 @smp_query_via(i8*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @mad_dump_mlnx_ext_port_info(i8*, i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #2

declare dso_local i8* @portid2str(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
