; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_file.c_file_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_file.c_file_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_file = type { i32, i32, i32 }
%struct.store_ctx = type { i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to open file %s for writing\00", align 1
@store_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32)* @file_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_store(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ks_file*, align 8
  %13 = alloca %struct.store_ctx, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.ks_file*
  store %struct.ks_file* %16, %struct.ks_file** %12, align 8
  %17 = load %struct.ks_file*, %struct.ks_file** %12, align 8
  %18 = getelementptr inbounds %struct.ks_file, %struct.ks_file* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @fopen(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %13, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %13, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = call i32 @hx509_set_error_string(i32 %26, i32 0, i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %6, align 4
  br label %48

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %13, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @rk_cloexec_file(i32* %32)
  %34 = load %struct.ks_file*, %struct.ks_file** %12, align 8
  %35 = getelementptr inbounds %struct.ks_file, %struct.ks_file* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %13, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ks_file*, %struct.ks_file** %12, align 8
  %40 = getelementptr inbounds %struct.ks_file, %struct.ks_file* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @store_func, align 4
  %43 = call i32 @hx509_certs_iter_f(i32 %38, i32 %41, i32 %42, %struct.store_ctx* %13)
  store i32 %43, i32* %14, align 4
  %44 = getelementptr inbounds %struct.store_ctx, %struct.store_ctx* %13, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %30, %25
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @rk_cloexec_file(i32*) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i32, i32, %struct.store_ctx*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
