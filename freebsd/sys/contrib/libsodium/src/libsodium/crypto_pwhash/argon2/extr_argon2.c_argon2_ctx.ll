; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2.c_argon2_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2.c_argon2_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32* }

@ARGON2_OK = common dso_local global i32 0, align 4
@Argon2_id = common dso_local global i64 0, align 8
@Argon2_i = common dso_local global i64 0, align 8
@ARGON2_INCORRECT_TYPE = common dso_local global i32 0, align 4
@ARGON2_SYNC_POINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @argon2_ctx(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call i32 @validate_inputs(%struct.TYPE_11__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @ARGON2_OK, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %109

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @Argon2_id, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @Argon2_i, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ARGON2_INCORRECT_TYPE, align 4
  store i32 %27, i32* %3, align 4
  br label %109

28:                                               ; preds = %22, %18
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ARGON2_SYNC_POINTS, align 4
  %34 = mul nsw i32 2, %33
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load i32, i32* @ARGON2_SYNC_POINTS, align 4
  %42 = mul nsw i32 2, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %40, %28
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ARGON2_SYNC_POINTS, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sdiv i32 %48, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ARGON2_SYNC_POINTS, align 4
  %60 = mul nsw i32 %58, %59
  %61 = mul nsw i32 %55, %60
  store i32 %61, i32* %7, align 4
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 8
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @ARGON2_SYNC_POINTS, align 4
  %74 = mul nsw i32 %72, %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  store i32 %74, i32* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 7
  store i32 %82, i32* %83, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 6
  store i64 %84, i64* %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = call i32 @initialize(%struct.TYPE_10__* %10, %struct.TYPE_11__* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @ARGON2_OK, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %47
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %109

93:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %102, %93
  %95 = load i32, i32* %9, align 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @fill_memory_blocks(%struct.TYPE_10__* %10, i32 %100)
  br label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %94

105:                                              ; preds = %94
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = call i32 @finalize(%struct.TYPE_11__* %106, %struct.TYPE_10__* %10)
  %108 = load i32, i32* @ARGON2_OK, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %91, %26, %16
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @validate_inputs(%struct.TYPE_11__*) #1

declare dso_local i32 @initialize(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @fill_memory_blocks(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @finalize(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
