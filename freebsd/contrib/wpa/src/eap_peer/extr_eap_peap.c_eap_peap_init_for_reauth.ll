; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_init_for_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_init_for_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_2__*, i32, %struct.eap_peap_data* }
%struct.TYPE_2__ = type { i32 (%struct.eap_sm*, i64)* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eap_sm*, i8*)* @eap_peap_init_for_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eap_peap_init_for_reauth(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.eap_peap_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %8, %struct.eap_peap_data** %6, align 8
  %9 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %10 = call i32 @eap_peap_free_key(%struct.eap_peap_data* %9)
  %11 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %12 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %11, i32 0, i32 8
  %13 = load %struct.eap_peap_data*, %struct.eap_peap_data** %12, align 8
  %14 = call i32 @os_free(%struct.eap_peap_data* %13)
  %15 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %16 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %15, i32 0, i32 8
  store %struct.eap_peap_data* null, %struct.eap_peap_data** %16, align 8
  %17 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %18 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %19 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %18, i32 0, i32 7
  %20 = call i64 @eap_peer_tls_reauth_init(%struct.eap_sm* %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %24 = call i32 @os_free(%struct.eap_peap_data* %23)
  store i8* null, i8** %3, align 8
  br label %68

25:                                               ; preds = %2
  %26 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %32 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %36, i32 0, i32 6
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %39, align 8
  %41 = icmp ne i32 (%struct.eap_sm*, i64)* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %44 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %43, i32 0, i32 6
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %46, align 8
  %48 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %49 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %50 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i32 %47(%struct.eap_sm* %48, i64 %51)
  br label %53

53:                                               ; preds = %42, %35, %30, %25
  %54 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %57 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %59 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %61 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %63 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %66 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i8*, i8** %5, align 8
  store i8* %67, i8** %3, align 8
  br label %68

68:                                               ; preds = %53, %22
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

declare dso_local i32 @eap_peap_free_key(%struct.eap_peap_data*) #1

declare dso_local i32 @os_free(%struct.eap_peap_data*) #1

declare dso_local i64 @eap_peer_tls_reauth_init(%struct.eap_sm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
