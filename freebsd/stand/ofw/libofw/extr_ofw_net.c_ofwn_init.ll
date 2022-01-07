; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_ofw_net.c_ofwn_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_ofw_net.c_ofwn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i8* }

@chosen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bootpath\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"boot: ethernet address: %s\0A\00", align 1
@netinstance = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Could not open network device.\0A\00", align 1
@dmabuf = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"dma-alloc\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to allocate DMA buffer (got %p).\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Could not boot from %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iodesc*, i8*)* @ofwn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofwn_init(%struct.iodesc* %0, i8* %1) #0 {
  %3 = alloca %struct.iodesc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.iodesc* %0, %struct.iodesc** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @chosen, align 4
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %11 = call i32 @OF_getprop(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %10, i32 64)
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %13 = call i8* @strchr(i8* %12, i8 signext 58)
  store i8* %13, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %19 = call i32 @OF_finddevice(i8* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %22 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @OF_getprop(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 6)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %46

27:                                               ; preds = %17
  %28 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %29 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @ether_sprintf(i8* %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %34 = call i32 @OF_open(i8* %33)
  store i32 %34, i32* @netinstance, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %46

38:                                               ; preds = %27
  store i8* null, i8** @dmabuf, align 8
  %39 = load i32, i32* @netinstance, align 4
  %40 = call i64 @OF_call_method(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 1, i32 1, i32 65536, i8** @dmabuf)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i8*, i8** @dmabuf, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  br label %46

45:                                               ; preds = %38
  br label %51

46:                                               ; preds = %42, %36, %26
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %48)
  %50 = call i32 (...) @OF_enter()
  br label %51

51:                                               ; preds = %46, %45
  ret void
}

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ether_sprintf(i8*) #1

declare dso_local i32 @OF_open(i8*) #1

declare dso_local i64 @OF_call_method(i8*, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @OF_enter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
