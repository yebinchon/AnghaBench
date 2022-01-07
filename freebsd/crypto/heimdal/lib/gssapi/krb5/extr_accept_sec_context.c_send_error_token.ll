; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_accept_sec_context.c_send_error_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_accept_sec_context.c_send_error_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"0\05\A1\03\02\01\02\00", align 1
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\03\00\00", align 1
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@GSS_S_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64, i32*, %struct.TYPE_13__*, i32)* @send_error_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @send_error_token(i64* %0, i32 %1, i64 %2, i32* %3, %struct.TYPE_13__* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca %struct.TYPE_13__, align 4
  %18 = alloca %struct.TYPE_14__, align 4
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 7, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %21 = call i32 @rk_UNCONST(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %20, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %27 = call i64 @krb5_decode_ap_req(i32 %25, %struct.TYPE_13__* %26, %struct.TYPE_14__* %18)
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %15, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* %15, align 8
  %32 = load i64*, i64** %8, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %33, i64* %7, align 8
  br label %83

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @_krb5_principalname2krb5_principal(i32 %35, i32** %14, i32 %38, i32 %41)
  store i64 %42, i64* %15, align 8
  %43 = call i32 @free_AP_REQ(%struct.TYPE_14__* %18)
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i64, i64* %15, align 8
  %48 = load i64*, i64** %8, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %49, i64* %7, align 8
  br label %83

50:                                               ; preds = %34
  %51 = load i32*, i32** %14, align 8
  store i32* %51, i32** %11, align 8
  br label %52

52:                                               ; preds = %50, %6
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @krb5_mk_error(i32 %53, i64 %54, i32* null, %struct.TYPE_13__* %17, i32* null, i32* %55, i32* null, i32* null, %struct.TYPE_13__* %16)
  store i64 %56, i64* %15, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @krb5_free_principal(i32 %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %15, align 8
  %68 = load i64*, i64** %8, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %69, i64* %7, align 8
  br label %83

70:                                               ; preds = %63
  %71 = load i64*, i64** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %74 = call i64 @_gsskrb5_encapsulate(i64* %71, %struct.TYPE_13__* %16, i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  store i64 %74, i64* %15, align 8
  %75 = call i32 @krb5_data_free(%struct.TYPE_13__* %16)
  %76 = load i64, i64* %15, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i64, i64* %15, align 8
  store i64 %79, i64* %7, align 8
  br label %83

80:                                               ; preds = %70
  %81 = load i64*, i64** %8, align 8
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %80, %78, %66, %46, %30
  %84 = load i64, i64* %7, align 8
  ret i64 %84
}

declare dso_local i32 @rk_UNCONST(i8*) #1

declare dso_local i64 @krb5_decode_ap_req(i32, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @_krb5_principalname2krb5_principal(i32, i32**, i32, i32) #1

declare dso_local i32 @free_AP_REQ(%struct.TYPE_14__*) #1

declare dso_local i64 @krb5_mk_error(i32, i64, i32*, %struct.TYPE_13__*, i32*, i32*, i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i64 @_gsskrb5_encapsulate(i64*, %struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
