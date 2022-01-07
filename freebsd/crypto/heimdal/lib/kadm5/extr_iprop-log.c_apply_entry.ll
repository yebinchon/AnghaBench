; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_apply_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_apply_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.replay_options = type { i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ver %u... \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"kadm5_log_replay\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i32, i32, i64, i32*, i8*)* @apply_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_entry(%struct.TYPE_4__* %0, i64 %1, i32 %2, i32 %3, i64 %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.replay_options*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = bitcast i8* %17 to %struct.replay_options*
  store %struct.replay_options* %18, %struct.replay_options** %15, align 8
  %19 = load %struct.replay_options*, %struct.replay_options** %15, align 8
  %20 = getelementptr inbounds %struct.replay_options, %struct.replay_options* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.replay_options*, %struct.replay_options** %15, align 8
  %26 = getelementptr inbounds %struct.replay_options, %struct.replay_options* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %23, %7
  %31 = load %struct.replay_options*, %struct.replay_options** %15, align 8
  %32 = getelementptr inbounds %struct.replay_options, %struct.replay_options* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.replay_options*, %struct.replay_options** %15, align 8
  %38 = getelementptr inbounds %struct.replay_options, %struct.replay_options* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp sgt i64 %36, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35, %23
  %43 = load i32*, i32** %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* @SEEK_CUR, align 4
  %46 = call i32 @krb5_storage_seek(i32* %43, i64 %44, i32 %45)
  br label %68

47:                                               ; preds = %35, %30
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @fflush(i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i64 @kadm5_log_replay(%struct.TYPE_4__* %52, i32 %53, i64 %54, i64 %55, i32* %56)
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %47
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @krb5_warn(i32 %63, i64 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %47
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %42
  ret void
}

declare dso_local i32 @krb5_storage_seek(i32*, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @kadm5_log_replay(%struct.TYPE_4__*, i32, i64, i64, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
