; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_inquire_sec_context_by_oid.c_inquire_sec_context_authz_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_inquire_sec_context_by_oid.c_inquire_sec_context_authz_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@GSS_C_NO_BUFFER_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"No ticket to obtain authz data from\00", align 1
@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_9__*, i32, i32, i32*)* @inquire_sec_context_authz_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inquire_sec_context_authz_data(i64* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i64*, i64** %7, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @GSS_C_NO_BUFFER_SET, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = call i32 @HEIMDAL_MUTEX_lock(i32* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %5
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = call i32 @HEIMDAL_MUTEX_unlock(i32* %27)
  %29 = load i64, i64* @EINVAL, align 8
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* @EINVAL, align 8
  %32 = call i32 @_gsskrb5_set_status(i64 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %33, i64* %6, align 8
  br label %62

34:                                               ; preds = %5
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @krb5_ticket_get_authorization_data_type(i32 %35, i32* %38, i32 %39, %struct.TYPE_8__* %12)
  store i64 %40, i64* %14, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = call i32 @HEIMDAL_MUTEX_unlock(i32* %42)
  %44 = load i64, i64* %14, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i64, i64* %14, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %49, i64* %6, align 8
  br label %62

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i64*, i64** %7, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i64 @gss_add_buffer_set_member(i64* %57, %struct.TYPE_10__* %13, i32* %58)
  store i64 %59, i64* %14, align 8
  %60 = call i32 @krb5_data_free(%struct.TYPE_8__* %12)
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %50, %46, %25
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @_gsskrb5_set_status(i64, i8*) #1

declare dso_local i64 @krb5_ticket_get_authorization_data_type(i32, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @gss_add_buffer_set_member(i64*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
