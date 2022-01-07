; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pcache.c__krb5_load_ccache_plugins.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pcache.c__krb5_load_ccache_plugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_plugin = type { i32 }
%struct.TYPE_4__ = type { i64 }

@PLUGIN_TYPE_DATA = common dso_local global i32 0, align 4
@KRB5_PLUGIN_CCACHE = common dso_local global i32 0, align 4
@KRB5_CC_OPS_VERSION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_krb5_load_ccache_plugins(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.krb5_plugin*, align 8
  %5 = alloca %struct.krb5_plugin*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.krb5_plugin* null, %struct.krb5_plugin** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PLUGIN_TYPE_DATA, align 4
  %11 = load i32, i32* @KRB5_PLUGIN_CCACHE, align 4
  %12 = call i64 @_krb5_plugin_find(i32 %9, i32 %10, i32 %11, %struct.krb5_plugin** %4)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %2, align 8
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.krb5_plugin*, %struct.krb5_plugin** %4, align 8
  store %struct.krb5_plugin* %18, %struct.krb5_plugin** %5, align 8
  br label %19

19:                                               ; preds = %44, %17
  %20 = load %struct.krb5_plugin*, %struct.krb5_plugin** %5, align 8
  %21 = icmp ne %struct.krb5_plugin* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load %struct.krb5_plugin*, %struct.krb5_plugin** %5, align 8
  %24 = call %struct.TYPE_4__* @_krb5_plugin_get_symbol(%struct.krb5_plugin* %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %7, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KRB5_CC_OPS_VERSION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i64 @krb5_cc_register(i32 %34, %struct.TYPE_4__* %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %33
  br label %43

43:                                               ; preds = %42, %27, %22
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.krb5_plugin*, %struct.krb5_plugin** %5, align 8
  %46 = call %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin* %45)
  store %struct.krb5_plugin* %46, %struct.krb5_plugin** %5, align 8
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.krb5_plugin*, %struct.krb5_plugin** %4, align 8
  %49 = call i32 @_krb5_plugin_free(%struct.krb5_plugin* %48)
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %47, %15
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @_krb5_plugin_find(i32, i32, i32, %struct.krb5_plugin**) #1

declare dso_local %struct.TYPE_4__* @_krb5_plugin_get_symbol(%struct.krb5_plugin*) #1

declare dso_local i64 @krb5_cc_register(i32, %struct.TYPE_4__*, i32) #1

declare dso_local %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin*) #1

declare dso_local i32 @_krb5_plugin_free(%struct.krb5_plugin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
