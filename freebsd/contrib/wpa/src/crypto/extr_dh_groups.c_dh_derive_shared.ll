; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_dh_groups.c_dh_derive_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_dh_groups.c_dh_derive_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dh_group = type { i64, i32, i32, i32, i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DH: crypto_dh_derive_secret failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DH: shared key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @dh_derive_shared(%struct.wpabuf* %0, %struct.wpabuf* %1, %struct.dh_group* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.dh_group*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.dh_group* %2, %struct.dh_group** %7, align 8
  %10 = load %struct.dh_group*, %struct.dh_group** %7, align 8
  %11 = icmp eq %struct.dh_group* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %14 = icmp eq %struct.wpabuf* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %17 = icmp eq %struct.wpabuf* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %70

19:                                               ; preds = %15
  %20 = load %struct.dh_group*, %struct.dh_group** %7, align 8
  %21 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call %struct.wpabuf* @wpabuf_alloc(i64 %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %8, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %26 = icmp eq %struct.wpabuf* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %70

28:                                               ; preds = %19
  %29 = load %struct.dh_group*, %struct.dh_group** %7, align 8
  %30 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dh_group*, %struct.dh_group** %7, align 8
  %34 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dh_group*, %struct.dh_group** %7, align 8
  %37 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dh_group*, %struct.dh_group** %7, align 8
  %40 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dh_group*, %struct.dh_group** %7, align 8
  %43 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %46 = call i32 @wpabuf_head(%struct.wpabuf* %45)
  %47 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %48 = call i32 @wpabuf_len(%struct.wpabuf* %47)
  %49 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %50 = call i32 @wpabuf_head(%struct.wpabuf* %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = call i32 @wpabuf_len(%struct.wpabuf* %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %54 = call i32 @wpabuf_mhead(%struct.wpabuf* %53)
  %55 = call i64 @crypto_dh_derive_secret(i32 %32, i32 %35, i64 %38, i32 %41, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i64* %9)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %28
  %58 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %59 = call i32 @wpabuf_clear_free(%struct.wpabuf* %58)
  %60 = load i32, i32* @MSG_INFO, align 4
  %61 = call i32 @wpa_printf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %70

62:                                               ; preds = %28
  %63 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @wpabuf_put(%struct.wpabuf* %63, i64 %64)
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %68 = call i32 @wpa_hexdump_buf_key(i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %67)
  %69 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %69, %struct.wpabuf** %4, align 8
  br label %70

70:                                               ; preds = %62, %57, %27, %18
  %71 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %71
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @crypto_dh_derive_secret(i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
