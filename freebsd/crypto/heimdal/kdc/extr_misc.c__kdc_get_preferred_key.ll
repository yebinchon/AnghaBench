; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_misc.c__kdc_get_preferred_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_misc.c__kdc_get_preferred_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@ETYPE_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"No valid kerberos key found for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kdc_get_preferred_key(i32 %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i8* %3, i64* %4, %struct.TYPE_19__** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_19__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.TYPE_19__** %5, %struct.TYPE_19__*** %13, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  %23 = call i64* @krb5_kerberos_enctypes(i32 %22)
  store i64* %23, i64** %16, align 8
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %67, %21
  %25 = load i64*, i64** %16, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ETYPE_NULL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i64*, i64** %16, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @krb5_enctype_valid(i32 %33, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %67

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64*, i64** %16, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %13, align 8
  %52 = call i64 @hdb_enctype2key(i32 %43, %struct.TYPE_20__* %45, i64 %50, %struct.TYPE_19__** %51)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %67

56:                                               ; preds = %42
  %57 = load i64*, i64** %12, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i64*, i64** %16, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %12, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %56
  store i64 0, i64* %7, align 8
  br label %138

67:                                               ; preds = %55, %41
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %24

70:                                               ; preds = %24
  br label %132

71:                                               ; preds = %6
  %72 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %13, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %72, align 8
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %128, %71
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %131

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @krb5_enctype_valid(i32 %82, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %128

97:                                               ; preds = %81
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %13, align 8
  %113 = call i64 @hdb_enctype2key(i32 %98, %struct.TYPE_20__* %100, i64 %111, %struct.TYPE_19__** %112)
  store i64 %113, i64* %14, align 8
  %114 = load i64, i64* %14, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %97
  br label %128

117:                                              ; preds = %97
  %118 = load i64*, i64** %12, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %13, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %12, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %117
  store i64 0, i64* %7, align 8
  br label %138

128:                                              ; preds = %116, %96
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %73

131:                                              ; preds = %73
  br label %132

132:                                              ; preds = %131, %70
  %133 = load i32, i32* %8, align 4
  %134 = load i64, i64* @EINVAL, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @krb5_set_error_message(i32 %133, i64 %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %135)
  %137 = load i64, i64* @EINVAL, align 8
  store i64 %137, i64* %7, align 8
  br label %138

138:                                              ; preds = %132, %127, %66
  %139 = load i64, i64* %7, align 8
  ret i64 %139
}

declare dso_local i64* @krb5_kerberos_enctypes(i32) #1

declare dso_local i64 @krb5_enctype_valid(i32, i64) #1

declare dso_local i64 @hdb_enctype2key(i32, %struct.TYPE_20__*, i64, %struct.TYPE_19__**) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
