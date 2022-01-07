; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@kadm_rename = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_log_rename(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32* %15, i32** %13, align 8
  %16 = call i32 @krb5_data_zero(%struct.TYPE_9__* %12)
  %17 = call i32* (...) @krb5_storage_emem()
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @hdb_entry2value(i32 %20, i32* %21, %struct.TYPE_9__* %12)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %105

26:                                               ; preds = %3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @kadm_rename, align 4
  %30 = call i64 @kadm5_log_preamble(%struct.TYPE_10__* %27, i32* %28, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %105

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @krb5_store_int32(i32* %35, i32 0)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %105

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @SEEK_CUR, align 4
  %43 = call i32 @krb5_storage_seek(i32* %41, i32 0, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @krb5_store_principal(i32* %44, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %105

50:                                               ; preds = %40
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @krb5_storage_write(i32* %51, i32 %53, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @SEEK_CUR, align 4
  %59 = call i32 @krb5_storage_seek(i32* %57, i32 0, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 4
  %65 = sub nsw i32 0, %64
  %66 = load i32, i32* @SEEK_CUR, align 4
  %67 = call i32 @krb5_storage_seek(i32* %62, i32 %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @krb5_store_int32(i32* %68, i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %105

74:                                               ; preds = %50
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @SEEK_CUR, align 4
  %78 = call i32 @krb5_storage_seek(i32* %75, i32 %76, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @krb5_store_int32(i32* %79, i32 %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %105

85:                                               ; preds = %74
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i64 @kadm5_log_postamble(i32* %86, i32* %87)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %105

92:                                               ; preds = %85
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call i64 @kadm5_log_flush(i32* %93, i32* %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %105

99:                                               ; preds = %92
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @krb5_storage_free(i32* %100)
  %102 = call i32 @krb5_data_free(%struct.TYPE_9__* %12)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = call i64 @kadm5_log_end(%struct.TYPE_10__* %103)
  store i64 %104, i64* %4, align 8
  br label %110

105:                                              ; preds = %98, %91, %84, %73, %49, %39, %33, %25
  %106 = call i32 @krb5_data_free(%struct.TYPE_9__* %12)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @krb5_storage_free(i32* %107)
  %109 = load i64, i64* %9, align 8
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %105, %99
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_9__*) #1

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i64 @hdb_entry2value(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @kadm5_log_preamble(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i64 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i64 @krb5_store_principal(i32*, i32) #1

declare dso_local i32 @krb5_storage_write(i32*, i32, i32) #1

declare dso_local i64 @kadm5_log_postamble(i32*, i32*) #1

declare dso_local i64 @kadm5_log_flush(i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_9__*) #1

declare dso_local i64 @kadm5_log_end(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
