; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rstatd/extr_rstat_proc.c_haveadisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rstatd/extr_rstat_proc.c_haveadisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statinfo = type { %struct.devinfo* }
%struct.devinfo = type { i32, %struct.devinfo*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"rstatd: can't get number of devices: %s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rstatd: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rstatd: can't get device list: %s\00", align 1
@DEVSTAT_TYPE_MASK = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_DIRECT = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @haveadisk() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.statinfo, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @devstat_getnumdevs(i32* null)
  store i32 %5, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @LOG_ERR, align 4
  %9 = load i32, i32* @devstat_errbuf, align 4
  %10 = call i32 @syslog(i32 %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @exit(i32 1) #3
  unreachable

12:                                               ; preds = %0
  %13 = call i64 @devstat_checkversion(i32* null)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load i32, i32* @devstat_errbuf, align 4
  %18 = call i32 @syslog(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %12
  %21 = call i64 @malloc(i32 24)
  %22 = inttoptr i64 %21 to %struct.devinfo*
  %23 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %2, i32 0, i32 0
  store %struct.devinfo* %22, %struct.devinfo** %23, align 8
  %24 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %2, i32 0, i32 0
  %25 = load %struct.devinfo*, %struct.devinfo** %24, align 8
  %26 = call i32 @bzero(%struct.devinfo* %25, i32 24)
  %27 = call i32 @devstat_getdevs(i32* null, %struct.statinfo* %2)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = load i32, i32* @devstat_errbuf, align 4
  %32 = call i32 @syslog(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %71, %34
  %36 = load i32, i32* %1, align 4
  %37 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %2, i32 0, i32 0
  %38 = load %struct.devinfo*, %struct.devinfo** %37, align 8
  %39 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %2, i32 0, i32 0
  %44 = load %struct.devinfo*, %struct.devinfo** %43, align 8
  %45 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DEVSTAT_TYPE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @DEVSTAT_TYPE_DIRECT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %2, i32 0, i32 0
  %58 = load %struct.devinfo*, %struct.devinfo** %57, align 8
  %59 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DEVSTAT_TYPE_PASS, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %74

70:                                               ; preds = %56, %42
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %35

74:                                               ; preds = %69, %35
  %75 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %2, i32 0, i32 0
  %76 = load %struct.devinfo*, %struct.devinfo** %75, align 8
  %77 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %76, i32 0, i32 1
  %78 = load %struct.devinfo*, %struct.devinfo** %77, align 8
  %79 = icmp ne %struct.devinfo* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %2, i32 0, i32 0
  %82 = load %struct.devinfo*, %struct.devinfo** %81, align 8
  %83 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %82, i32 0, i32 1
  %84 = load %struct.devinfo*, %struct.devinfo** %83, align 8
  %85 = call i32 @free(%struct.devinfo* %84)
  br label %86

86:                                               ; preds = %80, %74
  %87 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %2, i32 0, i32 0
  %88 = load %struct.devinfo*, %struct.devinfo** %87, align 8
  %89 = call i32 @free(%struct.devinfo* %88)
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @devstat_getnumdevs(i32*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @devstat_checkversion(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bzero(%struct.devinfo*, i32) #1

declare dso_local i32 @devstat_getdevs(i32*, %struct.statinfo*) #1

declare dso_local i32 @free(%struct.devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
