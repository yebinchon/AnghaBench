; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2ps_setup_p2ps_prov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2ps_setup_p2ps_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.p2ps_provision* }
%struct.p2ps_provision = type { i8*, i32, i32, i32, i8*, i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_data*, i8*, i8*, i32, i32*, i32*)* @p2ps_setup_p2ps_prov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2ps_setup_p2ps_prov(%struct.p2p_data* %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.p2p_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.p2ps_provision*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  %17 = load %struct.p2ps_provision*, %struct.p2ps_provision** %16, align 8
  %18 = icmp ne %struct.p2ps_provision* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %6
  %20 = call %struct.p2ps_provision* @os_zalloc(i32 41)
  %21 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 0
  store %struct.p2ps_provision* %20, %struct.p2ps_provision** %22, align 8
  %23 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %24 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %23, i32 0, i32 0
  %25 = load %struct.p2ps_provision*, %struct.p2ps_provision** %24, align 8
  %26 = icmp ne %struct.p2ps_provision* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 -1, i32* %7, align 4
  br label %63

28:                                               ; preds = %19
  br label %34

29:                                               ; preds = %6
  %30 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %31 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %30, i32 0, i32 0
  %32 = load %struct.p2ps_provision*, %struct.p2ps_provision** %31, align 8
  %33 = call i32 @os_memset(%struct.p2ps_provision* %32, i32 0, i32 41)
  br label %34

34:                                               ; preds = %29, %28
  %35 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %36 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %35, i32 0, i32 0
  %37 = load %struct.p2ps_provision*, %struct.p2ps_provision** %36, align 8
  store %struct.p2ps_provision* %37, %struct.p2ps_provision** %14, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.p2ps_provision*, %struct.p2ps_provision** %14, align 8
  %40 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.p2ps_provision*, %struct.p2ps_provision** %14, align 8
  %43 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.p2ps_provision*, %struct.p2ps_provision** %14, align 8
  %46 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.p2ps_provision*, %struct.p2ps_provision** %14, align 8
  %48 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @os_memcpy(i32 %49, i32* %50, i32 %51)
  %53 = load %struct.p2ps_provision*, %struct.p2ps_provision** %14, align 8
  %54 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @os_memcpy(i32 %55, i32* %56, i32 %57)
  %59 = load %struct.p2ps_provision*, %struct.p2ps_provision** %14, align 8
  %60 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 0, i8* %62, align 1
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %34, %27
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.p2ps_provision* @os_zalloc(i32) #1

declare dso_local i32 @os_memset(%struct.p2ps_provision*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
