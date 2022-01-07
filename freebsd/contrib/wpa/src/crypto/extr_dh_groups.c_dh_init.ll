; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_dh_groups.c_dh_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_dh_groups.c_dh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dh_group = type { i64, i32, i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DH: crypto_dh_init failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"DH: private value\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DH: public value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @dh_init(%struct.dh_group* %0, %struct.wpabuf** %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.dh_group*, align 8
  %5 = alloca %struct.wpabuf**, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i64, align 8
  store %struct.dh_group* %0, %struct.dh_group** %4, align 8
  store %struct.wpabuf** %1, %struct.wpabuf*** %5, align 8
  %8 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %9 = icmp eq %struct.dh_group* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %84

11:                                               ; preds = %2
  %12 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %14 = call i32 @wpabuf_clear_free(%struct.wpabuf* %13)
  %15 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %16 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.wpabuf* @wpabuf_alloc(i64 %17)
  %19 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  store %struct.wpabuf* %18, %struct.wpabuf** %19, align 8
  %20 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %20, align 8
  %22 = icmp eq %struct.wpabuf* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %84

24:                                               ; preds = %11
  %25 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %26 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call %struct.wpabuf* @wpabuf_alloc(i64 %28)
  store %struct.wpabuf* %29, %struct.wpabuf** %6, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %31 = icmp eq %struct.wpabuf* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %33, align 8
  %35 = call i32 @wpabuf_clear_free(%struct.wpabuf* %34)
  %36 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %36, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %84

37:                                               ; preds = %24
  %38 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %39 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %43 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %46 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %49 = load %struct.wpabuf*, %struct.wpabuf** %48, align 8
  %50 = call i32 @wpabuf_mhead(%struct.wpabuf* %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %52 = call i32 @wpabuf_mhead(%struct.wpabuf* %51)
  %53 = call i64 @crypto_dh_init(i32 %41, i32 %44, i64 %47, i32 %50, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %37
  %56 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %57 = call i32 @wpabuf_clear_free(%struct.wpabuf* %56)
  %58 = load i32, i32* @MSG_INFO, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %61 = load %struct.wpabuf*, %struct.wpabuf** %60, align 8
  %62 = call i32 @wpabuf_clear_free(%struct.wpabuf* %61)
  %63 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %63, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %84

64:                                               ; preds = %37
  %65 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %65, align 8
  %67 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %68 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @wpabuf_put(%struct.wpabuf* %66, i64 %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %72 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %73 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @wpabuf_put(%struct.wpabuf* %71, i64 %74)
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %77, align 8
  %79 = call i32 @wpa_hexdump_buf_key(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %78)
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %82 = call i32 @wpa_hexdump_buf(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %81)
  %83 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %83, %struct.wpabuf** %3, align 8
  br label %84

84:                                               ; preds = %64, %55, %32, %23, %10
  %85 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %85
}

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @crypto_dh_init(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
