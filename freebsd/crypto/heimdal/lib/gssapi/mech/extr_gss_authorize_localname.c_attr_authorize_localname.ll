; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_authorize_localname.c_attr_authorize_localname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_authorize_localname.c_attr_authorize_localname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_name = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@GSS_S_UNAVAILABLE = common dso_local global i64 0, align 8
@GSS_C_NT_USER_NAME = common dso_local global i32 0, align 4
@GSS_S_BAD_NAMETYPE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_C_ATTR_LOCAL_LOGIN_USER = common dso_local global i32 0, align 4
@GSS_S_UNAUTHORIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct._gss_name*, %struct._gss_name*)* @attr_authorize_localname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @attr_authorize_localname(i64* %0, %struct._gss_name* %1, %struct._gss_name* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct._gss_name*, align 8
  %7 = alloca %struct._gss_name*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct._gss_name* %1, %struct._gss_name** %6, align 8
  store %struct._gss_name* %2, %struct._gss_name** %7, align 8
  %16 = load i64, i64* @GSS_S_UNAVAILABLE, align 8
  store i64 %16, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  %17 = load %struct._gss_name*, %struct._gss_name** %7, align 8
  %18 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %17, i32 0, i32 1
  %19 = load i32, i32* @GSS_C_NT_USER_NAME, align 4
  %20 = call i32 @gss_oid_equal(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* @GSS_S_BAD_NAMETYPE, align 8
  store i64 %23, i64* %4, align 8
  br label %78

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %73, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @GSS_S_COMPLETE, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %34, label %76

34:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %35 = load i64*, i64** %5, align 8
  %36 = load %struct._gss_name*, %struct._gss_name** %6, align 8
  %37 = ptrtoint %struct._gss_name* %36 to i32
  %38 = load i32, i32* @GSS_C_ATTR_LOCAL_LOGIN_USER, align 4
  %39 = call i64 @gss_get_name_attribute(i64* %35, i32 %37, i32 %38, i32* %14, i32* %15, %struct.TYPE_7__* %12, %struct.TYPE_7__* %13, i32* %9)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @GSS_ERROR(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %8, align 8
  br label %76

45:                                               ; preds = %34
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct._gss_name*, %struct._gss_name** %7, align 8
  %52 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct._gss_name*, %struct._gss_name** %7, align 8
  %60 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct._gss_name*, %struct._gss_name** %7, align 8
  %64 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @memcmp(i32 %58, i32 %62, i64 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %70, i64* %8, align 8
  br label %73

71:                                               ; preds = %56, %48, %45
  %72 = load i64, i64* @GSS_S_UNAUTHORIZED, align 8
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = call i32 @gss_release_buffer(i64* %11, %struct.TYPE_7__* %12)
  %75 = call i32 @gss_release_buffer(i64* %11, %struct.TYPE_7__* %13)
  br label %25

76:                                               ; preds = %43, %32
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %76, %22
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i32 @gss_oid_equal(i32*, i32) #1

declare dso_local i64 @gss_get_name_attribute(i64*, i32, i32, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32*) #1

declare dso_local i64 @GSS_ERROR(i64) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
