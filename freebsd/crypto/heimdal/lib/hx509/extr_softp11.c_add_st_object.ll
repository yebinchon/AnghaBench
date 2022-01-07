; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_st_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_st_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.st_object** }
%struct.st_object = type { i32 }

@soft_token = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OBJECT_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_object* ()* @add_st_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_object* @add_st_object() #0 {
  %1 = alloca %struct.st_object*, align 8
  %2 = alloca %struct.st_object*, align 8
  %3 = alloca %struct.st_object**, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.st_object* @calloc(i32 1, i32 4)
  store %struct.st_object* %5, %struct.st_object** %2, align 8
  %6 = load %struct.st_object*, %struct.st_object** %2, align 8
  %7 = icmp eq %struct.st_object* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.st_object* null, %struct.st_object** %1, align 8
  br label %66

9:                                                ; preds = %0
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 0), align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %16 = icmp eq %struct.st_object** %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.st_object*, %struct.st_object** %2, align 8
  %19 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.st_object*, %struct.st_object** %19, i64 %21
  store %struct.st_object* %18, %struct.st_object** %22, align 8
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10

27:                                               ; preds = %17, %10
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 0), align 8
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 0), align 8
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call %struct.st_object** @realloc(%struct.st_object** %32, i32 %37)
  store %struct.st_object** %38, %struct.st_object*** %3, align 8
  %39 = load %struct.st_object**, %struct.st_object*** %3, align 8
  %40 = icmp eq %struct.st_object** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.st_object*, %struct.st_object** %2, align 8
  %43 = call i32 @free(%struct.st_object* %42)
  store %struct.st_object* null, %struct.st_object** %1, align 8
  br label %66

44:                                               ; preds = %31
  %45 = load %struct.st_object**, %struct.st_object*** %3, align 8
  store %struct.st_object** %45, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %46 = load %struct.st_object*, %struct.st_object** %2, align 8
  %47 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 0), align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 0), align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.st_object*, %struct.st_object** %47, i64 %50
  store %struct.st_object* %46, %struct.st_object** %51, align 8
  br label %52

52:                                               ; preds = %44, %27
  %53 = call i32 (...) @random()
  %54 = load i32, i32* @OBJECT_ID_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.st_object*, %struct.st_object** %59, i64 %61
  %63 = load %struct.st_object*, %struct.st_object** %62, align 8
  %64 = getelementptr inbounds %struct.st_object, %struct.st_object* %63, i32 0, i32 0
  store i32 %58, i32* %64, align 4
  %65 = load %struct.st_object*, %struct.st_object** %2, align 8
  store %struct.st_object* %65, %struct.st_object** %1, align 8
  br label %66

66:                                               ; preds = %52, %41, %8
  %67 = load %struct.st_object*, %struct.st_object** %1, align 8
  ret %struct.st_object* %67
}

declare dso_local %struct.st_object* @calloc(i32, i32) #1

declare dso_local %struct.st_object** @realloc(%struct.st_object**, i32) #1

declare dso_local i32 @free(%struct.st_object*) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
