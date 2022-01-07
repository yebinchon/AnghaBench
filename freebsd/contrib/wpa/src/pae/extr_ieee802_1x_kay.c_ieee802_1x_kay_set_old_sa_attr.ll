; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_set_old_sa_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_set_old_sa_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay = type { i8*, i8*, i64, i64 }
%struct.ieee802_1x_mka_ki = type { i64 }
%struct.ieee802_1x_mka_participant = type { i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_1x_kay_set_old_sa_attr(%struct.ieee802_1x_kay* %0, %struct.ieee802_1x_mka_ki* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee802_1x_kay*, align 8
  %8 = alloca %struct.ieee802_1x_mka_ki*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ieee802_1x_mka_participant*, align 8
  store %struct.ieee802_1x_kay* %0, %struct.ieee802_1x_kay** %7, align 8
  store %struct.ieee802_1x_mka_ki* %1, %struct.ieee802_1x_mka_ki** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %14 = call %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_principal_participant(%struct.ieee802_1x_kay* %13)
  store %struct.ieee802_1x_mka_participant* %14, %struct.ieee802_1x_mka_participant** %12, align 8
  %15 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %12, align 8
  %16 = icmp ne %struct.ieee802_1x_mka_participant* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %65

18:                                               ; preds = %5
  %19 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %8, align 8
  %20 = icmp ne %struct.ieee802_1x_mka_ki* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %12, align 8
  %23 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %22, i32 0, i32 3
  %24 = call i32 @os_memset(i32* %23, i32 0, i32 4)
  br label %30

25:                                               ; preds = %18
  %26 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %12, align 8
  %27 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %26, i32 0, i32 3
  %28 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %8, align 8
  %29 = call i32 @os_memcpy(i32* %27, %struct.ieee802_1x_mka_ki* %28, i32 4)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %12, align 8
  %33 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %12, align 8
  %36 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %12, align 8
  %39 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %8, align 8
  %41 = icmp ne %struct.ieee802_1x_mka_ki* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %44 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %46 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  br label %58

47:                                               ; preds = %30
  %48 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %8, align 8
  %49 = getelementptr inbounds %struct.ieee802_1x_mka_ki, %struct.ieee802_1x_mka_ki* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %52 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %8, align 8
  %54 = getelementptr inbounds %struct.ieee802_1x_mka_ki, %struct.ieee802_1x_mka_ki* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %57 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %42
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %61 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %64 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %17
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_principal_participant(%struct.ieee802_1x_kay*) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, %struct.ieee802_1x_mka_ki*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
