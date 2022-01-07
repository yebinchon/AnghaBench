; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_file.c_store_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_file.c_store_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.store_ctx = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@HX509_KEY_FORMAT_DER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @store_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_func(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.store_ctx*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.store_ctx*
  store %struct.store_ctx* %13, %struct.store_ctx** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @hx509_cert_binary(i32 %14, i32 %15, %struct.TYPE_4__* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.store_ctx*, %struct.store_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %79 [
    i32 129, label %25
    i32 128, label %37
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.store_ctx*, %struct.store_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fwrite(i32 %27, i32 %29, i32 1, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @free(i32 %35)
  br label %79

37:                                               ; preds = %21
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.store_ctx*, %struct.store_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hx509_pem_write(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %41, i32 %43, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @free(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @_hx509_cert_private_key_exportable(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %37
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @_hx509_cert_private_key(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @HX509_KEY_FORMAT_DER, align 4
  %59 = call i32 @_hx509_private_key_export(i32 %56, i32 %57, i32 %58, %struct.TYPE_4__* %9)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %79

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i8* @_hx509_private_pem_name(i32 %65)
  %67 = load %struct.store_ctx*, %struct.store_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @hx509_pem_write(i32 %64, i8* %66, i32* null, i32 %69, i32 %71, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @free(i32 %76)
  br label %78

78:                                               ; preds = %63, %37
  br label %79

79:                                               ; preds = %21, %78, %62, %25
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @hx509_cert_binary(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @hx509_pem_write(i32, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @_hx509_cert_private_key_exportable(i32) #1

declare dso_local i32 @_hx509_cert_private_key(i32) #1

declare dso_local i32 @_hx509_private_key_export(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i8* @_hx509_private_pem_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
