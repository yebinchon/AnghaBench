; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/lhash/extr_lh_stats.c_OPENSSL_LH_stats_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/lhash/extr_lh_stats.c_OPENSSL_LH_stats_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"num_items             = %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"num_nodes             = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"num_alloc_nodes       = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"num_expands           = %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"num_expand_reallocs   = %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"num_contracts         = %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"num_contract_reallocs = %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"num_hash_calls        = %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"num_comp_calls        = %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"num_insert            = %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"num_replace           = %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"num_delete            = %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"num_no_delete         = %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"num_retrieve          = %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"num_retrieve_miss     = %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"num_hash_comps        = %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPENSSL_LH_stats_bio(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 15
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @BIO_printf(i32* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BIO_printf(i32* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BIO_printf(i32* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIO_printf(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BIO_printf(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BIO_printf(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BIO_printf(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BIO_printf(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BIO_printf(i32* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BIO_printf(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @BIO_printf(i32* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BIO_printf(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BIO_printf(i32* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BIO_printf(i32* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @BIO_printf(i32* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @BIO_printf(i32* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %83)
  ret void
}

declare dso_local i32 @BIO_printf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
