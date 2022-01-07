; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rstatd/extr_rstat_proc.c_updatexfers.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rstatd/extr_rstat_proc.c_updatexfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statinfo = type { %struct.devinfo* }
%struct.devinfo = type { i32, %struct.devinfo*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"rstatd: can't get number of devices: %s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rstatd: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rstatd: can't get device list: %s\00", align 1
@DEVSTAT_TYPE_MASK = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_DIRECT = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_PASS = common dso_local global i32 0, align 4
@DEVSTAT_N_TRANS_FLAGS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @updatexfers(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.statinfo, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 @devstat_getnumdevs(i32* null)
  store i32 %12, i32* %10, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = load i32, i32* @devstat_errbuf, align 4
  %17 = call i32 @syslog(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  %20 = call i64 @devstat_checkversion(i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = load i32, i32* @devstat_errbuf, align 4
  %25 = call i32 @syslog(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %19
  %28 = call i64 @malloc(i32 24)
  %29 = inttoptr i64 %28 to %struct.devinfo*
  %30 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  store %struct.devinfo* %29, %struct.devinfo** %30, align 8
  %31 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  %32 = load %struct.devinfo*, %struct.devinfo** %31, align 8
  %33 = call i32 @bzero(%struct.devinfo* %32, i32 24)
  %34 = call i32 @devstat_getdevs(i32* null, %struct.statinfo* %9)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load i32, i32* @devstat_errbuf, align 4
  %39 = call i32 @syslog(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %125, %41
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  %45 = load %struct.devinfo*, %struct.devinfo** %44, align 8
  %46 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %50, %51
  br label %53

53:                                               ; preds = %49, %42
  %54 = phi i1 [ false, %42 ], [ %52, %49 ]
  br i1 %54, label %55, label %128

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  %57 = load %struct.devinfo*, %struct.devinfo** %56, align 8
  %58 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DEVSTAT_TYPE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @DEVSTAT_TYPE_DIRECT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %124

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  %71 = load %struct.devinfo*, %struct.devinfo** %70, align 8
  %72 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DEVSTAT_TYPE_PASS, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %105, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @DEVSTAT_N_TRANS_FLAGS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  %89 = load %struct.devinfo*, %struct.devinfo** %88, align 8
  %90 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %87
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %83

108:                                              ; preds = %83
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @INT_MAX, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @INT_MAX, align 4
  store i32 %113, i32* %8, align 4
  br label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = load i32, i32* %8, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %116, %69, %55
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %42

128:                                              ; preds = %53
  %129 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  %130 = load %struct.devinfo*, %struct.devinfo** %129, align 8
  %131 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %130, i32 0, i32 1
  %132 = load %struct.devinfo*, %struct.devinfo** %131, align 8
  %133 = icmp ne %struct.devinfo* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  %136 = load %struct.devinfo*, %struct.devinfo** %135, align 8
  %137 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %136, i32 0, i32 1
  %138 = load %struct.devinfo*, %struct.devinfo** %137, align 8
  %139 = call i32 @free(%struct.devinfo* %138)
  br label %140

140:                                              ; preds = %134, %128
  %141 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %9, i32 0, i32 0
  %142 = load %struct.devinfo*, %struct.devinfo** %141, align 8
  %143 = call i32 @free(%struct.devinfo* %142)
  ret void
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
