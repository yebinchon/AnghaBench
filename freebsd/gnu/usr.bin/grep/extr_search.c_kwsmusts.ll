; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_kwsmusts.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_kwsmusts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dfamust* }
%struct.dfamust = type { i32, i64, %struct.dfamust* }

@dfa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@kwset_exact_matches = common dso_local global i32 0, align 4
@kwset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kwsmusts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kwsmusts() #0 {
  %1 = alloca %struct.dfamust*, align 8
  %2 = alloca i8*, align 8
  %3 = load %struct.dfamust*, %struct.dfamust** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfa, i32 0, i32 0), align 8
  %4 = icmp ne %struct.dfamust* %3, null
  br i1 %4, label %5, label %76

5:                                                ; preds = %0
  %6 = call i32 (...) @kwsinit()
  %7 = load %struct.dfamust*, %struct.dfamust** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfa, i32 0, i32 0), align 8
  store %struct.dfamust* %7, %struct.dfamust** %1, align 8
  br label %8

8:                                                ; preds = %34, %5
  %9 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %10 = icmp ne %struct.dfamust* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  %12 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %13 = getelementptr inbounds %struct.dfamust, %struct.dfamust* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %34

17:                                               ; preds = %11
  %18 = load i32, i32* @kwset_exact_matches, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @kwset_exact_matches, align 4
  %20 = load i32, i32* @kwset, align 4
  %21 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %22 = getelementptr inbounds %struct.dfamust, %struct.dfamust* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %25 = getelementptr inbounds %struct.dfamust, %struct.dfamust* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strlen(i32 %26)
  %28 = call i8* @kwsincr(i32 %20, i32 %23, i32 %27)
  store i8* %28, i8** %2, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @error(i32 2, i32 0, i8* %31)
  br label %33

33:                                               ; preds = %30, %17
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %36 = getelementptr inbounds %struct.dfamust, %struct.dfamust* %35, i32 0, i32 2
  %37 = load %struct.dfamust*, %struct.dfamust** %36, align 8
  store %struct.dfamust* %37, %struct.dfamust** %1, align 8
  br label %8

38:                                               ; preds = %8
  %39 = load %struct.dfamust*, %struct.dfamust** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfa, i32 0, i32 0), align 8
  store %struct.dfamust* %39, %struct.dfamust** %1, align 8
  br label %40

40:                                               ; preds = %64, %38
  %41 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %42 = icmp ne %struct.dfamust* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %45 = getelementptr inbounds %struct.dfamust, %struct.dfamust* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %64

49:                                               ; preds = %43
  %50 = load i32, i32* @kwset, align 4
  %51 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %52 = getelementptr inbounds %struct.dfamust, %struct.dfamust* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %55 = getelementptr inbounds %struct.dfamust, %struct.dfamust* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strlen(i32 %56)
  %58 = call i8* @kwsincr(i32 %50, i32 %53, i32 %57)
  store i8* %58, i8** %2, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @error(i32 2, i32 0, i8* %61)
  br label %63

63:                                               ; preds = %60, %49
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.dfamust*, %struct.dfamust** %1, align 8
  %66 = getelementptr inbounds %struct.dfamust, %struct.dfamust* %65, i32 0, i32 2
  %67 = load %struct.dfamust*, %struct.dfamust** %66, align 8
  store %struct.dfamust* %67, %struct.dfamust** %1, align 8
  br label %40

68:                                               ; preds = %40
  %69 = load i32, i32* @kwset, align 4
  %70 = call i8* @kwsprep(i32 %69)
  store i8* %70, i8** %2, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 @error(i32 2, i32 0, i8* %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %0
  ret void
}

declare dso_local i32 @kwsinit(...) #1

declare dso_local i8* @kwsincr(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i8* @kwsprep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
