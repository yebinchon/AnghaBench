; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_inquire_sec_context_by_oid.c_inquire_sec_context_get_subkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_inquire_sec_context_by_oid.c_inquire_sec_context_get_subkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%d is not a valid subkey type\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"have no subkey of type %d\00", align 1
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_13__*, i32, i32, i32*)* @inquire_sec_context_get_subkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inquire_sec_context_get_subkey(i64* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__, align 4
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %17 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %17, i64* %14, align 8
  %18 = call i32 @krb5_data_zero(%struct.TYPE_12__* %13)
  %19 = call i32* (...) @krb5_storage_emem()
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = call i32 (...) @_gsskrb5_clear_status()
  %24 = load i64, i64* @ENOMEM, align 8
  store i64 %24, i64* %15, align 8
  br label %89

25:                                               ; preds = %5
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = call i32 @HEIMDAL_MUTEX_lock(i32* %27)
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %42 [
    i32 130, label %30
    i32 129, label %34
    i32 128, label %38
  ]

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @_gsskrb5i_get_acceptor_subkey(%struct.TYPE_13__* %31, i32 %32, i32** %11)
  store i64 %33, i64* %15, align 8
  br label %47

34:                                               ; preds = %25
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @_gsskrb5i_get_initiator_subkey(%struct.TYPE_13__* %35, i32 %36, i32** %11)
  store i64 %37, i64* %15, align 8
  br label %47

38:                                               ; preds = %25
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @_gsskrb5i_get_token_key(%struct.TYPE_13__* %39, i32 %40, i32** %11)
  store i64 %41, i64* %15, align 8
  br label %47

42:                                               ; preds = %25
  %43 = load i64, i64* @EINVAL, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @_gsskrb5_set_status(i64 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* @EINVAL, align 8
  store i64 %46, i64* %15, align 8
  br label %47

47:                                               ; preds = %42, %38, %34, %30
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = call i32 @HEIMDAL_MUTEX_unlock(i32* %49)
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %89

54:                                               ; preds = %47
  %55 = load i32*, i32** %11, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i64, i64* @EINVAL, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @_gsskrb5_set_status(i64 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* @EINVAL, align 8
  store i64 %61, i64* %15, align 8
  br label %89

62:                                               ; preds = %54
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @krb5_store_keyblock(i32* %63, i32 %65)
  store i64 %66, i64* %15, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @krb5_free_keyblock(i32 %67, i32* %68)
  %70 = load i64, i64* %15, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %89

73:                                               ; preds = %62
  %74 = load i32*, i32** %12, align 8
  %75 = call i64 @krb5_storage_to_data(i32* %74, %struct.TYPE_12__* %13)
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %89

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = load i64*, i64** %6, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = call i64 @gss_add_buffer_set_member(i64* %86, %struct.TYPE_14__* %16, i32* %87)
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %79, %78, %72, %57, %53, %22
  %90 = call i32 @krb5_data_free(%struct.TYPE_12__* %13)
  %91 = load i32*, i32** %12, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @krb5_storage_free(i32* %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i64, i64* %15, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* %15, align 8
  %101 = load i64*, i64** %6, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i64, i64* %14, align 8
  ret i64 %104
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_12__*) #1

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i32 @_gsskrb5_clear_status(...) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @_gsskrb5i_get_acceptor_subkey(%struct.TYPE_13__*, i32, i32**) #1

declare dso_local i64 @_gsskrb5i_get_initiator_subkey(%struct.TYPE_13__*, i32, i32**) #1

declare dso_local i64 @_gsskrb5i_get_token_key(%struct.TYPE_13__*, i32, i32**) #1

declare dso_local i32 @_gsskrb5_set_status(i64, i8*, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i64 @krb5_store_keyblock(i32*, i32) #1

declare dso_local i32 @krb5_free_keyblock(i32, i32*) #1

declare dso_local i64 @krb5_storage_to_data(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @gss_add_buffer_set_member(i64*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_12__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
