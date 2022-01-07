; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_send_recv.c__kadm5_client_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_send_recv.c__kadm5_client_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kadm5_client_send(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @SEEK_CUR, align 4
  %19 = call i64 @krb5_storage_seek(i32* %17, i32 0, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @krb5_data_alloc(%struct.TYPE_9__* %6, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @krb5_clear_error_message(i32 %27)
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %3, align 8
  br label %83

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i64 @krb5_storage_seek(i32* %31, i32 0, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @krb5_storage_read(i32* %34, i32 %36, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @krb5_mk_priv(i32 %42, i32 %45, %struct.TYPE_9__* %6, %struct.TYPE_9__* %7, i32* null)
  store i64 %46, i64* %8, align 8
  %47 = call i32 @krb5_data_free(%struct.TYPE_9__* %6)
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %3, align 8
  br label %83

52:                                               ; preds = %30
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @krb5_storage_from_fd(i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @krb5_clear_error_message(i32 %62)
  %64 = call i32 @krb5_data_free(%struct.TYPE_9__* %7)
  %65 = load i64, i64* @ENOMEM, align 8
  store i64 %65, i64* %3, align 8
  br label %83

66:                                               ; preds = %52
  %67 = load i32*, i32** %10, align 8
  %68 = bitcast %struct.TYPE_9__* %7 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call i64 @krb5_store_data(i32* %67, i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @krb5_clear_error_message(i32 %76)
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @krb5_storage_free(i32* %79)
  %81 = call i32 @krb5_data_free(%struct.TYPE_9__* %7)
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %78, %59, %50, %24
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_storage_read(i32*, i32, i32) #1

declare dso_local i64 @krb5_mk_priv(i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_9__*) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i64 @krb5_store_data(i32*, i64) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
