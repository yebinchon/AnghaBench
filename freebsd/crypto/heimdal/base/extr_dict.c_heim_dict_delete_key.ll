; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_dict.c_heim_dict_delete_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_dict.c_heim_dict_delete_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashentry = type { %struct.TYPE_2__**, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heim_dict_delete_key(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashentry*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.hashentry* @_search(i32 %6, i32 %7)
  store %struct.hashentry* %8, %struct.hashentry** %5, align 8
  %9 = load %struct.hashentry*, %struct.hashentry** %5, align 8
  %10 = icmp eq %struct.hashentry* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.hashentry*, %struct.hashentry** %5, align 8
  %14 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @heim_release(i32 %15)
  %17 = load %struct.hashentry*, %struct.hashentry** %5, align 8
  %18 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @heim_release(i32 %19)
  %21 = load %struct.hashentry*, %struct.hashentry** %5, align 8
  %22 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.hashentry*, %struct.hashentry** %5, align 8
  %25 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %26, align 8
  %27 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %12
  %29 = load %struct.hashentry*, %struct.hashentry** %5, align 8
  %30 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load %struct.hashentry*, %struct.hashentry** %5, align 8
  %33 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.TYPE_2__** %31, %struct.TYPE_2__*** %35, align 8
  br label %36

36:                                               ; preds = %28, %12
  %37 = load %struct.hashentry*, %struct.hashentry** %5, align 8
  %38 = call i32 @free(%struct.hashentry* %37)
  br label %39

39:                                               ; preds = %36, %11
  ret void
}

declare dso_local %struct.hashentry* @_search(i32, i32) #1

declare dso_local i32 @heim_release(i32) #1

declare dso_local i32 @free(%struct.hashentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
