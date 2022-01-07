; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_send_to_kdc.c_send_via_plugin.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_send_to_kdc.c_send_via_plugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_plugin = type { i32 }
%struct.TYPE_3__ = type { i64, i64 (i32, i8*, i32*, i32, i32*, i32*)*, i32 (i8*)*, i32 (i32, i8**)* }

@PLUGIN_TYPE_DATA = common dso_local global i32 0, align 4
@KRB5_PLUGIN_SEND_TO_KDC = common dso_local global i32 0, align 4
@KRB5_PLUGIN_NO_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Plugin send_to_kdc failed to lookup with error: %d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @send_via_plugin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @send_via_plugin(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.krb5_plugin*, align 8
  %13 = alloca %struct.krb5_plugin*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.krb5_plugin* null, %struct.krb5_plugin** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PLUGIN_TYPE_DATA, align 4
  %19 = load i32, i32* @KRB5_PLUGIN_SEND_TO_KDC, align 4
  %20 = call i64 @_krb5_plugin_find(i32 %17, i32 %18, i32 %19, %struct.krb5_plugin** %12)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load %struct.krb5_plugin*, %struct.krb5_plugin** %12, align 8
  %25 = icmp eq %struct.krb5_plugin* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %5
  %27 = load i64, i64* @KRB5_PLUGIN_NO_HANDLE, align 8
  store i64 %27, i64* %6, align 8
  br label %83

28:                                               ; preds = %23
  %29 = load %struct.krb5_plugin*, %struct.krb5_plugin** %12, align 8
  store %struct.krb5_plugin* %29, %struct.krb5_plugin** %13, align 8
  br label %30

30:                                               ; preds = %76, %28
  %31 = load %struct.krb5_plugin*, %struct.krb5_plugin** %13, align 8
  %32 = icmp ne %struct.krb5_plugin* %31, null
  br i1 %32, label %33, label %79

33:                                               ; preds = %30
  %34 = load %struct.krb5_plugin*, %struct.krb5_plugin** %13, align 8
  %35 = call %struct.TYPE_3__* @_krb5_plugin_get_symbol(%struct.krb5_plugin* %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %15, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %76

41:                                               ; preds = %33
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32 (i32, i8**)*, i32 (i32, i8**)** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 %44(i32 %45, i8** %16)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64 (i32, i8*, i32*, i32, i32*, i32*)*, i64 (i32, i8*, i32*, i32, i32*, i32*)** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 %49(i32 %50, i8* %51, i32* %52, i32 %53, i32* %54, i32* %55)
  store i64 %56, i64* %14, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32 (i8*)*, i32 (i8*)** %58, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = call i32 %59(i8* %60)
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %41
  br label %79

65:                                               ; preds = %41
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @KRB5_PLUGIN_NO_HANDLE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @krb5_set_error_message(i32 %70, i64 %71, i32 %72, i64 %73)
  br label %79

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.krb5_plugin*, %struct.krb5_plugin** %13, align 8
  %78 = call %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin* %77)
  store %struct.krb5_plugin* %78, %struct.krb5_plugin** %13, align 8
  br label %30

79:                                               ; preds = %69, %64, %30
  %80 = load %struct.krb5_plugin*, %struct.krb5_plugin** %12, align 8
  %81 = call i32 @_krb5_plugin_free(%struct.krb5_plugin* %80)
  %82 = load i64, i64* @KRB5_PLUGIN_NO_HANDLE, align 8
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %79, %26
  %84 = load i64, i64* %6, align 8
  ret i64 %84
}

declare dso_local i64 @_krb5_plugin_find(i32, i32, i32, %struct.krb5_plugin**) #1

declare dso_local %struct.TYPE_3__* @_krb5_plugin_get_symbol(%struct.krb5_plugin*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, i64) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin*) #1

declare dso_local i32 @_krb5_plugin_free(%struct.krb5_plugin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
