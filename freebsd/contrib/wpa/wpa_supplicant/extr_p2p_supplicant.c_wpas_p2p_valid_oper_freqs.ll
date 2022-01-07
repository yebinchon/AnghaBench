; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_valid_oper_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_valid_oper_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_used_freq_data = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"valid for P2P\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32)* @wpas_p2p_valid_oper_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_valid_oper_freqs(%struct.wpa_supplicant* %0, %struct.wpa_used_freq_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_used_freq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_used_freq_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_used_freq_data* %1, %struct.wpa_used_freq_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.wpa_used_freq_data* @os_calloc(i32 %14, i32 4)
  store %struct.wpa_used_freq_data* %15, %struct.wpa_used_freq_data** %8, align 8
  %16 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %8, align 8
  %17 = icmp ne %struct.wpa_used_freq_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

19:                                               ; preds = %3
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %21 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %8, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @get_shared_radio_freqs_data(%struct.wpa_supplicant* %20, %struct.wpa_used_freq_data* %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @os_memset(%struct.wpa_used_freq_data* %26, i32 0, i32 %30)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %69, %19
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %72

42:                                               ; preds = %40
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @p2p_supported_freq(i32 %47, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %42
  %57 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %57, i64 %60
  %62 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %62, i64 %64
  %66 = bitcast %struct.wpa_used_freq_data* %61 to i8*
  %67 = bitcast %struct.wpa_used_freq_data* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  br label %68

68:                                               ; preds = %56, %42
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %32

72:                                               ; preds = %40
  %73 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %8, align 8
  %74 = call i32 @os_free(%struct.wpa_used_freq_data* %73)
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %76 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @dump_freq_data(%struct.wpa_supplicant* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.wpa_used_freq_data* %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %72, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.wpa_used_freq_data* @os_calloc(i32, i32) #1

declare dso_local i32 @get_shared_radio_freqs_data(%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32) #1

declare dso_local i32 @os_memset(%struct.wpa_used_freq_data*, i32, i32) #1

declare dso_local i64 @p2p_supported_freq(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @os_free(%struct.wpa_used_freq_data*) #1

declare dso_local i32 @dump_freq_data(%struct.wpa_supplicant*, i8*, %struct.wpa_used_freq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
