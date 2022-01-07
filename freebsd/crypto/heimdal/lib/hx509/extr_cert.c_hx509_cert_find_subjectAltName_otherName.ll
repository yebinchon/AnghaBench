; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_cert_find_subjectAltName_otherName.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_cert_find_subjectAltName_otherName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@HX509_EXTENSION_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error searching for SAN\00", align 1
@choice_GeneralName_otherName = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Error adding an exra SAN to return list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_cert_find_subjectAltName_otherName(i32 %0, i32 %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %4, %90
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @_hx509_get_cert(i32 %19)
  %21 = call i32 @find_extension_subject_alt_name(i32 %20, i64* %12, %struct.TYPE_15__* %10)
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* %12, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %92

28:                                               ; preds = %18
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @hx509_set_error_string(i32 %32, i32 0, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = call i32 @hx509_free_octet_string_list(%struct.TYPE_14__* %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %92

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %87, %39
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @choice_GeneralName_otherName, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @der_heim_oid_cmp(i32* %61, i32* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %54
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = call i32 @add_to_list(%struct.TYPE_14__* %66, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @hx509_set_error_string(i32 %78, i32 0, i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = call i32 @hx509_free_octet_string_list(%struct.TYPE_14__* %81)
  %83 = call i32 @free_GeneralNames(%struct.TYPE_15__* %10)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %92

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85, %54, %45
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %13, align 8
  br label %40

90:                                               ; preds = %40
  %91 = call i32 @free_GeneralNames(%struct.TYPE_15__* %10)
  br label %18

92:                                               ; preds = %77, %31, %27
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @find_extension_subject_alt_name(i32, i64*, %struct.TYPE_15__*) #1

declare dso_local i32 @_hx509_get_cert(i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_free_octet_string_list(%struct.TYPE_14__*) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @add_to_list(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @free_GeneralNames(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
