; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_nop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@kadm_nop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_log_nop(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32* %8, i32** %6, align 8
  %9 = call i32* (...) @krb5_storage_emem()
  store i32* %9, i32** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @kadm_nop, align 4
  %13 = call i64 @kadm5_log_preamble(%struct.TYPE_4__* %10, i32* %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @krb5_storage_free(i32* %17)
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %2, align 8
  br label %41

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @krb5_store_int32(i32* %21, i32 0)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @krb5_store_int32(i32* %23, i32 0)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @kadm5_log_postamble(i32* %25, i32* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @krb5_storage_free(i32* %31)
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %2, align 8
  br label %41

34:                                               ; preds = %20
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @kadm5_log_flush(i32* %35, i32* %36)
  store i64 %37, i64* %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @krb5_storage_free(i32* %38)
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %34, %30, %16
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i64 @kadm5_log_preamble(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i64 @kadm5_log_postamble(i32*, i32*) #1

declare dso_local i64 @kadm5_log_flush(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
