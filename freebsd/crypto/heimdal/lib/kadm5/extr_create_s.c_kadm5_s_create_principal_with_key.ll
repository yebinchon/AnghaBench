; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_create_s.c_kadm5_s_create_principal_with_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_create_s.c_kadm5_s_create_principal_with_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (i32, %struct.TYPE_16__*)*, i64 (i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*)*, i64 (i32, %struct.TYPE_16__*, i32, i32)* }

@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@KADM5_LAST_PWD_CHANGE = common dso_local global i32 0, align 4
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@KADM5_MKVNO = common dso_local global i32 0, align 4
@KADM5_AUX_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_POLICY_CLR = common dso_local global i32 0, align 4
@KADM5_LAST_SUCCESS = common dso_local global i32 0, align 4
@KADM5_LAST_FAILED = common dso_local global i32 0, align 4
@KADM5_FAIL_AUTH_COUNT = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_s_create_principal_with_key(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %16 = load i32, i32* @KADM5_KEY_DATA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @KADM5_LAST_PWD_CHANGE, align 4
  %19 = load i32, i32* @KADM5_MOD_TIME, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @KADM5_MOD_NAME, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @KADM5_MKVNO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @KADM5_AUX_ATTRIBUTES, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @KADM5_POLICY_CLR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @KADM5_LAST_SUCCESS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @KADM5_LAST_FAILED, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @KADM5_FAIL_AUTH_COUNT, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @create_principal(%struct.TYPE_14__* %12, i32 %13, i32 %14, %struct.TYPE_15__* %8, i32 %17, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %108

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @KADM5_KVNO, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %55 = call i64 @hdb_seal_keys(i32 %50, %struct.TYPE_16__* %53, %struct.TYPE_17__* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %108

59:                                               ; preds = %47
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i64 (i32, %struct.TYPE_16__*, i32, i32)*, i64 (i32, %struct.TYPE_16__*, i32, i32)** %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = load i32, i32* @O_RDWR, align 4
  %72 = call i64 %64(i32 %67, %struct.TYPE_16__* %70, i32 %71, i32 0)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %108

76:                                               ; preds = %59
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64 (i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*)*, i64 (i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*)** %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = call i64 %81(i32 %84, %struct.TYPE_16__* %87, i32 0, %struct.TYPE_15__* %8)
  store i64 %88, i64* %7, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32 (i32, %struct.TYPE_16__*)*, i32 (i32, %struct.TYPE_16__*)** %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = call i32 %93(i32 %96, %struct.TYPE_16__* %99)
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %76
  br label %108

104:                                              ; preds = %76
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %107 = call i32 @kadm5_log_create(%struct.TYPE_14__* %105, %struct.TYPE_17__* %106)
  br label %108

108:                                              ; preds = %104, %103, %75, %58, %38
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @hdb_free_entry(i32 %111, %struct.TYPE_15__* %8)
  %113 = load i64, i64* %7, align 8
  %114 = call i64 @_kadm5_error_code(i64 %113)
  ret i64 %114
}

declare dso_local i64 @create_principal(%struct.TYPE_14__*, i32, i32, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @hdb_seal_keys(i32, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @kadm5_log_create(%struct.TYPE_14__*, %struct.TYPE_17__*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @_kadm5_error_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
