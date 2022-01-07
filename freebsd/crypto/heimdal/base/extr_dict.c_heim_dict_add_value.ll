; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_dict.c_heim_dict_add_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_dict.c_heim_dict_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.hashentry** }
%struct.hashentry = type { %struct.hashentry*, %struct.hashentry**, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_dict_add_value(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hashentry**, align 8
  %9 = alloca %struct.hashentry*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.hashentry* @_search(%struct.TYPE_4__* %11, i32 %12)
  store %struct.hashentry* %13, %struct.hashentry** %9, align 8
  %14 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %15 = icmp ne %struct.hashentry* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %18 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @heim_release(i8* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @heim_retain(i32 %21)
  %23 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %24 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  br label %72

25:                                               ; preds = %3
  %26 = call %struct.hashentry* @malloc(i32 32)
  store %struct.hashentry* %26, %struct.hashentry** %9, align 8
  %27 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %28 = icmp eq %struct.hashentry* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @heim_retain(i32 %32)
  %34 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %35 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @heim_retain(i32 %36)
  %38 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %39 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @heim_get_hash(i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.hashentry**, %struct.hashentry*** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = urem i64 %45, %48
  %50 = getelementptr inbounds %struct.hashentry*, %struct.hashentry** %44, i64 %49
  store %struct.hashentry** %50, %struct.hashentry*** %8, align 8
  %51 = load %struct.hashentry**, %struct.hashentry*** %8, align 8
  %52 = load %struct.hashentry*, %struct.hashentry** %51, align 8
  %53 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %54 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %53, i32 0, i32 0
  store %struct.hashentry* %52, %struct.hashentry** %54, align 8
  %55 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %56 = load %struct.hashentry**, %struct.hashentry*** %8, align 8
  store %struct.hashentry* %55, %struct.hashentry** %56, align 8
  %57 = load %struct.hashentry**, %struct.hashentry*** %8, align 8
  %58 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %59 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %58, i32 0, i32 1
  store %struct.hashentry** %57, %struct.hashentry*** %59, align 8
  %60 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %61 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %60, i32 0, i32 0
  %62 = load %struct.hashentry*, %struct.hashentry** %61, align 8
  %63 = icmp ne %struct.hashentry* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %31
  %65 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %66 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %65, i32 0, i32 0
  %67 = load %struct.hashentry*, %struct.hashentry** %9, align 8
  %68 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %67, i32 0, i32 0
  %69 = load %struct.hashentry*, %struct.hashentry** %68, align 8
  %70 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %69, i32 0, i32 1
  store %struct.hashentry** %66, %struct.hashentry*** %70, align 8
  br label %71

71:                                               ; preds = %64, %31
  br label %72

72:                                               ; preds = %71, %16
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %29
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.hashentry* @_search(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @heim_release(i8*) #1

declare dso_local i8* @heim_retain(i32) #1

declare dso_local %struct.hashentry* @malloc(i32) #1

declare dso_local i64 @heim_get_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
