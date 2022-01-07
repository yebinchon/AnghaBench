; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/push/extr_push.c_write_state_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/push/extr_push.c_write_state_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_state = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i8* }

@.str = private unnamed_addr constant [7 x i8] c"writev\00", align 1
@STEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_state*, i8*, i64)* @write_state_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_state_add(%struct.write_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.write_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.write_state* %0, %struct.write_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.write_state*, %struct.write_state** %4, align 8
  %8 = getelementptr inbounds %struct.write_state, %struct.write_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.write_state*, %struct.write_state** %4, align 8
  %11 = getelementptr inbounds %struct.write_state, %struct.write_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %3
  %15 = load %struct.write_state*, %struct.write_state** %4, align 8
  %16 = getelementptr inbounds %struct.write_state, %struct.write_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.write_state*, %struct.write_state** %4, align 8
  %19 = getelementptr inbounds %struct.write_state, %struct.write_state* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = load %struct.write_state*, %struct.write_state** %4, align 8
  %24 = getelementptr inbounds %struct.write_state, %struct.write_state* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.write_state*, %struct.write_state** %4, align 8
  %27 = getelementptr inbounds %struct.write_state, %struct.write_state* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.write_state*, %struct.write_state** %4, align 8
  %30 = getelementptr inbounds %struct.write_state, %struct.write_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @writev(i32 %25, %struct.TYPE_4__* %28, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %22
  %37 = load %struct.write_state*, %struct.write_state** %4, align 8
  %38 = getelementptr inbounds %struct.write_state, %struct.write_state* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %64

39:                                               ; preds = %14
  %40 = load %struct.write_state*, %struct.write_state** %4, align 8
  %41 = getelementptr inbounds %struct.write_state, %struct.write_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @STEP, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.write_state*, %struct.write_state** %4, align 8
  %47 = getelementptr inbounds %struct.write_state, %struct.write_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @min(i64 %45, i32 %48)
  %50 = load %struct.write_state*, %struct.write_state** %4, align 8
  %51 = getelementptr inbounds %struct.write_state, %struct.write_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.write_state*, %struct.write_state** %4, align 8
  %53 = getelementptr inbounds %struct.write_state, %struct.write_state* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.write_state*, %struct.write_state** %4, align 8
  %56 = getelementptr inbounds %struct.write_state, %struct.write_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 16
  %60 = trunc i64 %59 to i32
  %61 = call %struct.TYPE_4__* @erealloc(%struct.TYPE_4__* %54, i32 %60)
  %62 = load %struct.write_state*, %struct.write_state** %4, align 8
  %63 = getelementptr inbounds %struct.write_state, %struct.write_state* %62, i32 0, i32 3
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %63, align 8
  br label %64

64:                                               ; preds = %39, %36
  br label %65

65:                                               ; preds = %64, %3
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.write_state*, %struct.write_state** %4, align 8
  %68 = getelementptr inbounds %struct.write_state, %struct.write_state* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load %struct.write_state*, %struct.write_state** %4, align 8
  %71 = getelementptr inbounds %struct.write_state, %struct.write_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i8* %66, i8** %75, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.write_state*, %struct.write_state** %4, align 8
  %78 = getelementptr inbounds %struct.write_state, %struct.write_state* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load %struct.write_state*, %struct.write_state** %4, align 8
  %81 = getelementptr inbounds %struct.write_state, %struct.write_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 %76, i64* %85, align 8
  %86 = load %struct.write_state*, %struct.write_state** %4, align 8
  %87 = getelementptr inbounds %struct.write_state, %struct.write_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  ret void
}

declare dso_local i64 @writev(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local %struct.TYPE_4__* @erealloc(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
