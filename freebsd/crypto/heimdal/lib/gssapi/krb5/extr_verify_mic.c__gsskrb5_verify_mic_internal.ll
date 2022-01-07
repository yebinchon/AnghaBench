; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_verify_mic.c__gsskrb5_verify_mic_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_verify_mic.c__gsskrb5_verify_mic_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@IS_CFX = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5_verify_mic_internal(i64* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IS_CFX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %7
  %26 = load i64*, i64** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = call i64 @_gssapi_verify_mic_cfx(i64* %26, %struct.TYPE_15__* %27, i32 %28, i32 %29, i32 %30, i32* %31)
  store i64 %32, i64* %8, align 8
  br label %86

33:                                               ; preds = %7
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = call i32 @HEIMDAL_MUTEX_lock(i32* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @_gsskrb5i_get_token_key(%struct.TYPE_15__* %37, i32 %38, %struct.TYPE_14__** %16)
  store i64 %39, i64* %17, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = call i32 @HEIMDAL_MUTEX_unlock(i32* %41)
  %43 = load i64, i64* %17, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i64, i64* %17, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %48, i64* %8, align 8
  br label %86

49:                                               ; preds = %33
  %50 = load i64*, i64** %9, align 8
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @krb5_enctype_to_keytype(i32 %51, i32 %54, i32* %18)
  %56 = load i32, i32* %18, align 4
  switch i32 %56, label %79 [
    i32 129, label %57
    i32 128, label %59
    i32 131, label %69
    i32 130, label %69
  ]

57:                                               ; preds = %49
  %58 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %58, i64* %17, align 8
  br label %81

59:                                               ; preds = %49
  %60 = load i64*, i64** %9, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = call i64 @verify_mic_des3(i64* %60, %struct.TYPE_15__* %61, i32 %62, i32 %63, i32 %64, i32* %65, %struct.TYPE_14__* %66, i8* %67)
  store i64 %68, i64* %17, align 8
  br label %81

69:                                               ; preds = %49, %49
  %70 = load i64*, i64** %9, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call i64 @_gssapi_verify_mic_arcfour(i64* %70, %struct.TYPE_15__* %71, i32 %72, i32 %73, i32 %74, i32* %75, %struct.TYPE_14__* %76, i8* %77)
  store i64 %78, i64* %17, align 8
  br label %81

79:                                               ; preds = %49
  %80 = call i32 (...) @abort() #3
  unreachable

81:                                               ; preds = %69, %59, %57
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %84 = call i32 @krb5_free_keyblock(i32 %82, %struct.TYPE_14__* %83)
  %85 = load i64, i64* %17, align 8
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %81, %45, %25
  %87 = load i64, i64* %8, align 8
  ret i64 %87
}

declare dso_local i64 @_gssapi_verify_mic_cfx(i64*, %struct.TYPE_15__*, i32, i32, i32, i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @_gsskrb5i_get_token_key(%struct.TYPE_15__*, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @krb5_enctype_to_keytype(i32, i32, i32*) #1

declare dso_local i64 @verify_mic_des3(i64*, %struct.TYPE_15__*, i32, i32, i32, i32*, %struct.TYPE_14__*, i8*) #1

declare dso_local i64 @_gssapi_verify_mic_arcfour(i64*, %struct.TYPE_15__*, i32, i32, i32, i32*, %struct.TYPE_14__*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @krb5_free_keyblock(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
