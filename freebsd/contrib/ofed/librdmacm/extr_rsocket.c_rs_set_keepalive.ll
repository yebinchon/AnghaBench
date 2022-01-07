; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_set_keepalive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_set_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32 }

@RS_OPT_SVC_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"/proc/sys/net/ipv4/tcp_keepalive_time\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@tcp_svc = common dso_local global i32 0, align 4
@RS_SVC_ADD_KEEPALIVE = common dso_local global i32 0, align 4
@RS_SVC_REM_KEEPALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, i32)* @rs_set_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_set_keepalive(%struct.rsocket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %12 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %22 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %10
  store i32 0, i32* %3, align 4
  br label %65

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %33 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %31
  %37 = call i32* @fopen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %37, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %42 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %41, i32 0, i32 1
  %43 = call i32 @fscanf(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %42)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %47 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %46, i32 0, i32 1
  store i32 7200, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @fclose(i32* %49)
  br label %54

51:                                               ; preds = %36
  %52 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %53 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %52, i32 0, i32 1
  store i32 7200, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %57 = load i32, i32* @RS_SVC_ADD_KEEPALIVE, align 4
  %58 = call i32 @rs_notify_svc(i32* @tcp_svc, %struct.rsocket* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %63

59:                                               ; preds = %28
  %60 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %61 = load i32, i32* @RS_SVC_REM_KEEPALIVE, align 4
  %62 = call i32 @rs_notify_svc(i32* @tcp_svc, %struct.rsocket* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %27
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rs_notify_svc(i32*, %struct.rsocket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
