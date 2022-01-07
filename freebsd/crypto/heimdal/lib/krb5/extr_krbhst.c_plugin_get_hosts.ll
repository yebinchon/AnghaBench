; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_plugin_get_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_plugin_get_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_krbhst_data = type { i32, i32 }
%struct.krb5_plugin = type { i32 }
%struct.TYPE_3__ = type { i64, i64 (i8*, i32, i32, i32, i32, i32, %struct.krb5_krbhst_data*)*, i32 (i8*)*, i32 (i32, i8**)* }

@PLUGIN_TYPE_DATA = common dso_local global i32 0, align 4
@KRB5_PLUGIN_LOCATE = common dso_local global i32 0, align 4
@add_locate = common dso_local global i32 0, align 4
@KRB5_PLUGIN_NO_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Locate plugin failed to lookup realm %s: %d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"plugin found result for realm %s\00", align 1
@KD_CONFIG_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.krb5_krbhst_data*, i32)* @plugin_get_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plugin_get_hosts(i32 %0, %struct.krb5_krbhst_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_krbhst_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.krb5_plugin*, align 8
  %8 = alloca %struct.krb5_plugin*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.krb5_krbhst_data* %1, %struct.krb5_krbhst_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.krb5_plugin* null, %struct.krb5_plugin** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PLUGIN_TYPE_DATA, align 4
  %14 = load i32, i32* @KRB5_PLUGIN_LOCATE, align 4
  %15 = call i64 @_krb5_plugin_find(i32 %12, i32 %13, i32 %14, %struct.krb5_plugin** %7)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.krb5_plugin*, %struct.krb5_plugin** %7, align 8
  %20 = icmp eq %struct.krb5_plugin* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %94

22:                                               ; preds = %18
  %23 = load %struct.krb5_plugin*, %struct.krb5_plugin** %7, align 8
  store %struct.krb5_plugin* %23, %struct.krb5_plugin** %8, align 8
  br label %24

24:                                               ; preds = %88, %22
  %25 = load %struct.krb5_plugin*, %struct.krb5_plugin** %8, align 8
  %26 = icmp ne %struct.krb5_plugin* %25, null
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load %struct.krb5_plugin*, %struct.krb5_plugin** %8, align 8
  %29 = call %struct.TYPE_3__* @_krb5_plugin_get_symbol(%struct.krb5_plugin* %28)
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %10, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %88

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32 (i32, i8**)*, i32 (i32, i8**)** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 %38(i32 %39, i8** %11)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64 (i8*, i32, i32, i32, i32, i32, %struct.krb5_krbhst_data*)*, i64 (i8*, i32, i32, i32, i32, i32, %struct.krb5_krbhst_data*)** %42, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %47 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @add_locate, align 4
  %50 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %51 = call i64 %43(i8* %44, i32 %45, i32 %48, i32 0, i32 0, i32 %49, %struct.krb5_krbhst_data* %50)
  store i64 %51, i64* %9, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32 (i8*)*, i32 (i8*)** %53, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 %54(i8* %55)
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %35
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @KRB5_PLUGIN_NO_HANDLE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %68 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @krb5_set_error_message(i32 %64, i64 %65, i32 %66, i32 %69, i64 %70)
  br label %91

72:                                               ; preds = %59, %35
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %78 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @_krb5_debug(i32 %76, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @KD_CONFIG_EXISTS, align 4
  %82 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %5, align 8
  %83 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %75, %72
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %34
  %89 = load %struct.krb5_plugin*, %struct.krb5_plugin** %8, align 8
  %90 = call %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin* %89)
  store %struct.krb5_plugin* %90, %struct.krb5_plugin** %8, align 8
  br label %24

91:                                               ; preds = %63, %24
  %92 = load %struct.krb5_plugin*, %struct.krb5_plugin** %7, align 8
  %93 = call i32 @_krb5_plugin_free(%struct.krb5_plugin* %92)
  br label %94

94:                                               ; preds = %91, %21
  ret void
}

declare dso_local i64 @_krb5_plugin_find(i32, i32, i32, %struct.krb5_plugin**) #1

declare dso_local %struct.TYPE_3__* @_krb5_plugin_get_symbol(%struct.krb5_plugin*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, i32, i64) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @_krb5_debug(i32, i32, i8*, i32) #1

declare dso_local %struct.krb5_plugin* @_krb5_plugin_get_next(%struct.krb5_plugin*) #1

declare dso_local i32 @_krb5_plugin_free(%struct.krb5_plugin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
