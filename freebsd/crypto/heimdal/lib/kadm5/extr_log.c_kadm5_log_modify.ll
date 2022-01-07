; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@kadm_modify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_log_modify(%struct.TYPE_10__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32* %14, i32** %12, align 8
  %15 = call i32 @krb5_data_zero(%struct.TYPE_9__* %10)
  %16 = call i32* (...) @krb5_storage_emem()
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @hdb_entry2value(i32 %19, i32* %20, %struct.TYPE_9__* %10)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %83

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @kadm_modify, align 4
  %29 = call i64 @kadm5_log_preamble(%struct.TYPE_10__* %26, i32* %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %83

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 4
  store i64 %36, i64* %11, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @krb5_store_int32(i32* %37, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %83

43:                                               ; preds = %33
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @krb5_store_int32(i32* %44, i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %83

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @krb5_storage_write(i32* %51, i32 %53, i64 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i64 @krb5_store_int32(i32* %57, i64 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %83

63:                                               ; preds = %50
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @kadm5_log_postamble(i32* %64, i32* %65)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %83

70:                                               ; preds = %63
  %71 = load i32*, i32** %12, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @kadm5_log_flush(i32* %71, i32* %72)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %83

77:                                               ; preds = %70
  %78 = call i32 @krb5_data_free(%struct.TYPE_9__* %10)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @krb5_storage_free(i32* %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = call i64 @kadm5_log_end(%struct.TYPE_10__* %81)
  store i64 %82, i64* %4, align 8
  br label %88

83:                                               ; preds = %76, %69, %62, %49, %42, %32, %24
  %84 = call i32 @krb5_data_free(%struct.TYPE_9__* %10)
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @krb5_storage_free(i32* %85)
  %87 = load i64, i64* %9, align 8
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %83, %77
  %89 = load i64, i64* %4, align 8
  ret i64 %89
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_9__*) #1

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i64 @hdb_entry2value(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @kadm5_log_preamble(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i64 @krb5_store_int32(i32*, i64) #1

declare dso_local i32 @krb5_storage_write(i32*, i32, i64) #1

declare dso_local i64 @kadm5_log_postamble(i32*, i32*) #1

declare dso_local i64 @kadm5_log_flush(i32*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_9__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i64 @kadm5_log_end(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
