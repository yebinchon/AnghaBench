; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_last_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_last_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.last_version_options = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"kadm5_log_init\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"kadm5_log_get_version\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"kadm5_log_end\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"version: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @last_version(%struct.last_version_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.last_version_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.last_version_options* %0, %struct.last_version_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = load %struct.last_version_options*, %struct.last_version_options** %4, align 8
  %11 = getelementptr inbounds %struct.last_version_options, %struct.last_version_options* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.last_version_options*, %struct.last_version_options** %4, align 8
  %14 = getelementptr inbounds %struct.last_version_options, %struct.last_version_options* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @get_kadmin_context(i32 %12, i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @kadm5_log_init(i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @context, align 4
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @krb5_err(i32 %22, i32 1, i64 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @kadm5_log_get_version(i32* %26, i64* %9)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @context, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @krb5_err(i32 %31, i32 1, i64 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @kadm5_log_end(i32* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @context, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @krb5_warn(i32 %40, i64 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  ret i32 0
}

declare dso_local i32* @get_kadmin_context(i32, i32) #1

declare dso_local i64 @kadm5_log_init(i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @kadm5_log_get_version(i32*, i64*) #1

declare dso_local i64 @kadm5_log_end(i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
