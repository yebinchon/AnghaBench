; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_replay.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@KADM5_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported replay op %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kadm5_log_replay(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %43 [
    i32 132, label %13
    i32 131, label %19
    i32 128, label %25
    i32 130, label %31
    i32 129, label %37
  ]

13:                                               ; preds = %5
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @kadm5_log_replay_create(%struct.TYPE_8__* %14, i32 %15, i32 %16, i32* %17)
  store i32 %18, i32* %6, align 4
  br label %51

19:                                               ; preds = %5
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @kadm5_log_replay_delete(%struct.TYPE_8__* %20, i32 %21, i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %51

25:                                               ; preds = %5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @kadm5_log_replay_rename(%struct.TYPE_8__* %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %51

31:                                               ; preds = %5
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @kadm5_log_replay_modify(%struct.TYPE_8__* %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %6, align 4
  br label %51

37:                                               ; preds = %5
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @kadm5_log_replay_nop(%struct.TYPE_8__* %38, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %6, align 4
  br label %51

43:                                               ; preds = %5
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KADM5_FAILURE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @krb5_set_error_message(i32 %46, i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @KADM5_FAILURE, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %43, %37, %31, %25, %19, %13
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @kadm5_log_replay_create(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @kadm5_log_replay_delete(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @kadm5_log_replay_rename(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @kadm5_log_replay_modify(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @kadm5_log_replay_nop(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
