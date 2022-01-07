; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_del_redirects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_del_redirects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.khash = type { i32, i64, i64, i32, i32, %struct.khash* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@KHASH_SIZE = common dso_local global i32 0, align 4
@khash_bins = common dso_local global %struct.khash** null, align 8
@KS_DYNAMIC = common dso_local global i32 0, align 4
@KS_STATIC = common dso_local global i32 0, align 4
@supplier = common dso_local global i32 0, align 4
@KS_DELETE = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@need_kern = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [39 x i8] c"mark redirected %s --> %s for deletion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_redirects(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.khash*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %81, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @KHASH_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %84

11:                                               ; preds = %7
  %12 = load %struct.khash**, %struct.khash*** @khash_bins, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.khash*, %struct.khash** %12, i64 %14
  %16 = load %struct.khash*, %struct.khash** %15, align 8
  store %struct.khash* %16, %struct.khash** %6, align 8
  br label %17

17:                                               ; preds = %76, %11
  %18 = load %struct.khash*, %struct.khash** %6, align 8
  %19 = icmp ne %struct.khash* %18, null
  br i1 %19, label %20, label %80

20:                                               ; preds = %17
  %21 = load %struct.khash*, %struct.khash** %6, align 8
  %22 = getelementptr inbounds %struct.khash, %struct.khash* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @KS_DYNAMIC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.khash*, %struct.khash** %6, align 8
  %29 = getelementptr inbounds %struct.khash, %struct.khash* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @KS_STATIC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  br label %76

35:                                               ; preds = %27
  %36 = load %struct.khash*, %struct.khash** %6, align 8
  %37 = getelementptr inbounds %struct.khash, %struct.khash* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.khash*, %struct.khash** %6, align 8
  %43 = getelementptr inbounds %struct.khash, %struct.khash* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @supplier, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %76

51:                                               ; preds = %47, %41, %35
  %52 = load i32, i32* @KS_DELETE, align 4
  %53 = load %struct.khash*, %struct.khash** %6, align 8
  %54 = getelementptr inbounds %struct.khash, %struct.khash* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @KS_DYNAMIC, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.khash*, %struct.khash** %6, align 8
  %60 = getelementptr inbounds %struct.khash, %struct.khash* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @now, i32 0, i32 0), align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @need_kern, i32 0, i32 0), align 4
  %64 = load %struct.khash*, %struct.khash** %6, align 8
  %65 = getelementptr inbounds %struct.khash, %struct.khash* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.khash*, %struct.khash** %6, align 8
  %68 = getelementptr inbounds %struct.khash, %struct.khash* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @addrname(i32 %66, i32 %69, i32 0)
  %71 = load %struct.khash*, %struct.khash** %6, align 8
  %72 = getelementptr inbounds %struct.khash, %struct.khash* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @naddr_ntoa(i64 %73)
  %75 = call i32 @trace_act(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %51, %50, %34
  %77 = load %struct.khash*, %struct.khash** %6, align 8
  %78 = getelementptr inbounds %struct.khash, %struct.khash* %77, i32 0, i32 5
  %79 = load %struct.khash*, %struct.khash** %78, align 8
  store %struct.khash* %79, %struct.khash** %6, align 8
  br label %17

80:                                               ; preds = %17
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %7

84:                                               ; preds = %7
  ret void
}

declare dso_local i32 @trace_act(i8*, i32, i32) #1

declare dso_local i32 @addrname(i32, i32, i32) #1

declare dso_local i32 @naddr_ntoa(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
