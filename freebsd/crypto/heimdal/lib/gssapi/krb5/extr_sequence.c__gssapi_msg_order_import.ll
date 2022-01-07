; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_sequence.c__gssapi_msg_order_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_sequence.c__gssapi_msg_order_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_msg_order = type { i64, i64, i64, i64, i64, i32* }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_msg_order_import(i64* %0, i32* %1, %struct.gss_msg_order** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gss_msg_order**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.gss_msg_order** %2, %struct.gss_msg_order*** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @krb5_ret_int32(i32* %16, i64* %11)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %100

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @krb5_ret_int32(i32* %22, i64* %12)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %100

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @krb5_ret_int32(i32* %28, i64* %13)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %100

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @krb5_ret_int32(i32* %34, i64* %14)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %100

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @krb5_ret_int32(i32* %40, i64* %15)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %100

45:                                               ; preds = %39
  %46 = load i64*, i64** %5, align 8
  %47 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %7, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i64 @msg_order_alloc(i64* %46, %struct.gss_msg_order** %47, i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @GSS_S_COMPLETE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %4, align 8
  br label %106

55:                                               ; preds = %45
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %7, align 8
  %58 = load %struct.gss_msg_order*, %struct.gss_msg_order** %57, align 8
  %59 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %7, align 8
  %62 = load %struct.gss_msg_order*, %struct.gss_msg_order** %61, align 8
  %63 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %7, align 8
  %66 = load %struct.gss_msg_order*, %struct.gss_msg_order** %65, align 8
  %67 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %66, i32 0, i32 2
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %7, align 8
  %70 = load %struct.gss_msg_order*, %struct.gss_msg_order** %69, align 8
  %71 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %70, i32 0, i32 3
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %7, align 8
  %74 = load %struct.gss_msg_order*, %struct.gss_msg_order** %73, align 8
  %75 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %74, i32 0, i32 4
  store i64 %72, i64* %75, align 8
  store i64 0, i64* %10, align 8
  br label %76

76:                                               ; preds = %94, %55
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %7, align 8
  %83 = load %struct.gss_msg_order*, %struct.gss_msg_order** %82, align 8
  %84 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = bitcast i32* %87 to i64*
  %89 = call i64 @krb5_ret_int32(i32* %81, i64* %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %100

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  br label %76

97:                                               ; preds = %76
  %98 = load i64*, i64** %5, align 8
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %99, i64* %4, align 8
  br label %106

100:                                              ; preds = %92, %44, %38, %32, %26, %20
  %101 = load %struct.gss_msg_order**, %struct.gss_msg_order*** %7, align 8
  %102 = call i32 @_gssapi_msg_order_destroy(%struct.gss_msg_order** %101)
  %103 = load i64, i64* %9, align 8
  %104 = load i64*, i64** %5, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %100, %97, %53
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

declare dso_local i64 @krb5_ret_int32(i32*, i64*) #1

declare dso_local i64 @msg_order_alloc(i64*, %struct.gss_msg_order**, i64) #1

declare dso_local i32 @_gssapi_msg_order_destroy(%struct.gss_msg_order**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
