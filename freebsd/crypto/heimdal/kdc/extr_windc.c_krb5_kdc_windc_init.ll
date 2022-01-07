; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_windc.c_krb5_kdc_windc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_windc.c_krb5_kdc_windc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (i32, i32*)* }
%struct.krb5_plugin = type { i32 }

@PLUGIN_TYPE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"windc\00", align 1
@windcft = common dso_local global %struct.TYPE_3__* null, align 8
@KRB5_WINDC_PLUGIN_MINOR = common dso_local global i64 0, align 8
@windcctx = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Did not find any WINDC plugin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @krb5_kdc_windc_init(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.krb5_plugin*, align 8
  %5 = alloca %struct.krb5_plugin*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.krb5_plugin* null, %struct.krb5_plugin** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PLUGIN_TYPE_DATA, align 4
  %9 = call i64 @_krb5_plugin_find(i32 %7, i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.krb5_plugin** %4)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.krb5_plugin*, %struct.krb5_plugin** %4, align 8
  %14 = icmp eq %struct.krb5_plugin* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  store i64 0, i64* %2, align 8
  br label %50

16:                                               ; preds = %12
  %17 = load %struct.krb5_plugin*, %struct.krb5_plugin** %4, align 8
  store %struct.krb5_plugin* %17, %struct.krb5_plugin** %5, align 8
  br label %18

18:                                               ; preds = %36, %16
  %19 = load %struct.krb5_plugin*, %struct.krb5_plugin** %5, align 8
  %20 = icmp ne %struct.krb5_plugin* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.krb5_plugin*, %struct.krb5_plugin** %5, align 8
  %23 = call %struct.TYPE_3__* @_krb5_plugin_get_symbol(%struct.krb5_plugin* %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** @windcft, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @windcft, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KRB5_WINDC_PLUGIN_MINOR, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %36

30:                                               ; preds = %21
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @windcft, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (i32, i32*)*, i32 (i32, i32*)** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 %33(i32 %34, i32* @windcctx)
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.krb5_plugin*, %struct.krb5_plugin** %5, align 8
  %38 = call %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin* %37)
  store %struct.krb5_plugin* %38, %struct.krb5_plugin** %5, align 8
  br label %18

39:                                               ; preds = %30, %18
  %40 = load %struct.krb5_plugin*, %struct.krb5_plugin** %4, align 8
  %41 = call i32 @_krb5_plugin_free(%struct.krb5_plugin* %40)
  %42 = load %struct.krb5_plugin*, %struct.krb5_plugin** %5, align 8
  %43 = icmp eq %struct.krb5_plugin* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = load i64, i64* @ENOENT, align 8
  %47 = call i32 @krb5_set_error_message(i32 %45, i64 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @windcft, align 8
  %48 = load i64, i64* @ENOENT, align 8
  store i64 %48, i64* %2, align 8
  br label %50

49:                                               ; preds = %39
  store i64 0, i64* %2, align 8
  br label %50

50:                                               ; preds = %49, %44, %15
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i64 @_krb5_plugin_find(i32, i32, i8*, %struct.krb5_plugin**) #1

declare dso_local %struct.TYPE_3__* @_krb5_plugin_get_symbol(%struct.krb5_plugin*) #1

declare dso_local %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin*) #1

declare dso_local i32 @_krb5_plugin_free(%struct.krb5_plugin*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
