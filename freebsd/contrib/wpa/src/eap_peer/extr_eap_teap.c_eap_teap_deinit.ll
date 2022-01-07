; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { %struct.eap_teap_pac*, i32, %struct.eap_teap_data*, i64, %struct.TYPE_2__* }
%struct.eap_teap_pac = type { %struct.eap_teap_pac* }
%struct.TYPE_2__ = type { i32 (%struct.eap_sm*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_teap_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_deinit(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_teap_data*, align 8
  %6 = alloca %struct.eap_teap_pac*, align 8
  %7 = alloca %struct.eap_teap_pac*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.eap_teap_data*
  store %struct.eap_teap_data* %9, %struct.eap_teap_data** %5, align 8
  %10 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %11 = icmp ne %struct.eap_teap_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %15 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %20 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %27, align 8
  %29 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %30 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %31 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 %28(%struct.eap_sm* %29, i64 %32)
  br label %34

34:                                               ; preds = %23, %18, %13
  %35 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %36 = call i32 @eap_teap_clear(%struct.eap_teap_data* %35)
  %37 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %38 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %37, i32 0, i32 2
  %39 = load %struct.eap_teap_data*, %struct.eap_teap_data** %38, align 8
  %40 = call i32 @os_free(%struct.eap_teap_data* %39)
  %41 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %42 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %42, i32 0, i32 1
  %44 = call i32 @eap_peer_tls_ssl_deinit(%struct.eap_sm* %41, i32* %43)
  %45 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %46 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %45, i32 0, i32 0
  %47 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %46, align 8
  store %struct.eap_teap_pac* %47, %struct.eap_teap_pac** %6, align 8
  store %struct.eap_teap_pac* null, %struct.eap_teap_pac** %7, align 8
  br label %48

48:                                               ; preds = %51, %34
  %49 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %50 = icmp ne %struct.eap_teap_pac* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  store %struct.eap_teap_pac* %52, %struct.eap_teap_pac** %7, align 8
  %53 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %54 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %53, i32 0, i32 0
  %55 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %54, align 8
  store %struct.eap_teap_pac* %55, %struct.eap_teap_pac** %6, align 8
  %56 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %57 = call i32 @eap_teap_free_pac(%struct.eap_teap_pac* %56)
  br label %48

58:                                               ; preds = %48
  %59 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %60 = call i32 @os_free(%struct.eap_teap_data* %59)
  br label %61

61:                                               ; preds = %58, %12
  ret void
}

declare dso_local i32 @eap_teap_clear(%struct.eap_teap_data*) #1

declare dso_local i32 @os_free(%struct.eap_teap_data*) #1

declare dso_local i32 @eap_peer_tls_ssl_deinit(%struct.eap_sm*, i32*) #1

declare dso_local i32 @eap_teap_free_pac(%struct.eap_teap_pac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
