; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_plugin.c__krb5_plugin_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_plugin.c__krb5_plugin_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugin = type { i32, %struct.TYPE_6__, %struct.plugin* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i8*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.krb5_plugin = type { i32 }

@plugin_mutex = common dso_local global i32 0, align 4
@registered = common dso_local global %struct.plugin* null, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Did not find a plugin for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_krb5_plugin_find(i32 %0, i32 %1, i8* %2, %struct.krb5_plugin** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.krb5_plugin**, align 8
  %10 = alloca %struct.plugin*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.krb5_plugin** %3, %struct.krb5_plugin*** %9, align 8
  %13 = load %struct.krb5_plugin**, %struct.krb5_plugin*** %9, align 8
  store %struct.krb5_plugin* null, %struct.krb5_plugin** %13, align 8
  %14 = call i32 @HEIMDAL_MUTEX_lock(i32* @plugin_mutex)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @load_plugins(i32 %15)
  store i64 0, i64* %11, align 8
  %17 = load %struct.plugin*, %struct.plugin** @registered, align 8
  store %struct.plugin* %17, %struct.plugin** %10, align 8
  br label %18

18:                                               ; preds = %85, %4
  %19 = load %struct.plugin*, %struct.plugin** %10, align 8
  %20 = icmp ne %struct.plugin* %19, null
  br i1 %20, label %21, label %89

21:                                               ; preds = %18
  %22 = load %struct.plugin*, %struct.plugin** %10, align 8
  %23 = getelementptr inbounds %struct.plugin, %struct.plugin* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %76 [
    i32 129, label %25
    i32 128, label %49
  ]

25:                                               ; preds = %21
  %26 = load %struct.plugin*, %struct.plugin** %10, align 8
  %27 = getelementptr inbounds %struct.plugin, %struct.plugin* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %85

33:                                               ; preds = %25
  %34 = load %struct.plugin*, %struct.plugin** %10, align 8
  %35 = getelementptr inbounds %struct.plugin, %struct.plugin* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @dlsym(i32* %38, i8* %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.krb5_plugin**, %struct.krb5_plugin*** %9, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i64 @add_symbol(i32 %44, %struct.krb5_plugin** %45, i8* %46)
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %43, %33
  br label %76

49:                                               ; preds = %21
  %50 = load %struct.plugin*, %struct.plugin** %10, align 8
  %51 = getelementptr inbounds %struct.plugin, %struct.plugin* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcmp(i32 %54, i8* %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %49
  %59 = load %struct.plugin*, %struct.plugin** %10, align 8
  %60 = getelementptr inbounds %struct.plugin, %struct.plugin* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.krb5_plugin**, %struct.krb5_plugin*** %9, align 8
  %69 = load %struct.plugin*, %struct.plugin** %10, align 8
  %70 = getelementptr inbounds %struct.plugin, %struct.plugin* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @add_symbol(i32 %67, %struct.krb5_plugin** %68, i8* %73)
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %66, %58, %49
  br label %76

76:                                               ; preds = %21, %75, %48
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.krb5_plugin**, %struct.krb5_plugin*** %9, align 8
  %81 = load %struct.krb5_plugin*, %struct.krb5_plugin** %80, align 8
  %82 = call i32 @_krb5_plugin_free(%struct.krb5_plugin* %81)
  %83 = load %struct.krb5_plugin**, %struct.krb5_plugin*** %9, align 8
  store %struct.krb5_plugin* null, %struct.krb5_plugin** %83, align 8
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %32
  %86 = load %struct.plugin*, %struct.plugin** %10, align 8
  %87 = getelementptr inbounds %struct.plugin, %struct.plugin* %86, i32 0, i32 2
  %88 = load %struct.plugin*, %struct.plugin** %87, align 8
  store %struct.plugin* %88, %struct.plugin** %10, align 8
  br label %18

89:                                               ; preds = %18
  %90 = call i32 @HEIMDAL_MUTEX_unlock(i32* @plugin_mutex)
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* %11, align 8
  store i64 %94, i64* %5, align 8
  br label %106

95:                                               ; preds = %89
  %96 = load %struct.krb5_plugin**, %struct.krb5_plugin*** %9, align 8
  %97 = load %struct.krb5_plugin*, %struct.krb5_plugin** %96, align 8
  %98 = icmp eq %struct.krb5_plugin* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = load i64, i64* @ENOENT, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @krb5_set_error_message(i32 %100, i64 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %102)
  %104 = load i64, i64* @ENOENT, align 8
  store i64 %104, i64* %5, align 8
  br label %106

105:                                              ; preds = %95
  store i64 0, i64* %5, align 8
  br label %106

106:                                              ; preds = %105, %99, %93
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @load_plugins(i32) #1

declare dso_local i8* @dlsym(i32*, i8*) #1

declare dso_local i64 @add_symbol(i32, %struct.krb5_plugin**, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @_krb5_plugin_free(%struct.krb5_plugin*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
