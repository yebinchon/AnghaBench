; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_point_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_point_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { %struct.trust_anchor*, %struct.trust_anchor*, %struct.trust_anchor*, %struct.trust_anchor*, %struct.trust_anchor*, %struct.trust_anchor*, i32, i32, i32 }
%struct.autr_ta = type { %struct.autr_ta*, %struct.autr_ta*, %struct.autr_ta*, %struct.autr_ta*, %struct.autr_ta*, %struct.autr_ta*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autr_point_delete(%struct.trust_anchor* %0) #0 {
  %2 = alloca %struct.trust_anchor*, align 8
  %3 = alloca %struct.autr_ta*, align 8
  %4 = alloca %struct.autr_ta*, align 8
  store %struct.trust_anchor* %0, %struct.trust_anchor** %2, align 8
  %5 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %6 = icmp ne %struct.trust_anchor* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %75

8:                                                ; preds = %1
  %9 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %10 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %9, i32 0, i32 8
  %11 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %12 = call i32 @lock_unprotect(i32* %10, %struct.trust_anchor* %11)
  %13 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %14 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %13, i32 0, i32 8
  %15 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %16 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %15, i32 0, i32 1
  %17 = load %struct.trust_anchor*, %struct.trust_anchor** %16, align 8
  %18 = call i32 @lock_unprotect(i32* %14, %struct.trust_anchor* %17)
  %19 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %20 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %19, i32 0, i32 8
  %21 = call i32 @lock_basic_destroy(i32* %20)
  %22 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %23 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @autr_rrset_delete(i32 %24)
  %26 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %27 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @autr_rrset_delete(i32 %28)
  %30 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %31 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %30, i32 0, i32 1
  %32 = load %struct.trust_anchor*, %struct.trust_anchor** %31, align 8
  %33 = icmp ne %struct.trust_anchor* %32, null
  br i1 %33, label %34, label %68

34:                                               ; preds = %8
  %35 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %36 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %35, i32 0, i32 1
  %37 = load %struct.trust_anchor*, %struct.trust_anchor** %36, align 8
  %38 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %37, i32 0, i32 5
  %39 = load %struct.trust_anchor*, %struct.trust_anchor** %38, align 8
  %40 = bitcast %struct.trust_anchor* %39 to %struct.autr_ta*
  store %struct.autr_ta* %40, %struct.autr_ta** %3, align 8
  br label %41

41:                                               ; preds = %44, %34
  %42 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %43 = icmp ne %struct.autr_ta* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %46 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %45, i32 0, i32 4
  %47 = load %struct.autr_ta*, %struct.autr_ta** %46, align 8
  store %struct.autr_ta* %47, %struct.autr_ta** %4, align 8
  %48 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %49 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %48, i32 0, i32 3
  %50 = load %struct.autr_ta*, %struct.autr_ta** %49, align 8
  %51 = bitcast %struct.autr_ta* %50 to %struct.trust_anchor*
  %52 = call i32 @free(%struct.trust_anchor* %51)
  %53 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %54 = bitcast %struct.autr_ta* %53 to %struct.trust_anchor*
  %55 = call i32 @free(%struct.trust_anchor* %54)
  %56 = load %struct.autr_ta*, %struct.autr_ta** %4, align 8
  store %struct.autr_ta* %56, %struct.autr_ta** %3, align 8
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %59 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %58, i32 0, i32 1
  %60 = load %struct.trust_anchor*, %struct.trust_anchor** %59, align 8
  %61 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %60, i32 0, i32 2
  %62 = load %struct.trust_anchor*, %struct.trust_anchor** %61, align 8
  %63 = call i32 @free(%struct.trust_anchor* %62)
  %64 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %65 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %64, i32 0, i32 1
  %66 = load %struct.trust_anchor*, %struct.trust_anchor** %65, align 8
  %67 = call i32 @free(%struct.trust_anchor* %66)
  br label %68

68:                                               ; preds = %57, %8
  %69 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %70 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %69, i32 0, i32 0
  %71 = load %struct.trust_anchor*, %struct.trust_anchor** %70, align 8
  %72 = call i32 @free(%struct.trust_anchor* %71)
  %73 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %74 = call i32 @free(%struct.trust_anchor* %73)
  br label %75

75:                                               ; preds = %68, %7
  ret void
}

declare dso_local i32 @lock_unprotect(i32*, %struct.trust_anchor*) #1

declare dso_local i32 @lock_basic_destroy(i32*) #1

declare dso_local i32 @autr_rrset_delete(i32) #1

declare dso_local i32 @free(%struct.trust_anchor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
