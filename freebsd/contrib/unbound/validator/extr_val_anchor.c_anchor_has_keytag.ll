; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_has_keytag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_has_keytag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32 }
%struct.trust_anchor = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anchor_has_keytag(%struct.val_anchors* %0, i32* %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.val_anchors*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.trust_anchor*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.val_anchors*, %struct.val_anchors** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call %struct.trust_anchor* @anchor_find(%struct.val_anchors* %19, i32* %20, i32 %21, i64 %22, i64 %23)
  store %struct.trust_anchor* %24, %struct.trust_anchor** %18, align 8
  %25 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %26 = icmp ne %struct.trust_anchor* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %99

28:                                               ; preds = %6
  %29 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %30 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %35 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %40 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %39, i32 0, i32 0
  %41 = call i32 @lock_basic_unlock(i32* %40)
  store i32 0, i32* %7, align 4
  br label %99

42:                                               ; preds = %33, %28
  %43 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %44 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %47 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i64* @calloc(i64 %49, i32 8)
  store i64* %50, i64** %14, align 8
  %51 = load i64*, i64** %14, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %42
  %54 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %55 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %54, i32 0, i32 0
  %56 = call i32 @lock_basic_unlock(i32* %55)
  store i32 0, i32* %7, align 4
  br label %99

57:                                               ; preds = %42
  %58 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %59 = load i64*, i64** %14, align 8
  %60 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %61 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %64 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i64 @anchor_list_keytags(%struct.trust_anchor* %58, i64* %59, i64 %66)
  store i64 %67, i64* %16, align 8
  %68 = load %struct.trust_anchor*, %struct.trust_anchor** %18, align 8
  %69 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %68, i32 0, i32 0
  %70 = call i32 @lock_basic_unlock(i32* %69)
  %71 = load i64, i64* %16, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %57
  %74 = load i64*, i64** %14, align 8
  %75 = call i32 @free(i64* %74)
  store i32 0, i32* %7, align 4
  br label %99

76:                                               ; preds = %57
  %77 = load i64*, i64** %14, align 8
  store i64* %77, i64** %15, align 8
  store i64 0, i64* %17, align 8
  br label %78

78:                                               ; preds = %93, %76
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %16, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i64*, i64** %15, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64*, i64** %14, align 8
  %89 = call i32 @free(i64* %88)
  store i32 1, i32* %7, align 4
  br label %99

90:                                               ; preds = %82
  %91 = load i64*, i64** %15, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 1
  store i64* %92, i64** %15, align 8
  br label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %17, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %17, align 8
  br label %78

96:                                               ; preds = %78
  %97 = load i64*, i64** %14, align 8
  %98 = call i32 @free(i64* %97)
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %87, %73, %53, %38, %27
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local %struct.trust_anchor* @anchor_find(%struct.val_anchors*, i32*, i32, i64, i64) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64* @calloc(i64, i32) #1

declare dso_local i64 @anchor_list_keytags(%struct.trust_anchor*, i64*, i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
