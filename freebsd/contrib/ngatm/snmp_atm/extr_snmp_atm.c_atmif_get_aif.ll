; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_get_aif.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_get_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.atmif_priv = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@atmif_list = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@SNMP_ERR_NO_CREATION = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmif_get_aif(%struct.snmp_value* %0, i64 %1, i32 %2, %struct.atmif_priv** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atmif_priv**, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.atmif_priv** %3, %struct.atmif_priv*** %9, align 8
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %68 [
    i32 130, label %11
    i32 131, label %37
    i32 128, label %47
    i32 129, label %57
    i32 132, label %57
  ]

11:                                               ; preds = %4
  %12 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %13 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.atmif_priv* @NEXT_OBJECT_INT(i32* @atmif_list, %struct.TYPE_7__* %13, i64 %14)
  %16 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  store %struct.atmif_priv* %15, %struct.atmif_priv** %16, align 8
  %17 = icmp eq %struct.atmif_priv* %15, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %19, i32* %5, align 4
  br label %92

20:                                               ; preds = %11
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %25 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  %28 = load %struct.atmif_priv*, %struct.atmif_priv** %27, align 8
  %29 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %32 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %30, i32* %36, align 4
  br label %68

37:                                               ; preds = %4
  %38 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %39 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call %struct.atmif_priv* @FIND_OBJECT_INT(i32* @atmif_list, %struct.TYPE_7__* %39, i64 %40)
  %42 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  store %struct.atmif_priv* %41, %struct.atmif_priv** %42, align 8
  %43 = icmp eq %struct.atmif_priv* %41, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %45, i32* %5, align 4
  br label %92

46:                                               ; preds = %37
  br label %68

47:                                               ; preds = %4
  %48 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %49 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call %struct.atmif_priv* @FIND_OBJECT_INT(i32* @atmif_list, %struct.TYPE_7__* %49, i64 %50)
  %52 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  store %struct.atmif_priv* %51, %struct.atmif_priv** %52, align 8
  %53 = icmp eq %struct.atmif_priv* %51, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %55, i32* %5, align 4
  br label %92

56:                                               ; preds = %47
  br label %68

57:                                               ; preds = %4, %4
  %58 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %59 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call %struct.atmif_priv* @FIND_OBJECT_INT(i32* @atmif_list, %struct.TYPE_7__* %59, i64 %60)
  %62 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  store %struct.atmif_priv* %61, %struct.atmif_priv** %62, align 8
  %63 = icmp eq %struct.atmif_priv* %61, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 (...) @abort() #3
  unreachable

66:                                               ; preds = %57
  %67 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %67, i32* %5, align 4
  br label %92

68:                                               ; preds = %4, %56, %46, %20
  %69 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  %70 = load %struct.atmif_priv*, %struct.atmif_priv** %69, align 8
  %71 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %68
  %78 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  %79 = load %struct.atmif_priv*, %struct.atmif_priv** %78, align 8
  %80 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @mib_fetch_ifmib(i32 %82)
  %84 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  %85 = load %struct.atmif_priv*, %struct.atmif_priv** %84, align 8
  %86 = call i32 @atmif_sys_fill_mib(%struct.atmif_priv* %85)
  %87 = load %struct.atmif_priv**, %struct.atmif_priv*** %9, align 8
  %88 = load %struct.atmif_priv*, %struct.atmif_priv** %87, align 8
  %89 = call i32 @atmif_check_carrier(%struct.atmif_priv* %88)
  br label %90

90:                                               ; preds = %77, %68
  %91 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %66, %54, %44, %18
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.atmif_priv* @NEXT_OBJECT_INT(i32*, %struct.TYPE_7__*, i64) #1

declare dso_local %struct.atmif_priv* @FIND_OBJECT_INT(i32*, %struct.TYPE_7__*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mib_fetch_ifmib(i32) #1

declare dso_local i32 @atmif_sys_fill_mib(%struct.atmif_priv*) #1

declare dso_local i32 @atmif_check_carrier(%struct.atmif_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
