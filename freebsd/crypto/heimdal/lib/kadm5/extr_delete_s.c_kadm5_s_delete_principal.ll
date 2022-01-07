; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_delete_s.c_kadm5_s_delete_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_delete_s.c_kadm5_s_delete_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64 (i32, %struct.TYPE_18__*, i32, i32)*, i64 (i32, %struct.TYPE_18__*, i32, i32, i32, %struct.TYPE_17__*)*, i64 (i32, %struct.TYPE_18__*, i32)*, i32 (i32, %struct.TYPE_18__*)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"opening database\00", align 1
@HDB_F_DECRYPT = common dso_local global i32 0, align 4
@HDB_F_GET_ANY = common dso_local global i32 0, align 4
@HDB_F_ADMIN_DATA = common dso_local global i32 0, align 4
@HDB_ERR_NOENTRY = common dso_local global i64 0, align 8
@KADM5_PROTECT_PRINCIPAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_s_delete_principal(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %6, align 8
  %11 = call i32 @memset(%struct.TYPE_17__* %8, i32 0, i32 8)
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i64 (i32, %struct.TYPE_18__*, i32, i32)*, i64 (i32, %struct.TYPE_18__*, i32, i32)** %15, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = call i64 %16(i32 %19, %struct.TYPE_18__* %22, i32 %23, i32 0)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @krb5_warn(i32 %30, i64 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %3, align 8
  br label %118

34:                                               ; preds = %2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i64 (i32, %struct.TYPE_18__*, i32, i32, i32, %struct.TYPE_17__*)*, i64 (i32, %struct.TYPE_18__*, i32, i32, i32, %struct.TYPE_17__*)** %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @HDB_F_DECRYPT, align 4
  %48 = load i32, i32* @HDB_F_GET_ANY, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @HDB_F_ADMIN_DATA, align 4
  %51 = or i32 %49, %50
  %52 = call i64 %39(i32 %42, %struct.TYPE_18__* %45, i32 %46, i32 %51, i32 0, %struct.TYPE_17__* %8)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @HDB_ERR_NOENTRY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  br label %103

57:                                               ; preds = %34
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* @KADM5_PROTECT_PRINCIPAL, align 8
  store i64 %64, i64* %7, align 8
  br label %98

65:                                               ; preds = %57
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %73 = call i64 @hdb_seal_keys(i32 %68, %struct.TYPE_18__* %71, %struct.TYPE_14__* %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %98

77:                                               ; preds = %65
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i64 (i32, %struct.TYPE_18__*, i32)*, i64 (i32, %struct.TYPE_18__*, i32)** %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i64 %82(i32 %85, %struct.TYPE_18__* %88, i32 %89)
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %77
  br label %98

94:                                               ; preds = %77
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @kadm5_log_delete(%struct.TYPE_16__* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %93, %76, %63
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @hdb_free_entry(i32 %101, %struct.TYPE_17__* %8)
  br label %103

103:                                              ; preds = %98, %56
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load i32 (i32, %struct.TYPE_18__*)*, i32 (i32, %struct.TYPE_18__*)** %107, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = call i32 %108(i32 %111, %struct.TYPE_18__* %114)
  %116 = load i64, i64* %7, align 8
  %117 = call i64 @_kadm5_error_code(i64 %116)
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %103, %27
  %119 = load i64, i64* %3, align 8
  ret i64 %119
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @hdb_seal_keys(i32, %struct.TYPE_18__*, %struct.TYPE_14__*) #1

declare dso_local i32 @kadm5_log_delete(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_17__*) #1

declare dso_local i64 @_kadm5_error_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
