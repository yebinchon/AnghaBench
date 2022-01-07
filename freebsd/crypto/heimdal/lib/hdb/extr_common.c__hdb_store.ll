; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c__hdb_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c__hdb_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i32, %struct.TYPE_16__*, i32, i32, i32)* }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.timeval = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@HDB_F_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hdb_store(i32 %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = call i32 @hdb_check_aliases(i32 %14, %struct.TYPE_16__* %15, %struct.TYPE_15__* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %126

22:                                               ; preds = %4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = icmp eq %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %64

28:                                               ; preds = %22
  %29 = call %struct.TYPE_17__* @malloc(i32 16)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = icmp eq %struct.TYPE_17__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @krb5_set_error_message(i32 %39, i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %5, align 4
  br label %126

43:                                               ; preds = %28
  %44 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 4
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  store i32 %53, i32* %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %72

64:                                               ; preds = %22
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %64, %43
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = call i32 @hdb_seal_keys(i32 %73, %struct.TYPE_16__* %74, %struct.TYPE_18__* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %126

82:                                               ; preds = %72
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @hdb_principal2key(i32 %83, i32 %87, i32* %10)
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = call i32 @hdb_remove_aliases(i32 %89, %struct.TYPE_16__* %90, i32* %10)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = call i32 @krb5_data_free(i32* %10)
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %126

97:                                               ; preds = %82
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = call i32 @hdb_entry2value(i32 %98, %struct.TYPE_18__* %100, i32* %11)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32 (i32, %struct.TYPE_16__*, i32, i32, i32)*, i32 (i32, %struct.TYPE_16__*, i32, i32, i32)** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @HDB_F_REPLACE, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 %104(i32 %105, %struct.TYPE_16__* %106, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = call i32 @krb5_data_free(i32* %11)
  %114 = call i32 @krb5_data_free(i32* %10)
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %97
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %126

119:                                              ; preds = %97
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = call i32 @hdb_add_aliases(i32 %120, %struct.TYPE_16__* %121, i32 %122, %struct.TYPE_15__* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %119, %117, %94, %80, %38, %20
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @hdb_check_aliases(i32, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @malloc(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @hdb_seal_keys(i32, %struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @hdb_principal2key(i32, i32, i32*) #1

declare dso_local i32 @hdb_remove_aliases(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @hdb_entry2value(i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @hdb_add_aliases(i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
