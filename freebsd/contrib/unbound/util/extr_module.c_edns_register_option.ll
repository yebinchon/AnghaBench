; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_edns_register_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_edns_register_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [77 x i8] c"invalid edns registration: trying to register option after module init phase\00", align 1
@MAX_KNOWN_EDNS_OPTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"invalid edns registration: maximum options reached\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edns_register_option(i64 %0, i32 %1, i32 %2, %struct.module_env* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.module_env* %3, %struct.module_env** %9, align 8
  %11 = load %struct.module_env*, %struct.module_env** %9, align 8
  %12 = getelementptr inbounds %struct.module_env, %struct.module_env* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 @log_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %80

17:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.module_env*, %struct.module_env** %9, align 8
  %21 = getelementptr inbounds %struct.module_env, %struct.module_env* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load %struct.module_env*, %struct.module_env** %9, align 8
  %26 = getelementptr inbounds %struct.module_env, %struct.module_env* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %18

39:                                               ; preds = %34, %18
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.module_env*, %struct.module_env** %9, align 8
  %42 = getelementptr inbounds %struct.module_env, %struct.module_env* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.module_env*, %struct.module_env** %9, align 8
  %47 = getelementptr inbounds %struct.module_env, %struct.module_env* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MAX_KNOWN_EDNS_OPTS, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @log_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %80

53:                                               ; preds = %45
  %54 = load %struct.module_env*, %struct.module_env** %9, align 8
  %55 = getelementptr inbounds %struct.module_env, %struct.module_env* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %53, %39
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.module_env*, %struct.module_env** %9, align 8
  %61 = getelementptr inbounds %struct.module_env, %struct.module_env* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %59, i64* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.module_env*, %struct.module_env** %9, align 8
  %68 = getelementptr inbounds %struct.module_env, %struct.module_env* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %66, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.module_env*, %struct.module_env** %9, align 8
  %75 = getelementptr inbounds %struct.module_env, %struct.module_env* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %73, i32* %79, align 4
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %58, %51, %15
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
