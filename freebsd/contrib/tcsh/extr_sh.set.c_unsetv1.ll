; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_unsetv1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_unsetv1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { %struct.varent*, %struct.varent**, %struct.varent*, %struct.varent*, i32, i32, %struct.varent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varent*)* @unsetv1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unsetv1(%struct.varent* %0) #0 {
  %2 = alloca %struct.varent*, align 8
  %3 = alloca %struct.varent*, align 8
  %4 = alloca %struct.varent*, align 8
  %5 = alloca i32, align 4
  store %struct.varent* %0, %struct.varent** %2, align 8
  %6 = load %struct.varent*, %struct.varent** %2, align 8
  %7 = getelementptr inbounds %struct.varent, %struct.varent* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @blkfree(i32 %8)
  %10 = load %struct.varent*, %struct.varent** %2, align 8
  %11 = getelementptr inbounds %struct.varent, %struct.varent* %10, i32 0, i32 6
  %12 = load %struct.varent*, %struct.varent** %11, align 8
  %13 = call i32 @xfree(%struct.varent* %12)
  %14 = load %struct.varent*, %struct.varent** %2, align 8
  %15 = getelementptr inbounds %struct.varent, %struct.varent* %14, i32 0, i32 2
  %16 = load %struct.varent*, %struct.varent** %15, align 8
  %17 = icmp eq %struct.varent* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.varent*, %struct.varent** %2, align 8
  %20 = getelementptr inbounds %struct.varent, %struct.varent* %19, i32 0, i32 3
  %21 = load %struct.varent*, %struct.varent** %20, align 8
  store %struct.varent* %21, %struct.varent** %3, align 8
  br label %66

22:                                               ; preds = %1
  %23 = load %struct.varent*, %struct.varent** %2, align 8
  %24 = getelementptr inbounds %struct.varent, %struct.varent* %23, i32 0, i32 3
  %25 = load %struct.varent*, %struct.varent** %24, align 8
  %26 = icmp eq %struct.varent* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.varent*, %struct.varent** %2, align 8
  %29 = getelementptr inbounds %struct.varent, %struct.varent* %28, i32 0, i32 2
  %30 = load %struct.varent*, %struct.varent** %29, align 8
  store %struct.varent* %30, %struct.varent** %3, align 8
  br label %65

31:                                               ; preds = %22
  %32 = load %struct.varent*, %struct.varent** %2, align 8
  %33 = getelementptr inbounds %struct.varent, %struct.varent* %32, i32 0, i32 3
  %34 = load %struct.varent*, %struct.varent** %33, align 8
  store %struct.varent* %34, %struct.varent** %3, align 8
  br label %35

35:                                               ; preds = %41, %31
  %36 = load %struct.varent*, %struct.varent** %3, align 8
  %37 = getelementptr inbounds %struct.varent, %struct.varent* %36, i32 0, i32 2
  %38 = load %struct.varent*, %struct.varent** %37, align 8
  %39 = icmp ne %struct.varent* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.varent*, %struct.varent** %3, align 8
  %43 = getelementptr inbounds %struct.varent, %struct.varent* %42, i32 0, i32 2
  %44 = load %struct.varent*, %struct.varent** %43, align 8
  store %struct.varent* %44, %struct.varent** %3, align 8
  br label %35

45:                                               ; preds = %35
  %46 = load %struct.varent*, %struct.varent** %3, align 8
  %47 = getelementptr inbounds %struct.varent, %struct.varent* %46, i32 0, i32 6
  %48 = load %struct.varent*, %struct.varent** %47, align 8
  %49 = load %struct.varent*, %struct.varent** %2, align 8
  %50 = getelementptr inbounds %struct.varent, %struct.varent* %49, i32 0, i32 6
  store %struct.varent* %48, %struct.varent** %50, align 8
  %51 = load %struct.varent*, %struct.varent** %3, align 8
  %52 = getelementptr inbounds %struct.varent, %struct.varent* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.varent*, %struct.varent** %2, align 8
  %55 = getelementptr inbounds %struct.varent, %struct.varent* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.varent*, %struct.varent** %3, align 8
  %57 = getelementptr inbounds %struct.varent, %struct.varent* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.varent*, %struct.varent** %2, align 8
  %60 = getelementptr inbounds %struct.varent, %struct.varent* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.varent*, %struct.varent** %3, align 8
  store %struct.varent* %61, %struct.varent** %2, align 8
  %62 = load %struct.varent*, %struct.varent** %2, align 8
  %63 = getelementptr inbounds %struct.varent, %struct.varent* %62, i32 0, i32 3
  %64 = load %struct.varent*, %struct.varent** %63, align 8
  store %struct.varent* %64, %struct.varent** %3, align 8
  br label %65

65:                                               ; preds = %45, %27
  br label %66

66:                                               ; preds = %65, %18
  %67 = load %struct.varent*, %struct.varent** %2, align 8
  %68 = getelementptr inbounds %struct.varent, %struct.varent* %67, i32 0, i32 0
  %69 = load %struct.varent*, %struct.varent** %68, align 8
  store %struct.varent* %69, %struct.varent** %4, align 8
  %70 = load %struct.varent*, %struct.varent** %4, align 8
  %71 = getelementptr inbounds %struct.varent, %struct.varent* %70, i32 0, i32 2
  %72 = load %struct.varent*, %struct.varent** %71, align 8
  %73 = load %struct.varent*, %struct.varent** %2, align 8
  %74 = icmp eq %struct.varent* %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load %struct.varent*, %struct.varent** %3, align 8
  %77 = load %struct.varent*, %struct.varent** %4, align 8
  %78 = getelementptr inbounds %struct.varent, %struct.varent* %77, i32 0, i32 1
  %79 = load %struct.varent**, %struct.varent*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.varent*, %struct.varent** %79, i64 %81
  store %struct.varent* %76, %struct.varent** %82, align 8
  %83 = icmp ne %struct.varent* %76, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %66
  %85 = load %struct.varent*, %struct.varent** %4, align 8
  %86 = load %struct.varent*, %struct.varent** %3, align 8
  %87 = getelementptr inbounds %struct.varent, %struct.varent* %86, i32 0, i32 0
  store %struct.varent* %85, %struct.varent** %87, align 8
  br label %88

88:                                               ; preds = %84, %66
  %89 = load %struct.varent*, %struct.varent** %2, align 8
  %90 = call i32 @xfree(%struct.varent* %89)
  %91 = load %struct.varent*, %struct.varent** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @balance(%struct.varent* %91, i32 %92, i32 1)
  ret void
}

declare dso_local i32 @blkfree(i32) #1

declare dso_local i32 @xfree(%struct.varent*) #1

declare dso_local i32 @balance(%struct.varent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
