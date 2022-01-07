; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }
%struct.ifgroupreq = type { i32, %struct.ifg_req* }
%struct.ifg_req = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"Failed to get groups\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\09groups: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ifaddrs*)* @print_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_groups(i32* %0, %struct.ifaddrs* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifgroupreq, align 8
  %6 = alloca %struct.ifg_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ifaddrs* %1, %struct.ifaddrs** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %11 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ifconfig_get_groups(i32* %9, i32 %12, %struct.ifgroupreq* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  %19 = load %struct.ifg_req*, %struct.ifg_req** %18, align 8
  store %struct.ifg_req* %19, %struct.ifg_req** %6, align 8
  %20 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %54, %17
  %23 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %24 = icmp ne %struct.ifg_req* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %27, 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %57

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %37 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %50 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %46, %31
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %56 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %55, i32 1
  store %struct.ifg_req* %56, %struct.ifg_req** %6, align 8
  br label %22

57:                                               ; preds = %29
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  %64 = load %struct.ifg_req*, %struct.ifg_req** %63, align 8
  %65 = call i32 @free(%struct.ifg_req* %64)
  ret void
}

declare dso_local i64 @ifconfig_get_groups(i32*, i32, %struct.ifgroupreq*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(%struct.ifg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
