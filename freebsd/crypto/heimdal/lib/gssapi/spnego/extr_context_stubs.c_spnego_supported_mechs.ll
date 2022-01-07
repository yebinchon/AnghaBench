; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_context_stubs.c_spnego_supported_mechs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_context_stubs.c_spnego_supported_mechs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_SPNEGO_MECHANISM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_7__**)* @spnego_supported_mechs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spnego_supported_mechs(i64* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %5, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = call i64 @gss_indicate_mechs(i64* %10, %struct.TYPE_7__** %8)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @GSS_S_COMPLETE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %3, align 8
  br label %67

17:                                               ; preds = %2
  %18 = load i64*, i64** %4, align 8
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %20 = call i64 @gss_create_empty_oid_set(i64* %18, %struct.TYPE_7__** %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @GSS_S_COMPLETE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 @gss_release_oid_set(i64* %7, %struct.TYPE_7__** %8)
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %67

27:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %61, %27
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* @GSS_SPNEGO_MECHANISM, align 4
  %41 = call i64 @gss_oid_equal(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %61

44:                                               ; preds = %34
  %45 = load i64*, i64** %4, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %52 = call i64 @gss_add_oid_set_member(i64* %45, i32* %50, %struct.TYPE_7__** %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = call i32 @gss_release_oid_set(i64* %7, %struct.TYPE_7__** %8)
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %58 = call i32 @gss_release_oid_set(i64* %7, %struct.TYPE_7__** %57)
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %3, align 8
  br label %67

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %28

64:                                               ; preds = %28
  %65 = call i32 @gss_release_oid_set(i64* %7, %struct.TYPE_7__** %8)
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %64, %55, %24, %15
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @gss_indicate_mechs(i64*, %struct.TYPE_7__**) #1

declare dso_local i64 @gss_create_empty_oid_set(i64*, %struct.TYPE_7__**) #1

declare dso_local i32 @gss_release_oid_set(i64*, %struct.TYPE_7__**) #1

declare dso_local i64 @gss_oid_equal(i32*, i32) #1

declare dso_local i64 @gss_add_oid_set_member(i64*, i32*, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
