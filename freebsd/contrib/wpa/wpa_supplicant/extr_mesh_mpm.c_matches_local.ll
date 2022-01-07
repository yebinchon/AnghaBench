; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_matches_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_matches_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mesh_conf* }
%struct.mesh_conf = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.ieee802_11_elems = type { i32, i64*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.ieee802_11_elems*)* @matches_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matches_local(%struct.wpa_supplicant* %0, %struct.ieee802_11_elems* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.ieee802_11_elems*, align 8
  %6 = alloca %struct.mesh_conf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mesh_conf*, %struct.mesh_conf** %10, align 8
  store %struct.mesh_conf* %11, %struct.mesh_conf** %6, align 8
  %12 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %13 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %20 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %23 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %18
  %27 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %28 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %31 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %34 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @os_memcmp(i32 %29, i32 %32, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %26
  %39 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %40 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %43 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %38
  %49 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %50 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %53 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %51, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %48
  %59 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %60 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %63 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %61, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %58
  %69 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %70 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %73 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %80 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %83 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %81, %86
  br label %88

88:                                               ; preds = %78, %68, %58, %48, %38, %26, %18
  %89 = phi i1 [ false, %68 ], [ false, %58 ], [ false, %48 ], [ false, %38 ], [ false, %26 ], [ false, %18 ], [ %87, %78 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
