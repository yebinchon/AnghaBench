; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_replay_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_replay_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 (i32, %struct.TYPE_16__*, i32)*, i64 (i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*)* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to read renamed principal in log, version: %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i64, i64, i32*)* @kadm5_log_replay_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kadm5_log_replay_rename(%struct.TYPE_14__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = call i32 @memset(%struct.TYPE_15__* %12, i32 0, i32 4)
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @SEEK_CUR, align 4
  %20 = call i64 @krb5_storage_seek(i32* %18, i32 0, i32 %19)
  store i64 %20, i64* %14, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @krb5_ret_principal(i32* %21, i32* %11)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @krb5_set_error_message(i32 %28, i64 %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %5, align 8
  br label %120

33:                                               ; preds = %4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @SEEK_CUR, align 4
  %36 = call i64 @krb5_storage_seek(i32* %34, i32 0, i32 %35)
  %37 = load i64, i64* %14, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %15, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %16, align 8
  %43 = call i64 @krb5_data_alloc(%struct.TYPE_13__* %13, i64 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @krb5_free_principal(i32 %49, i32 %50)
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %5, align 8
  br label %120

53:                                               ; preds = %33
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @krb5_storage_read(i32* %54, i32 %56, i64 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %63 = call i64 @hdb_value2entry(i32 %61, %struct.TYPE_13__* %13, i32* %62)
  store i64 %63, i64* %10, align 8
  %64 = call i32 @krb5_data_free(%struct.TYPE_13__* %13)
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @krb5_free_principal(i32 %70, i32 %71)
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %5, align 8
  br label %120

74:                                               ; preds = %53
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i64 (i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*)*, i64 (i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*)** %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = call i64 %79(i32 %82, %struct.TYPE_16__* %85, i32 0, %struct.TYPE_15__* %12)
  store i64 %86, i64* %10, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @hdb_free_entry(i32 %89, %struct.TYPE_15__* %12)
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %74
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @krb5_free_principal(i32 %96, i32 %97)
  %99 = load i64, i64* %10, align 8
  store i64 %99, i64* %5, align 8
  br label %120

100:                                              ; preds = %74
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64 (i32, %struct.TYPE_16__*, i32)*, i64 (i32, %struct.TYPE_16__*, i32)** %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i64 %105(i32 %108, %struct.TYPE_16__* %111, i32 %112)
  store i64 %113, i64* %10, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @krb5_free_principal(i32 %116, i32 %117)
  %119 = load i64, i64* %10, align 8
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %100, %93, %67, %46, %25
  %121 = load i64, i64* %5, align 8
  ret i64 %121
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i64 @krb5_ret_principal(i32*, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, i64) #1

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_storage_read(i32*, i32, i64) #1

declare dso_local i64 @hdb_value2entry(i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_13__*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
