; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibping.c_ibping_serv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibping.c_ibping_serv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"starting to serve...\00", align 1
@srcport = common dso_local global i32 0, align 4
@IB_VENDOR_RANGE2_DATA_OFFS = common dso_local global i32 0, align 4
@host_and_domain = common dso_local global i32 0, align 4
@IB_VENDOR_RANGE2_DATA_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Pong: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"respond failed\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"server out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @ibping_serv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ibping_serv() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i32, i32* @srcport, align 4
  %7 = call i8* @mad_receive_via(i32 0, i32 -1, i32 %6)
  store i8* %7, i8** %1, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @umad_status(i8* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i8*, i8** %1, align 8
  %15 = call i8* @umad_get_mad(i8* %14)
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @IB_VENDOR_RANGE2_DATA_OFFS, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @host_and_domain, align 4
  %22 = load i32, i32* @IB_VENDOR_RANGE2_DATA_SIZE, align 4
  %23 = call i32 @memcpy(i8* %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %1, align 8
  %27 = load i32, i32* @srcport, align 4
  %28 = call i64 @mad_respond_via(i8* %26, i32 0, i32 0, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %13
  %31 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %13
  br label %33

33:                                               ; preds = %32, %9
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @mad_free(i8* %34)
  br label %5

36:                                               ; preds = %5
  %37 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  ret i8* null
}

declare dso_local i32 @DEBUG(i8*, ...) #1

declare dso_local i8* @mad_receive_via(i32, i32, i32) #1

declare dso_local i64 @umad_status(i8*) #1

declare dso_local i8* @umad_get_mad(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @mad_respond_via(i8*, i32, i32, i32) #1

declare dso_local i32 @mad_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
