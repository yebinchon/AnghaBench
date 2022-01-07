; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_inplace_cb_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_inplace_cb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i64 }
%struct.inplace_cb = type { i32, %struct.inplace_cb*, i8*, i8* }

@.str = private unnamed_addr constant [88 x i8] c"invalid edns callback registration: trying to register callback after module init phase\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory during edns callback registration.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inplace_cb_register(i8* %0, i32 %1, i8* %2, %struct.module_env* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inplace_cb*, align 8
  %13 = alloca %struct.inplace_cb**, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.module_env* %3, %struct.module_env** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.module_env*, %struct.module_env** %10, align 8
  %15 = getelementptr inbounds %struct.module_env, %struct.module_env* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = call i32 @log_err(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %57

20:                                               ; preds = %5
  %21 = call i64 @calloc(i32 1, i32 32)
  %22 = inttoptr i64 %21 to %struct.inplace_cb*
  store %struct.inplace_cb* %22, %struct.inplace_cb** %12, align 8
  %23 = load %struct.inplace_cb*, %struct.inplace_cb** %12, align 8
  %24 = icmp eq %struct.inplace_cb* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @log_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %57

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.inplace_cb*, %struct.inplace_cb** %12, align 8
  %30 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.inplace_cb*, %struct.inplace_cb** %12, align 8
  %32 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %31, i32 0, i32 1
  store %struct.inplace_cb* null, %struct.inplace_cb** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.inplace_cb*, %struct.inplace_cb** %12, align 8
  %35 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.inplace_cb*, %struct.inplace_cb** %12, align 8
  %38 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.module_env*, %struct.module_env** %10, align 8
  %40 = getelementptr inbounds %struct.module_env, %struct.module_env* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = bitcast i32* %44 to %struct.inplace_cb**
  store %struct.inplace_cb** %45, %struct.inplace_cb*** %13, align 8
  br label %46

46:                                               ; preds = %50, %27
  %47 = load %struct.inplace_cb**, %struct.inplace_cb*** %13, align 8
  %48 = load %struct.inplace_cb*, %struct.inplace_cb** %47, align 8
  %49 = icmp ne %struct.inplace_cb* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.inplace_cb**, %struct.inplace_cb*** %13, align 8
  %52 = load %struct.inplace_cb*, %struct.inplace_cb** %51, align 8
  %53 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %52, i32 0, i32 1
  store %struct.inplace_cb** %53, %struct.inplace_cb*** %13, align 8
  br label %46

54:                                               ; preds = %46
  %55 = load %struct.inplace_cb*, %struct.inplace_cb** %12, align 8
  %56 = load %struct.inplace_cb**, %struct.inplace_cb*** %13, align 8
  store %struct.inplace_cb* %55, %struct.inplace_cb** %56, align 8
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %25, %18
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
