; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_dayphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_dayphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdstate = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8, i32 }

@tDAY = common dso_local global i8 0, align 1
@tUNUMBER = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdstate*)* @dayphrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dayphrase(%struct.gdstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdstate*, align 8
  store %struct.gdstate* %0, %struct.gdstate** %3, align 8
  %4 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %5 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @tDAY, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %16 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %20 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %22 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %28 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %30 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 1
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %30, align 8
  %33 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %34 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 4
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 44
  br i1 %40, label %41, label %46

41:                                               ; preds = %14
  %42 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %43 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 1
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %43, align 8
  br label %46

46:                                               ; preds = %41, %14
  store i32 1, i32* %2, align 4
  br label %95

47:                                               ; preds = %1
  %48 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %49 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 4
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @tUNUMBER, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %47
  %59 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %60 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 4
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @tDAY, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %58
  %70 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %71 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %75 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %81 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %83 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %89 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %91 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 2
  store %struct.TYPE_2__* %93, %struct.TYPE_2__** %91, align 8
  store i32 1, i32* %2, align 4
  br label %95

94:                                               ; preds = %58, %47
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %69, %46
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
