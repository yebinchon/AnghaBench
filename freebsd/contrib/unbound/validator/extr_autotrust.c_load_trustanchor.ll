; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_load_trustanchor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_load_trustanchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.val_anchors = type { i32 }
%struct.autr_ta = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trust_anchor* (%struct.val_anchors*, i8*, i8*, i32*, i64, i32**, i64*, i32*)* @load_trustanchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trust_anchor* @load_trustanchor(%struct.val_anchors* %0, i8* %1, i8* %2, i32* %3, i64 %4, i32** %5, i64* %6, i32* %7) #0 {
  %9 = alloca %struct.trust_anchor*, align 8
  %10 = alloca %struct.val_anchors*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.autr_ta*, align 8
  %19 = alloca %struct.trust_anchor*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32** %5, i32*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.autr_ta* null, %struct.autr_ta** %18, align 8
  store %struct.trust_anchor* null, %struct.trust_anchor** %19, align 8
  %20 = load %struct.val_anchors*, %struct.val_anchors** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i32**, i32*** %15, align 8
  %25 = load i64*, i64** %16, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = call %struct.autr_ta* @add_trustanchor_frm_str(%struct.val_anchors* %20, i8* %21, %struct.trust_anchor** %19, i32* %22, i64 %23, i32** %24, i64* %25, i32* %26)
  store %struct.autr_ta* %27, %struct.autr_ta** %18, align 8
  %28 = load %struct.autr_ta*, %struct.autr_ta** %18, align 8
  %29 = icmp ne %struct.autr_ta* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %8
  store %struct.trust_anchor* null, %struct.trust_anchor** %9, align 8
  br label %74

31:                                               ; preds = %8
  %32 = load %struct.trust_anchor*, %struct.trust_anchor** %19, align 8
  %33 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %32, i32 0, i32 0
  %34 = call i32 @lock_basic_lock(i32* %33)
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.autr_ta*, %struct.autr_ta** %18, align 8
  %37 = call i32 @parse_comments(i8* %35, %struct.autr_ta* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load %struct.trust_anchor*, %struct.trust_anchor** %19, align 8
  %41 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %40, i32 0, i32 0
  %42 = call i32 @lock_basic_unlock(i32* %41)
  store %struct.trust_anchor* null, %struct.trust_anchor** %9, align 8
  br label %74

43:                                               ; preds = %31
  %44 = load %struct.trust_anchor*, %struct.trust_anchor** %19, align 8
  %45 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %43
  %51 = load i8*, i8** %12, align 8
  %52 = call i64 @strdup(i8* %51)
  %53 = load %struct.trust_anchor*, %struct.trust_anchor** %19, align 8
  %54 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = load %struct.trust_anchor*, %struct.trust_anchor** %19, align 8
  %58 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = load %struct.trust_anchor*, %struct.trust_anchor** %19, align 8
  %65 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %64, i32 0, i32 0
  %66 = call i32 @lock_basic_unlock(i32* %65)
  %67 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.trust_anchor* null, %struct.trust_anchor** %9, align 8
  br label %74

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.trust_anchor*, %struct.trust_anchor** %19, align 8
  %71 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %70, i32 0, i32 0
  %72 = call i32 @lock_basic_unlock(i32* %71)
  %73 = load %struct.trust_anchor*, %struct.trust_anchor** %19, align 8
  store %struct.trust_anchor* %73, %struct.trust_anchor** %9, align 8
  br label %74

74:                                               ; preds = %69, %63, %39, %30
  %75 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  ret %struct.trust_anchor* %75
}

declare dso_local %struct.autr_ta* @add_trustanchor_frm_str(%struct.val_anchors*, i8*, %struct.trust_anchor**, i32*, i64, i32**, i64*, i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @parse_comments(i8*, %struct.autr_ta*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
