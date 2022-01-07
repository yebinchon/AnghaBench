; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_sequence.c__gssapi_msg_order_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_sequence.c__gssapi_msg_order_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_msg_order = type { i64*, i64, i64, i64, i64 }

@DEFAULT_JITTER_WINDOW = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_msg_order_create(i64* %0, %struct.gss_msg_order** %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.gss_msg_order**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store %struct.gss_msg_order** %1, %struct.gss_msg_order*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* %12, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i64, i64* @DEFAULT_JITTER_WINDOW, align 8
  store i64 %18, i64* %12, align 8
  br label %19

19:                                               ; preds = %17, %6
  %20 = load i64*, i64** %8, align 8
  %21 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %9, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @msg_order_alloc(i64* %20, %struct.gss_msg_order** %21, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @GSS_S_COMPLETE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %7, align 8
  br label %54

29:                                               ; preds = %19
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %9, align 8
  %32 = load %struct.gss_msg_order*, %struct.gss_msg_order** %31, align 8
  %33 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %32, i32 0, i32 4
  store i64 %30, i64* %33, align 8
  %34 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %9, align 8
  %35 = load %struct.gss_msg_order*, %struct.gss_msg_order** %34, align 8
  %36 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %9, align 8
  %39 = load %struct.gss_msg_order*, %struct.gss_msg_order** %38, align 8
  %40 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %39, i32 0, i32 2
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %9, align 8
  %43 = load %struct.gss_msg_order*, %struct.gss_msg_order** %42, align 8
  %44 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub nsw i64 %45, 1
  %47 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %9, align 8
  %48 = load %struct.gss_msg_order*, %struct.gss_msg_order** %47, align 8
  %49 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %46, i64* %51, align 8
  %52 = load i64*, i64** %8, align 8
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %29, %27
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local i64 @msg_order_alloc(i64*, %struct.gss_msg_order**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
