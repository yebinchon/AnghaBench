; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_vendstat.c_do_vendor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_vendstat.c_do_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmad_port = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@ibd_timeout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"vendstat: method %u, attribute %u failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ibmad_port*, i32, i32, i32, i32, i8*)* @do_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vendor(i32* %0, %struct.ibmad_port* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ibmad_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %9, align 8
  store %struct.ibmad_port* %1, %struct.ibmad_port** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = call i32 @memset(%struct.TYPE_4__* %16, i32 0, i32 20)
  %18 = load i32, i32* %11, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %12, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @ibd_timeout, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %14, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %15, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.ibmad_port*, %struct.ibmad_port** %10, align 8
  %31 = call i32 @ib_vendor_call_via(i8* %28, i32* %29, %struct.TYPE_4__* %16, %struct.ibmad_port* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  store i32 -1, i32* %8, align 4
  br label %39

38:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ib_vendor_call_via(i8*, i32*, %struct.TYPE_4__*, %struct.ibmad_port*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
