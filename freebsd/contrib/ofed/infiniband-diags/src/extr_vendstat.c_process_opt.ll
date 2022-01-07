; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_vendstat.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_vendstat.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@general_info = common dso_local global i32 0, align 4
@xmit_wait = common dso_local global i32 0, align 4
@counter_group_info = common dso_local global i32 0, align 4
@config_counter_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@cg0 = common dso_local global i32 0, align 4
@cg1 = common dso_local global i32 0, align 4
@read_cs_records = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%x,%x\00", align 1
@read_cs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@write_cs_records = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%x,%x,%x\00", align 1
@write_cs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@dgid = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"dgid format is wrong!\0A\00", align 1
@with_grh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @process_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_opt(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %101 [
    i32 78, label %10
    i32 119, label %11
    i32 105, label %12
    i32 99, label %13
    i32 82, label %20
    i32 87, label %53
    i32 25, label %91
  ]

10:                                               ; preds = %3
  store i32 1, i32* @general_info, align 4
  br label %102

11:                                               ; preds = %3
  store i32 1, i32* @xmit_wait, align 4
  br label %102

12:                                               ; preds = %3
  store i32 1, i32* @counter_group_info, align 4
  br label %102

13:                                               ; preds = %3
  store i32 1, i32* @config_counter_group, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @cg0, i32* @cg1)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %103

19:                                               ; preds = %13
  br label %102

20:                                               ; preds = %3
  %21 = load i32, i32* @read_cs_records, align 4
  %22 = icmp sge i32 %21, 18
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %102

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @read_cs, i32 0, i32 0), align 8
  %27 = load i32, i32* @read_cs_records, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @read_cs, i32 0, i32 0), align 8
  %32 = load i32, i32* @read_cs_records, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %30, i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %103

40:                                               ; preds = %24
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @read_cs, i32 0, i32 0), align 8
  %45 = load i32, i32* @read_cs_records, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @read_cs_records, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @read_cs_records, align 4
  br label %102

53:                                               ; preds = %3
  %54 = load i32, i32* @write_cs_records, align 4
  %55 = icmp sge i32 %54, 18
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %102

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_cs, i32 0, i32 0), align 8
  %60 = load i32, i32* @write_cs_records, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_cs, i32 0, i32 0), align 8
  %65 = load i32, i32* @write_cs_records, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_cs, i32 0, i32 0), align 8
  %70 = load i32, i32* @write_cs_records, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %63, i32* %68, i32* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %103

78:                                               ; preds = %57
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_cs, i32 0, i32 0), align 8
  %83 = load i32, i32* @write_cs_records, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* @write_cs_records, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @write_cs_records, align 4
  br label %102

91:                                               ; preds = %3
  %92 = load i32, i32* @AF_INET6, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @inet_pton(i32 %92, i8* %93, i32* @dgid)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 (...) @ibdiag_show_usage()
  store i32 1, i32* %4, align 4
  br label %103

100:                                              ; preds = %91
  store i32 1, i32* @with_grh, align 4
  br label %102

101:                                              ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %103

102:                                              ; preds = %100, %88, %56, %50, %23, %19, %12, %11, %10
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %101, %96, %77, %39, %18
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ibdiag_show_usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
