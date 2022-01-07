; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_process_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"error reading message from %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"process_msg: no memory\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"process_msg: client send too short command\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"process_msg: client send too I_HAVE data\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"Slave %s (version %lu) have later version the master (version %lu) OUT OF SYNC\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Slave claims to not have version we already sent to it\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Ignoring command %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32, i8*, i32)* @process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_msg(i32 %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = call i32 @krb5_read_priv_message(i32 %16, i32 %19, i32* %21, %struct.TYPE_9__* %13)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @krb5_warn(i32 %26, i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 1, i32* %6, align 4
  br label %119

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @krb5_storage_from_mem(i32 %34, i32 %36)
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @krb5_data_free(%struct.TYPE_9__* %13)
  store i32 1, i32* %6, align 4
  br label %119

44:                                               ; preds = %32
  %45 = load i32*, i32** %14, align 8
  %46 = call i64 @krb5_ret_int32(i32* %45, i32* %15)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @krb5_data_free(%struct.TYPE_9__* %13)
  store i32 1, i32* %6, align 4
  br label %119

52:                                               ; preds = %44
  %53 = load i32, i32* %15, align 4
  switch i32 %53, label %108 [
    i32 128, label %54
    i32 129, label %106
    i32 131, label %107
    i32 130, label %107
  ]

54:                                               ; preds = %52
  %55 = load i32*, i32** %14, align 8
  %56 = call i64 @krb5_ret_int32(i32* %55, i32* %15)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %112

63:                                               ; preds = %54
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %76, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %79, i64 %81, i64 %83)
  br label %85

85:                                               ; preds = %75, %71
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %68, %63
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %96, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %105

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @send_diffs(i32 %99, %struct.TYPE_8__* %100, i32 %101, i8* %102, i32 %103)
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %98, %95
  br label %112

106:                                              ; preds = %52
  br label %112

107:                                              ; preds = %52, %52
  br label %108

108:                                              ; preds = %52, %107
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %106, %105, %60
  %113 = call i32 @krb5_data_free(%struct.TYPE_9__* %13)
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @krb5_storage_free(i32* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = call i32 @slave_seen(%struct.TYPE_8__* %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %112, %48, %40, %25
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @krb5_read_priv_message(i32, i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*, i32) #1

declare dso_local i32* @krb5_storage_from_mem(i32, i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_9__*) #1

declare dso_local i64 @krb5_ret_int32(i32*, i32*) #1

declare dso_local i32 @send_diffs(i32, %struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @slave_seen(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
