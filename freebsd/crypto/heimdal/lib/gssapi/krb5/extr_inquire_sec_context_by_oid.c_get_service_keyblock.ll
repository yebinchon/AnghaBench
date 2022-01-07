; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_inquire_sec_context_by_oid.c_get_service_keyblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_inquire_sec_context_by_oid.c_get_service_keyblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@GSS_S_COMPLETE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i8* null, align 8
@GSS_S_FAILURE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"No service keyblock on gssapi context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, %struct.TYPE_10__*, i32*)* @get_service_keyblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_service_keyblock(i8** %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load i8*, i8** @GSS_S_COMPLETE, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** @EINVAL, align 8
  store i8* %14, i8** %11, align 8
  %15 = call i32* (...) @krb5_storage_emem()
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = call i32 (...) @_gsskrb5_clear_status()
  %20 = load i8*, i8** @ENOMEM, align 8
  %21 = load i8**, i8*** %5, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %22, i8** %4, align 8
  br label %88

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = call i32 @HEIMDAL_MUTEX_lock(i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = call i32 @HEIMDAL_MUTEX_unlock(i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @krb5_storage_free(i32* %35)
  %37 = load i8*, i8** @EINVAL, align 8
  %38 = call i32 @_gsskrb5_set_status(i8* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** @EINVAL, align 8
  %40 = load i8**, i8*** %5, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %41, i8** %4, align 8
  br label %88

42:                                               ; preds = %23
  %43 = call i32 @krb5_data_zero(%struct.TYPE_9__* %9)
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @krb5_store_keyblock(i32* %44, i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = call i32 @HEIMDAL_MUTEX_unlock(i32* %51)
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %72

56:                                               ; preds = %42
  %57 = load i32*, i32** %8, align 8
  %58 = call i8* @krb5_storage_to_data(i32* %57, %struct.TYPE_9__* %9)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %72

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i8* @gss_add_buffer_set_member(i8** %69, %struct.TYPE_11__* %12, i32* %70)
  store i8* %71, i8** %10, align 8
  br label %72

72:                                               ; preds = %62, %61, %55
  %73 = call i32 @krb5_data_free(%struct.TYPE_9__* %9)
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @krb5_storage_free(i32* %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i8*, i8** %11, align 8
  %84 = load i8**, i8*** %5, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** @GSS_S_FAILURE, align 8
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i8*, i8** %10, align 8
  store i8* %87, i8** %4, align 8
  br label %88

88:                                               ; preds = %86, %31, %18
  %89 = load i8*, i8** %4, align 8
  ret i8* %89
}

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i32 @_gsskrb5_clear_status(...) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @_gsskrb5_set_status(i8*, i8*) #1

declare dso_local i32 @krb5_data_zero(%struct.TYPE_9__*) #1

declare dso_local i8* @krb5_store_keyblock(i32*, i32) #1

declare dso_local i8* @krb5_storage_to_data(i32*, %struct.TYPE_9__*) #1

declare dso_local i8* @gss_add_buffer_set_member(i8**, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
