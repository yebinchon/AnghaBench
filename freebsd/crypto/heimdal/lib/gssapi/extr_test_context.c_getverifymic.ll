; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_context.c_getverifymic.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_context.c_getverifymic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"gss_get_mic failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gss_verify_mic failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @getverifymic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getverifymic(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 3, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @gss_get_mic(i64* %9, i32 %14, i32 0, %struct.TYPE_7__* %7, %struct.TYPE_7__* %8)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @GSS_S_COMPLETE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @gssapi_err(i64 %20, i64 %21, i32 %22)
  %24 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @gss_verify_mic(i64* %9, i32 %26, %struct.TYPE_7__* %7, %struct.TYPE_7__* %8, i32* %11)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @GSS_S_COMPLETE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @gssapi_err(i64 %32, i64 %33, i32 %34)
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = call i32 @gss_release_buffer(i64* %9, %struct.TYPE_7__* %8)
  ret void
}

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @gssapi_err(i64, i64, i32) #1

declare dso_local i64 @gss_verify_mic(i64*, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
