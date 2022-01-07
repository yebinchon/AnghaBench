; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_import_name.c__gsskrb5_canon_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_import_name.c__gsskrb5_canon_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8** }

@MAGIC_HOSTBASED_NAME_TYPE = common dso_local global i64 0, align 8
@KRB5_NT_SRV_HST = common dso_local global i32 0, align 4
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5_canon_name(i64* %0, i32 %1, i32 %2, %struct.TYPE_16__* %3, i32 %4, %struct.TYPE_15__** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__**, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_15__** %5, %struct.TYPE_15__*** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %14, align 8
  store i8* null, i8** %16, align 8
  %21 = load i64*, i64** %8, align 8
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %24 = call i64 @krb5_principal_get_type(i32 %22, %struct.TYPE_15__* %23)
  %25 = load i64, i64* @MAGIC_HOSTBASED_NAME_TYPE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %30 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %31 = call i64 @krb5_copy_principal(i32 %28, %struct.TYPE_15__* %29, %struct.TYPE_15__** %30)
  store i64 %31, i64* %15, align 8
  br label %100

32:                                               ; preds = %6
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %38 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %39 = call i64 @krb5_copy_principal(i32 %36, %struct.TYPE_15__* %37, %struct.TYPE_15__** %38)
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %101

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %48 = call i32 @krb5_principal_set_type(i32 %44, %struct.TYPE_15__* %46, i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %50 = icmp ne %struct.TYPE_16__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @krb5_principal_set_realm(i32 %52, %struct.TYPE_15__* %54, i32 %57)
  store i64 %58, i64* %15, align 8
  br label %59

59:                                               ; preds = %51, %43
  br label %99

60:                                               ; preds = %32
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %68, i64* %7, align 8
  br label %109

69:                                               ; preds = %60
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %16, align 8
  br label %84

84:                                               ; preds = %76, %69
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %17, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %97 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %98 = call i64 @krb5_sname_to_principal(i32 %93, i8* %94, i8* %95, i32 %96, %struct.TYPE_15__** %97)
  store i64 %98, i64* %15, align 8
  br label %99

99:                                               ; preds = %85, %59
  br label %100

100:                                              ; preds = %99, %27
  br label %101

101:                                              ; preds = %100, %42
  %102 = load i64, i64* %15, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i64, i64* %15, align 8
  %106 = load i64*, i64** %8, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %107, i64* %7, align 8
  br label %109

108:                                              ; preds = %101
  store i64 0, i64* %7, align 8
  br label %109

109:                                              ; preds = %108, %104, %67
  %110 = load i64, i64* %7, align 8
  ret i64 %110
}

declare dso_local i64 @krb5_principal_get_type(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @krb5_copy_principal(i32, %struct.TYPE_15__*, %struct.TYPE_15__**) #1

declare dso_local i32 @krb5_principal_set_type(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @krb5_principal_set_realm(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @krb5_sname_to_principal(i32, i8*, i8*, i32, %struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
