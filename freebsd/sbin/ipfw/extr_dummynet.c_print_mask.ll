; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_print_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_print_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"    mask: %s 0x%02x 0x%08x/0x%04x -> 0x%08x/0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"queue,\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\0A        mask: %sproto: 0x%02x, flow_id: 0x%08x,  \00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"%s/0x%04x -> \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s/0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipfw_flow_id*)* @print_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mask(%struct.ipfw_flow_id* %0) #0 {
  %2 = alloca %struct.ipfw_flow_id*, align 8
  %3 = alloca [255 x i8], align 16
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %2, align 8
  %4 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %5 = call i32 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %9 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %14 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %15 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %18 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %21 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %24 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %27 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28)
  br label %64

30:                                               ; preds = %1
  %31 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %32 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %38 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %41 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %36, i32 %39, i32 %42)
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %46 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %45, i32 0, i32 7
  %47 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %48 = call i32 @inet_ntop(i32 %44, i32* %46, i8* %47, i32 255)
  %49 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %50 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %51 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %52)
  %54 = load i32, i32* @AF_INET6, align 4
  %55 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %56 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %55, i32 0, i32 6
  %57 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %58 = call i32 @inet_ntop(i32 %54, i32* %56, i8* %57, i32 255)
  %59 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %60 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %61 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %59, i32 %62)
  br label %64

64:                                               ; preds = %30, %7
  ret void
}

declare dso_local i32 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id*) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
