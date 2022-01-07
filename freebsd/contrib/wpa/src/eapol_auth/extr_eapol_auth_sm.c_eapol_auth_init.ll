; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_authenticator = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eapol_auth_config = type { i64 }
%struct.eapol_auth_cb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eapol_authenticator* @eapol_auth_init(%struct.eapol_auth_config* %0, %struct.eapol_auth_cb* %1) #0 {
  %3 = alloca %struct.eapol_authenticator*, align 8
  %4 = alloca %struct.eapol_auth_config*, align 8
  %5 = alloca %struct.eapol_auth_cb*, align 8
  %6 = alloca %struct.eapol_authenticator*, align 8
  store %struct.eapol_auth_config* %0, %struct.eapol_auth_config** %4, align 8
  store %struct.eapol_auth_cb* %1, %struct.eapol_auth_cb** %5, align 8
  %7 = call %struct.eapol_authenticator* @os_zalloc(i32 56)
  store %struct.eapol_authenticator* %7, %struct.eapol_authenticator** %6, align 8
  %8 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %9 = icmp eq %struct.eapol_authenticator* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.eapol_authenticator* null, %struct.eapol_authenticator** %3, align 8
  br label %102

11:                                               ; preds = %2
  %12 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %13 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %12, i32 0, i32 2
  %14 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %15 = call i64 @eapol_auth_conf_clone(i32* %13, %struct.eapol_auth_config* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %19 = call i32 @os_free(%struct.eapol_authenticator* %18)
  store %struct.eapol_authenticator* null, %struct.eapol_authenticator** %3, align 8
  br label %102

20:                                               ; preds = %11
  %21 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %22 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %27 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %30 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %33 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 11
  store i32 %31, i32* %34, align 4
  %35 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %36 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %39 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 10
  store i32 %37, i32* %40, align 4
  %41 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %42 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %45 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 9
  store i32 %43, i32* %46, align 4
  %47 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %48 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %51 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 8
  store i32 %49, i32* %52, align 4
  %53 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %54 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %57 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 7
  store i32 %55, i32* %58, align 4
  %59 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %60 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %63 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  store i32 %61, i32* %64, align 4
  %65 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %66 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %69 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 4
  %71 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %72 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %75 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 4
  %77 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %78 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %81 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %84 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %87 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  %89 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %90 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %93 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.eapol_auth_cb*, %struct.eapol_auth_cb** %5, align 8
  %96 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %99 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  store %struct.eapol_authenticator* %101, %struct.eapol_authenticator** %3, align 8
  br label %102

102:                                              ; preds = %28, %17, %10
  %103 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %3, align 8
  ret %struct.eapol_authenticator* %103
}

declare dso_local %struct.eapol_authenticator* @os_zalloc(i32) #1

declare dso_local i64 @eapol_auth_conf_clone(i32*, %struct.eapol_auth_config*) #1

declare dso_local i32 @os_free(%struct.eapol_authenticator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
