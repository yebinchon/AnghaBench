; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_iface.c_fst_iface_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_iface.c_fst_iface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_iface = type { %struct.fst_iface_cfg, i32, i32, %struct.fst_group*, %struct.fst_wpa_obj }
%struct.fst_iface_cfg = type { i64 }
%struct.fst_wpa_obj = type { i32 }
%struct.fst_group = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot allocate iface for %s\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Zero llt adjusted\00", align 1
@FST_DEFAULT_LLT_CFG_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fst_iface* @fst_iface_create(%struct.fst_group* %0, i8* %1, i32* %2, %struct.fst_wpa_obj* %3, %struct.fst_iface_cfg* %4) #0 {
  %6 = alloca %struct.fst_iface*, align 8
  %7 = alloca %struct.fst_group*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fst_wpa_obj*, align 8
  %11 = alloca %struct.fst_iface_cfg*, align 8
  %12 = alloca %struct.fst_iface*, align 8
  store %struct.fst_group* %0, %struct.fst_group** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.fst_wpa_obj* %3, %struct.fst_wpa_obj** %10, align 8
  store %struct.fst_iface_cfg* %4, %struct.fst_iface_cfg** %11, align 8
  %13 = call %struct.fst_iface* @os_zalloc(i32 32)
  store %struct.fst_iface* %13, %struct.fst_iface** %12, align 8
  %14 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %15 = icmp ne %struct.fst_iface* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.fst_group*, %struct.fst_group** %7, align 8
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @fst_printf_group(%struct.fst_group* %17, i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19)
  store %struct.fst_iface* null, %struct.fst_iface** %6, align 8
  br label %60

21:                                               ; preds = %5
  %22 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %23 = getelementptr inbounds %struct.fst_iface, %struct.fst_iface* %22, i32 0, i32 0
  %24 = load %struct.fst_iface_cfg*, %struct.fst_iface_cfg** %11, align 8
  %25 = bitcast %struct.fst_iface_cfg* %23 to i8*
  %26 = bitcast %struct.fst_iface_cfg* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %28 = getelementptr inbounds %struct.fst_iface, %struct.fst_iface* %27, i32 0, i32 4
  %29 = load %struct.fst_wpa_obj*, %struct.fst_wpa_obj** %10, align 8
  %30 = bitcast %struct.fst_wpa_obj* %28 to i8*
  %31 = bitcast %struct.fst_wpa_obj* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.fst_group*, %struct.fst_group** %7, align 8
  %33 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %34 = getelementptr inbounds %struct.fst_iface, %struct.fst_iface* %33, i32 0, i32 3
  store %struct.fst_group* %32, %struct.fst_group** %34, align 8
  %35 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %36 = getelementptr inbounds %struct.fst_iface, %struct.fst_iface* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @os_strlcpy(i32 %37, i8* %38, i32 4)
  %40 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %41 = getelementptr inbounds %struct.fst_iface, %struct.fst_iface* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @os_memcpy(i32 %42, i32* %43, i32 4)
  %45 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %46 = getelementptr inbounds %struct.fst_iface, %struct.fst_iface* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.fst_iface_cfg, %struct.fst_iface_cfg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %21
  %51 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %52 = load i32, i32* @MSG_WARNING, align 4
  %53 = call i32 @fst_printf_iface(%struct.fst_iface* %51, i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i64, i64* @FST_DEFAULT_LLT_CFG_VALUE, align 8
  %55 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  %56 = getelementptr inbounds %struct.fst_iface, %struct.fst_iface* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.fst_iface_cfg, %struct.fst_iface_cfg* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %50, %21
  %59 = load %struct.fst_iface*, %struct.fst_iface** %12, align 8
  store %struct.fst_iface* %59, %struct.fst_iface** %6, align 8
  br label %60

60:                                               ; preds = %58, %16
  %61 = load %struct.fst_iface*, %struct.fst_iface** %6, align 8
  ret %struct.fst_iface* %61
}

declare dso_local %struct.fst_iface* @os_zalloc(i32) #1

declare dso_local i32 @fst_printf_group(%struct.fst_group*, i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @fst_printf_iface(%struct.fst_iface*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
