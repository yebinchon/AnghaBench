; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_replay_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_replay_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (i32, %struct.TYPE_5__*, i32)* }

@.str = private unnamed_addr constant [55 x i8] c"Failed to read deleted principal from log version: %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i64, i32*)* @kadm5_log_replay_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kadm5_log_replay_delete(%struct.TYPE_4__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = call i64 @krb5_ret_principal(i32* %12, i32* %11)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @krb5_set_error_message(i32 %19, i64 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %5, align 8
  br label %44

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64 (i32, %struct.TYPE_5__*, i32)*, i64 (i32, %struct.TYPE_5__*, i32)** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 %29(i32 %32, %struct.TYPE_5__* %35, i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @krb5_free_principal(i32 %40, i32 %41)
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %24, %16
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i64 @krb5_ret_principal(i32*, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, i64) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
