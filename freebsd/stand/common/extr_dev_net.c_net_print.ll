; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_dev_net.c_net_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_dev_net.c_net_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif_driver = type { i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@netif_drivers = common dso_local global %struct.netif_driver** null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s devices:\00", align 1
@netdev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\09%s%d:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" (%s%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @net_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.netif_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.netif_driver**, %struct.netif_driver*** @netif_drivers, align 8
  %10 = getelementptr inbounds %struct.netif_driver*, %struct.netif_driver** %9, i64 0
  %11 = load %struct.netif_driver*, %struct.netif_driver** %10, align 8
  %12 = icmp eq %struct.netif_driver* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %2, align 4
  br label %77

15:                                               ; preds = %1
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @netdev, i32 0, i32 0), align 8
  %17 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %77

22:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %72, %22
  %24 = load %struct.netif_driver**, %struct.netif_driver*** @netif_drivers, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.netif_driver*, %struct.netif_driver** %24, i64 %26
  %28 = load %struct.netif_driver*, %struct.netif_driver** %27, align 8
  %29 = icmp ne %struct.netif_driver* %28, null
  br i1 %29, label %30, label %75

30:                                               ; preds = %23
  %31 = load %struct.netif_driver**, %struct.netif_driver*** @netif_drivers, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.netif_driver*, %struct.netif_driver** %31, i64 %33
  %35 = load %struct.netif_driver*, %struct.netif_driver** %34, align 8
  store %struct.netif_driver* %35, %struct.netif_driver** %4, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %68, %30
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.netif_driver*, %struct.netif_driver** %4, align 8
  %39 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %36
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @netdev, i32 0, i32 0), align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %44)
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.netif_driver*, %struct.netif_driver** %4, align 8
  %51 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.netif_driver*, %struct.netif_driver** %4, align 8
  %54 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %52, i32 %60)
  br label %62

62:                                               ; preds = %49, %42
  %63 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %77

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %36

71:                                               ; preds = %36
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %23

75:                                               ; preds = %23
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %65, %20, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @pager_output(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
