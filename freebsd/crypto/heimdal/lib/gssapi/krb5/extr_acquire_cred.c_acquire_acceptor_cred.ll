; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_acquire_cred.c_acquire_acceptor_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_acquire_cred.c_acquire_acceptor_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_C_NO_OID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64, i8*, i32, i64, i64, i32, %struct.TYPE_3__*)* @acquire_acceptor_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acquire_acceptor_cred(i64* %0, i32 %1, i64 %2, i8* %3, i32 %4, i64 %5, i64 %6, i32 %7, %struct.TYPE_3__* %8) #0 {
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %18, align 8
  %24 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %24, i64* %19, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @GSS_C_NO_OID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = load i64, i64* @EINVAL, align 8
  store i64 %29, i64* %20, align 8
  br label %86

30:                                               ; preds = %9
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i64 @get_keytab(i32 %31, i32** %33)
  store i64 %34, i64* %20, align 8
  %35 = load i64, i64* %20, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %86

38:                                               ; preds = %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @krb5_kt_get_entry(i32 %44, i32* %47, i64 %50, i32 0, i32 0, i32* %21)
  store i64 %51, i64* %20, align 8
  %52 = load i64, i64* %20, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %86

55:                                               ; preds = %43
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @krb5_kt_free_entry(i32 %56, i32* %21)
  %58 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %58, i64* %19, align 8
  br label %85

59:                                               ; preds = %38
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @krb5_kt_start_seq_get(i32 %60, i32* %63, i32* %23)
  store i64 %64, i64* %20, align 8
  %65 = load i64, i64* %20, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %86

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @krb5_kt_next_entry(i32 %69, i32* %72, i32* %22, i32* %23)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @krb5_kt_free_entry(i32 %76, i32* %22)
  %78 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %78, i64* %19, align 8
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @krb5_kt_end_seq_get(i32 %80, i32* %83, i32* %23)
  br label %85

85:                                               ; preds = %79, %55
  br label %86

86:                                               ; preds = %85, %67, %54, %37, %28
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* @GSS_S_COMPLETE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %86
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @krb5_kt_close(i32 %96, i32* %99)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i64, i64* %20, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i64, i64* %20, align 8
  %106 = load i64*, i64** %10, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %86
  %109 = load i64, i64* %19, align 8
  ret i64 %109
}

declare dso_local i64 @get_keytab(i32, i32**) #1

declare dso_local i64 @krb5_kt_get_entry(i32, i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @krb5_kt_free_entry(i32, i32*) #1

declare dso_local i64 @krb5_kt_start_seq_get(i32, i32*, i32*) #1

declare dso_local i64 @krb5_kt_next_entry(i32, i32*, i32*, i32*) #1

declare dso_local i32 @krb5_kt_end_seq_get(i32, i32*, i32*) #1

declare dso_local i32 @krb5_kt_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
