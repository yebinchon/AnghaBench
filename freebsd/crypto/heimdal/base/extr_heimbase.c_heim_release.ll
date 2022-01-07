; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_heim_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_heim_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heim_base = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (i8*)* }
%struct.TYPE_4__ = type { i32, i32 }

@heim_base_atomic_max = common dso_local global i64 0, align 8
@autorel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"over release\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heim_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.heim_base*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.heim_base* @PTR2BASE(i8* %6)
  store %struct.heim_base* %7, %struct.heim_base** %4, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @heim_base_is_tagged(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  br label %73

15:                                               ; preds = %10
  %16 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %17 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @heim_base_atomic_max, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %73

22:                                               ; preds = %15
  %23 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %24 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %23, i32 0, i32 0
  %25 = call i32 @heim_base_atomic_dec(i64* %24)
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %73

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %35 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %41 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %40, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @HEIMDAL_MUTEX_lock(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %48 = load i32, i32* @autorel, align 4
  %49 = call i32 @HEIM_TAILQ_REMOVE(i32* %46, %struct.heim_base* %47, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @HEIMDAL_MUTEX_unlock(i32* %51)
  br label %53

53:                                               ; preds = %39, %33
  %54 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %55 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (i8*)*, i32 (i8*)** %57, align 8
  %59 = icmp ne i32 (i8*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %62 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (i8*)*, i32 (i8*)** %64, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 %65(i8* %66)
  br label %68

68:                                               ; preds = %60, %53
  %69 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %70 = call i32 @free(%struct.heim_base* %69)
  br label %73

71:                                               ; preds = %30
  %72 = call i32 @heim_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %14, %21, %29, %71, %68
  ret void
}

declare dso_local %struct.heim_base* @PTR2BASE(i8*) #1

declare dso_local i64 @heim_base_is_tagged(i8*) #1

declare dso_local i32 @heim_base_atomic_dec(i64*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIM_TAILQ_REMOVE(i32*, %struct.heim_base*, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @free(%struct.heim_base*) #1

declare dso_local i32 @heim_abort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
