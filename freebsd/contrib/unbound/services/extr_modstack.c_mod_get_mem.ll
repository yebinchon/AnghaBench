; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_mod_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_mod_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 (%struct.module_env*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mod_get_mem(%struct.module_env* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.module_env*, %struct.module_env** %4, align 8
  %8 = getelementptr inbounds %struct.module_env, %struct.module_env* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @modstack_find(%struct.TYPE_6__* %10, i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.module_env*, %struct.module_env** %4, align 8
  %17 = getelementptr inbounds %struct.module_env, %struct.module_env* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64 (%struct.module_env*, i32)*, i64 (%struct.module_env*, i32)** %26, align 8
  %28 = call i32 @fptr_whitelist_mod_get_mem(i64 (%struct.module_env*, i32)* %27)
  %29 = call i32 @fptr_ok(i32 %28)
  %30 = load %struct.module_env*, %struct.module_env** %4, align 8
  %31 = getelementptr inbounds %struct.module_env, %struct.module_env* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64 (%struct.module_env*, i32)*, i64 (%struct.module_env*, i32)** %40, align 8
  %42 = load %struct.module_env*, %struct.module_env** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 %41(%struct.module_env* %42, i32 %43)
  store i64 %44, i64* %3, align 8
  br label %46

45:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i32 @modstack_find(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_mod_get_mem(i64 (%struct.module_env*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
