; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_iprop_replay.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_iprop_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_options = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*, i32, i32)* }

@context = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"db->open\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"kadm5_log_init\00", align 1
@apply_entry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"kadm5_log_foreach\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"kadm5_log_end\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"db->close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iprop_replay(%struct.replay_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.replay_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  store %struct.replay_options* %0, %struct.replay_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = load %struct.replay_options*, %struct.replay_options** %4, align 8
  %10 = getelementptr inbounds %struct.replay_options, %struct.replay_options* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.replay_options*, %struct.replay_options** %4, align 8
  %13 = getelementptr inbounds %struct.replay_options, %struct.replay_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_8__* @get_kadmin_context(i32 %11, i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64 (i32, %struct.TYPE_9__*, i32, i32)*, i64 (i32, %struct.TYPE_9__*, i32, i32)** %19, align 8
  %21 = load i32, i32* @context, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = load i32, i32* @O_CREAT, align 4
  %27 = or i32 %25, %26
  %28 = call i64 %20(i32 %21, %struct.TYPE_9__* %24, i32 %27, i32 384)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @context, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @krb5_err(i32 %32, i32 1, i64 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = call i64 @kadm5_log_init(%struct.TYPE_8__* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @context, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @krb5_err(i32 %41, i32 1, i64 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = load i32, i32* @apply_entry, align 4
  %47 = load %struct.replay_options*, %struct.replay_options** %4, align 8
  %48 = call i64 @kadm5_log_foreach(%struct.TYPE_8__* %45, i32 %46, %struct.replay_options* %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @context, align 4
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @krb5_warn(i32 %52, i64 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = call i64 @kadm5_log_end(%struct.TYPE_8__* %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @context, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @krb5_warn(i32 %61, i64 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)** %68, align 8
  %70 = load i32, i32* @context, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i64 %69(i32 %70, %struct.TYPE_9__* %73)
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load i32, i32* @context, align 4
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @krb5_err(i32 %78, i32 1, i64 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %64
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @get_kadmin_context(i32, i32) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @kadm5_log_init(%struct.TYPE_8__*) #1

declare dso_local i64 @kadm5_log_foreach(%struct.TYPE_8__*, i32, %struct.replay_options*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @kadm5_log_end(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
