; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c_endnetconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c_endnetconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32*, %struct.netconfig_vars* }
%struct.netconfig_vars = type { i64, %struct.netconfig_vars*, %struct.netconfig_vars*, %struct.netconfig_vars*, %struct.netconfig_vars*, i32*, i64 }
%struct.netconfig_list = type { i64, %struct.netconfig_list*, %struct.netconfig_list*, %struct.netconfig_list*, %struct.netconfig_list*, i32*, i64 }

@NC_VALID = common dso_local global i64 0, align 8
@NC_STORAGE = common dso_local global i64 0, align 8
@NC_NOTINIT = common dso_local global i32 0, align 4
@nc_error = common dso_local global i32 0, align 4
@NC_INVALID = common dso_local global i64 0, align 8
@ni_lock = common dso_local global i32 0, align 4
@ni = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nc_file_lock = common dso_local global i32 0, align 4
@nc_file = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @endnetconfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netconfig_vars*, align 8
  %5 = alloca %struct.netconfig_list*, align 8
  %6 = alloca %struct.netconfig_list*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.netconfig_vars*
  store %struct.netconfig_vars* %8, %struct.netconfig_vars** %4, align 8
  %9 = load %struct.netconfig_vars*, %struct.netconfig_vars** %4, align 8
  %10 = icmp eq %struct.netconfig_vars* %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.netconfig_vars*, %struct.netconfig_vars** %4, align 8
  %13 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NC_VALID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.netconfig_vars*, %struct.netconfig_vars** %4, align 8
  %19 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NC_STORAGE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %1
  %24 = load i32, i32* @NC_NOTINIT, align 4
  store i32 %24, i32* @nc_error, align 4
  store i32 -1, i32* %2, align 4
  br label %80

25:                                               ; preds = %17, %11
  %26 = load i64, i64* @NC_INVALID, align 8
  %27 = load %struct.netconfig_vars*, %struct.netconfig_vars** %4, align 8
  %28 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.netconfig_vars*, %struct.netconfig_vars** %4, align 8
  %30 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.netconfig_vars*, %struct.netconfig_vars** %4, align 8
  %32 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = call i32 @mutex_lock(i32* @ni_lock)
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = call i32 @mutex_unlock(i32* @ni_lock)
  %39 = load %struct.netconfig_vars*, %struct.netconfig_vars** %4, align 8
  %40 = call i32 @free(%struct.netconfig_vars* %39)
  store i32 0, i32* %2, align 4
  br label %80

41:                                               ; preds = %25
  %42 = load %struct.netconfig_vars*, %struct.netconfig_vars** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 3), align 8
  %43 = bitcast %struct.netconfig_vars* %42 to %struct.netconfig_list*
  store %struct.netconfig_list* %43, %struct.netconfig_list** %5, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 1), align 8
  store %struct.netconfig_vars* null, %struct.netconfig_vars** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 2), align 8
  %44 = call i32 @mutex_unlock(i32* @ni_lock)
  br label %45

45:                                               ; preds = %48, %41
  %46 = load %struct.netconfig_list*, %struct.netconfig_list** %5, align 8
  %47 = icmp ne %struct.netconfig_list* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load %struct.netconfig_list*, %struct.netconfig_list** %5, align 8
  %50 = getelementptr inbounds %struct.netconfig_list, %struct.netconfig_list* %49, i32 0, i32 4
  %51 = load %struct.netconfig_list*, %struct.netconfig_list** %50, align 8
  store %struct.netconfig_list* %51, %struct.netconfig_list** %6, align 8
  %52 = load %struct.netconfig_list*, %struct.netconfig_list** %5, align 8
  %53 = getelementptr inbounds %struct.netconfig_list, %struct.netconfig_list* %52, i32 0, i32 2
  %54 = load %struct.netconfig_list*, %struct.netconfig_list** %53, align 8
  %55 = getelementptr inbounds %struct.netconfig_list, %struct.netconfig_list* %54, i32 0, i32 3
  %56 = load %struct.netconfig_list*, %struct.netconfig_list** %55, align 8
  %57 = bitcast %struct.netconfig_list* %56 to %struct.netconfig_vars*
  %58 = call i32 @free(%struct.netconfig_vars* %57)
  %59 = load %struct.netconfig_list*, %struct.netconfig_list** %5, align 8
  %60 = getelementptr inbounds %struct.netconfig_list, %struct.netconfig_list* %59, i32 0, i32 2
  %61 = load %struct.netconfig_list*, %struct.netconfig_list** %60, align 8
  %62 = bitcast %struct.netconfig_list* %61 to %struct.netconfig_vars*
  %63 = call i32 @free(%struct.netconfig_vars* %62)
  %64 = load %struct.netconfig_list*, %struct.netconfig_list** %5, align 8
  %65 = getelementptr inbounds %struct.netconfig_list, %struct.netconfig_list* %64, i32 0, i32 1
  %66 = load %struct.netconfig_list*, %struct.netconfig_list** %65, align 8
  %67 = bitcast %struct.netconfig_list* %66 to %struct.netconfig_vars*
  %68 = call i32 @free(%struct.netconfig_vars* %67)
  %69 = load %struct.netconfig_list*, %struct.netconfig_list** %5, align 8
  %70 = bitcast %struct.netconfig_list* %69 to %struct.netconfig_vars*
  %71 = call i32 @free(%struct.netconfig_vars* %70)
  %72 = load %struct.netconfig_list*, %struct.netconfig_list** %6, align 8
  store %struct.netconfig_list* %72, %struct.netconfig_list** %5, align 8
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.netconfig_vars*, %struct.netconfig_vars** %4, align 8
  %75 = call i32 @free(%struct.netconfig_vars* %74)
  %76 = call i32 @mutex_lock(i32* @nc_file_lock)
  %77 = load i32*, i32** @nc_file, align 8
  %78 = call i32 @fclose(i32* %77)
  store i32* null, i32** @nc_file, align 8
  %79 = call i32 @mutex_unlock(i32* @nc_file_lock)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %37, %23
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.netconfig_vars*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
