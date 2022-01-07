; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_plugin.c_search_modules.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_plugin.c_search_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugin2 = type { i32, i32* }
%struct.iter_ctx = type { i64, i32, i32, i32, i32 }
%struct.plug = type { %struct.common_plugin_method*, i32 }
%struct.common_plugin_method = type { i32 (i32, i32*)*, i64 }

@.str = private unnamed_addr constant [12 x i8] c"struct-plug\00", align 1
@plug_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.plugin2*, %struct.plugin2*)* @search_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_modules(i8* %0, %struct.plugin2* %1, %struct.plugin2* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.plugin2*, align 8
  %6 = alloca %struct.plugin2*, align 8
  %7 = alloca %struct.iter_ctx*, align 8
  %8 = alloca %struct.plugin2*, align 8
  %9 = alloca %struct.plug*, align 8
  %10 = alloca %struct.common_plugin_method*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.plugin2* %1, %struct.plugin2** %5, align 8
  store %struct.plugin2* %2, %struct.plugin2** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.iter_ctx*
  store %struct.iter_ctx* %13, %struct.iter_ctx** %7, align 8
  %14 = load %struct.plugin2*, %struct.plugin2** %6, align 8
  store %struct.plugin2* %14, %struct.plugin2** %8, align 8
  %15 = load %struct.plugin2*, %struct.plugin2** %8, align 8
  %16 = getelementptr inbounds %struct.plugin2, %struct.plugin2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.iter_ctx*, %struct.iter_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.iter_ctx, %struct.iter_ctx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.plug* @heim_dict_copy_value(i32 %17, i32 %20)
  store %struct.plug* %21, %struct.plug** %9, align 8
  %22 = load %struct.plug*, %struct.plug** %9, align 8
  %23 = icmp eq %struct.plug* %22, null
  br i1 %23, label %24, label %69

24:                                               ; preds = %3
  %25 = load %struct.plugin2*, %struct.plugin2** %8, align 8
  %26 = getelementptr inbounds %struct.plugin2, %struct.plugin2* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %93

30:                                               ; preds = %24
  %31 = load i32, i32* @plug_free, align 4
  %32 = call %struct.plug* @heim_alloc(i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %31)
  store %struct.plug* %32, %struct.plug** %9, align 8
  %33 = load %struct.plugin2*, %struct.plugin2** %8, align 8
  %34 = getelementptr inbounds %struct.plugin2, %struct.plugin2* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.iter_ctx*, %struct.iter_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.iter_ctx, %struct.iter_ctx* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.common_plugin_method* @dlsym(i32* %35, i32 %38)
  %40 = load %struct.plug*, %struct.plug** %9, align 8
  %41 = getelementptr inbounds %struct.plug, %struct.plug* %40, i32 0, i32 0
  store %struct.common_plugin_method* %39, %struct.common_plugin_method** %41, align 8
  store %struct.common_plugin_method* %39, %struct.common_plugin_method** %10, align 8
  %42 = load %struct.common_plugin_method*, %struct.common_plugin_method** %10, align 8
  %43 = icmp ne %struct.common_plugin_method* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %30
  %45 = load %struct.common_plugin_method*, %struct.common_plugin_method** %10, align 8
  %46 = getelementptr inbounds %struct.common_plugin_method, %struct.common_plugin_method* %45, i32 0, i32 0
  %47 = load i32 (i32, i32*)*, i32 (i32, i32*)** %46, align 8
  %48 = load %struct.iter_ctx*, %struct.iter_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.iter_ctx, %struct.iter_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.plug*, %struct.plug** %9, align 8
  %52 = getelementptr inbounds %struct.plug, %struct.plug* %51, i32 0, i32 1
  %53 = call i32 %47(i32 %50, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.plug*, %struct.plug** %9, align 8
  %58 = getelementptr inbounds %struct.plug, %struct.plug* %57, i32 0, i32 0
  store %struct.common_plugin_method* null, %struct.common_plugin_method** %58, align 8
  store %struct.common_plugin_method* null, %struct.common_plugin_method** %10, align 8
  br label %59

59:                                               ; preds = %56, %44
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.plugin2*, %struct.plugin2** %8, align 8
  %62 = getelementptr inbounds %struct.plugin2, %struct.plugin2* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.iter_ctx*, %struct.iter_ctx** %7, align 8
  %65 = getelementptr inbounds %struct.iter_ctx, %struct.iter_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.plug*, %struct.plug** %9, align 8
  %68 = call i32 @heim_dict_add_value(i32 %63, i32 %66, %struct.plug* %67)
  br label %73

69:                                               ; preds = %3
  %70 = load %struct.plug*, %struct.plug** %9, align 8
  %71 = getelementptr inbounds %struct.plug, %struct.plug* %70, i32 0, i32 0
  %72 = load %struct.common_plugin_method*, %struct.common_plugin_method** %71, align 8
  store %struct.common_plugin_method* %72, %struct.common_plugin_method** %10, align 8
  br label %73

73:                                               ; preds = %69, %60
  %74 = load %struct.common_plugin_method*, %struct.common_plugin_method** %10, align 8
  %75 = icmp ne %struct.common_plugin_method* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.common_plugin_method*, %struct.common_plugin_method** %10, align 8
  %78 = getelementptr inbounds %struct.common_plugin_method, %struct.common_plugin_method* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.iter_ctx*, %struct.iter_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.iter_ctx, %struct.iter_ctx* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load %struct.iter_ctx*, %struct.iter_ctx** %7, align 8
  %86 = getelementptr inbounds %struct.iter_ctx, %struct.iter_ctx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.plug*, %struct.plug** %9, align 8
  %89 = call i32 @heim_array_append_value(i32 %87, %struct.plug* %88)
  br label %90

90:                                               ; preds = %84, %76, %73
  %91 = load %struct.plug*, %struct.plug** %9, align 8
  %92 = call i32 @heim_release(%struct.plug* %91)
  br label %93

93:                                               ; preds = %90, %29
  ret void
}

declare dso_local %struct.plug* @heim_dict_copy_value(i32, i32) #1

declare dso_local %struct.plug* @heim_alloc(i32, i8*, i32) #1

declare dso_local %struct.common_plugin_method* @dlsym(i32*, i32) #1

declare dso_local i32 @heim_dict_add_value(i32, i32, %struct.plug*) #1

declare dso_local i32 @heim_array_append_value(i32, %struct.plug*) #1

declare dso_local i32 @heim_release(%struct.plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
