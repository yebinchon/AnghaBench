; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_common.c_gssapi_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_common.c_gssapi_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@GSS_C_GSS_CODE = common dso_local global i32 0, align 4
@GSS_C_MECH_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"gss-code: %lu %.*s -- mech-code: %lu %.*s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gssapi_err(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @GSS_C_GSS_CODE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @gss_display_status(i64* %7, i64 %17, i32 %18, i32 %19, i64* %11, %struct.TYPE_4__* %9)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @GSS_C_MECH_CODE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @gss_display_status(i64* %7, i64 %21, i32 %22, i32 %23, i64* %11, %struct.TYPE_4__* %10)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = call i64 @asprintf(i8** %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %28, i8* %31, i64 %32, i32 %35, i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i8*, i8** %12, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %3
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = call i32 @gss_release_buffer(i64* %7, %struct.TYPE_4__* %9)
  %48 = call i32 @gss_release_buffer(i64* %7, %struct.TYPE_4__* %10)
  %49 = load i8*, i8** %12, align 8
  ret i8* %49
}

declare dso_local i64 @gss_display_status(i64*, i64, i32, i32, i64*, %struct.TYPE_4__*) #1

declare dso_local i64 @asprintf(i8**, i8*, i64, i32, i8*, i64, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
