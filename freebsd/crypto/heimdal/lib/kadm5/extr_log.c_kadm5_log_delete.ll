; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@kadm_delete = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_log_delete(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32* %12, i32** %10, align 8
  %13 = call i32* (...) @krb5_storage_emem()
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @ENOMEM, align 8
  store i64 %17, i64* %3, align 8
  br label %92

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @kadm_delete, align 4
  %22 = call i64 @kadm5_log_preamble(%struct.TYPE_5__* %19, i32* %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %88

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @krb5_store_int32(i32* %27, i32 0)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %88

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @SEEK_CUR, align 4
  %35 = call i32 @krb5_storage_seek(i32* %33, i32 0, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @krb5_store_principal(i32* %36, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %88

42:                                               ; preds = %32
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @SEEK_CUR, align 4
  %45 = call i32 @krb5_storage_seek(i32* %43, i32 0, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 4
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* @SEEK_CUR, align 4
  %53 = call i32 @krb5_storage_seek(i32* %48, i32 %51, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @krb5_store_int32(i32* %54, i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  br label %88

60:                                               ; preds = %42
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @SEEK_CUR, align 4
  %64 = call i32 @krb5_storage_seek(i32* %61, i32 %62, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @krb5_store_int32(i32* %65, i32 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %88

71:                                               ; preds = %60
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @kadm5_log_postamble(i32* %72, i32* %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %88

78:                                               ; preds = %71
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i64 @kadm5_log_flush(i32* %79, i32* %80)
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %88

85:                                               ; preds = %78
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = call i64 @kadm5_log_end(%struct.TYPE_5__* %86)
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %85, %84, %77, %70, %59, %41, %31, %25
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @krb5_storage_free(i32* %89)
  %91 = load i64, i64* %7, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %88, %16
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i64 @kadm5_log_preamble(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i64 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i64 @krb5_store_principal(i32*, i32) #1

declare dso_local i64 @kadm5_log_postamble(i32*, i32*) #1

declare dso_local i64 @kadm5_log_flush(i32*, i32*) #1

declare dso_local i64 @kadm5_log_end(%struct.TYPE_5__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
