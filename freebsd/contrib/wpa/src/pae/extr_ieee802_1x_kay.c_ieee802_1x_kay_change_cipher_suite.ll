; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_change_cipher_suite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_change_cipher_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ieee802_1x_kay = type { i32, i32, i32 }
%struct.ieee802_1x_mka_participant = type { i32 }

@CS_TABLE_SIZE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"KaY: Configured cipher suite index is out of range\00", align 1
@FALSE = common dso_local global i32 0, align 4
@cipher_suite_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"KaY: Cipher Suite changed\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_1x_kay_change_cipher_suite(%struct.ieee802_1x_kay* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802_1x_kay*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee802_1x_kay* %0, %struct.ieee802_1x_kay** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %9 = icmp ne %struct.ieee802_1x_kay* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CS_TABLE_SIZE, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

18:                                               ; preds = %11
  %19 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %20 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -2, i32* %3, align 4
  br label %72

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  %30 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %31 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %35 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cipher_suite_tbl, align 8
  %37 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %38 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %45 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %47 = call i64 @secy_get_capability(%struct.ieee802_1x_kay* %46, i32* %7)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store i32 -3, i32* %3, align 4
  br label %72

50:                                               ; preds = %32
  %51 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %52 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %59 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %62 = call %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_principal_participant(%struct.ieee802_1x_kay* %61)
  store %struct.ieee802_1x_mka_participant* %62, %struct.ieee802_1x_mka_participant** %6, align 8
  %63 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %6, align 8
  %64 = icmp ne %struct.ieee802_1x_mka_participant* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @MSG_INFO, align 4
  %67 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @TRUE, align 4
  %69 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %6, align 8
  %70 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %60
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %49, %24, %15, %10
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @secy_get_capability(%struct.ieee802_1x_kay*, i32*) #1

declare dso_local %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_principal_participant(%struct.ieee802_1x_kay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
