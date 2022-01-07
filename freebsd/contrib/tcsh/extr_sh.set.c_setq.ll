; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_setq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_setq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32*, i32, i32**, %struct.varent*, i64, i64, i64, %struct.varent** }

@VAR_READONLY = common dso_local global i32 0, align 4
@ERR_READONLY = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setq(i32* %0, i32** %1, %struct.varent* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.varent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.varent*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.varent* %2, %struct.varent** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %63, %4
  %12 = load %struct.varent*, %struct.varent** %7, align 8
  %13 = getelementptr inbounds %struct.varent, %struct.varent* %12, i32 0, i32 7
  %14 = load %struct.varent**, %struct.varent*** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.varent*, %struct.varent** %14, i64 %16
  %18 = load %struct.varent*, %struct.varent** %17, align 8
  store %struct.varent* %18, %struct.varent** %9, align 8
  %19 = icmp ne %struct.varent* %18, null
  br i1 %19, label %20, label %68

20:                                               ; preds = %11
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.varent*, %struct.varent** %9, align 8
  %24 = getelementptr inbounds %struct.varent, %struct.varent* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %22, %26
  store i32 %27, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.varent*, %struct.varent** %9, align 8
  %32 = getelementptr inbounds %struct.varent, %struct.varent* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @Strcmp(i32* %30, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load %struct.varent*, %struct.varent** %9, align 8
  %38 = getelementptr inbounds %struct.varent, %struct.varent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VAR_READONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* @ERR_READONLY, align 4
  %45 = load i32, i32* @ERR_NAME, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.varent*, %struct.varent** %9, align 8
  %48 = getelementptr inbounds %struct.varent, %struct.varent* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @stderror(i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.varent*, %struct.varent** %9, align 8
  %53 = getelementptr inbounds %struct.varent, %struct.varent* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  %55 = call i32 @blkfree(i32** %54)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.varent*, %struct.varent** %9, align 8
  %58 = getelementptr inbounds %struct.varent, %struct.varent* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32**, i32*** %6, align 8
  %60 = load %struct.varent*, %struct.varent** %9, align 8
  %61 = getelementptr inbounds %struct.varent, %struct.varent* %60, i32 0, i32 2
  store i32** %59, i32*** %61, align 8
  %62 = call i32 @trim(i32** %59)
  br label %99

63:                                               ; preds = %29, %20
  %64 = load %struct.varent*, %struct.varent** %9, align 8
  store %struct.varent* %64, %struct.varent** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %10, align 4
  br label %11

68:                                               ; preds = %11
  %69 = call %struct.varent* @xmalloc(i32 64)
  store %struct.varent* %69, %struct.varent** %9, align 8
  %70 = load %struct.varent*, %struct.varent** %7, align 8
  %71 = getelementptr inbounds %struct.varent, %struct.varent* %70, i32 0, i32 7
  %72 = load %struct.varent**, %struct.varent*** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.varent*, %struct.varent** %72, i64 %74
  store %struct.varent* %69, %struct.varent** %75, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32* @Strsave(i32* %76)
  %78 = load %struct.varent*, %struct.varent** %9, align 8
  %79 = getelementptr inbounds %struct.varent, %struct.varent* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.varent*, %struct.varent** %9, align 8
  %82 = getelementptr inbounds %struct.varent, %struct.varent* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.varent*, %struct.varent** %9, align 8
  %84 = getelementptr inbounds %struct.varent, %struct.varent* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.varent*, %struct.varent** %9, align 8
  %86 = getelementptr inbounds %struct.varent, %struct.varent* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.varent*, %struct.varent** %9, align 8
  %88 = getelementptr inbounds %struct.varent, %struct.varent* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load %struct.varent*, %struct.varent** %7, align 8
  %90 = load %struct.varent*, %struct.varent** %9, align 8
  %91 = getelementptr inbounds %struct.varent, %struct.varent* %90, i32 0, i32 3
  store %struct.varent* %89, %struct.varent** %91, align 8
  %92 = load %struct.varent*, %struct.varent** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @balance(%struct.varent* %92, i32 %93, i32 0)
  %95 = load i32**, i32*** %6, align 8
  %96 = load %struct.varent*, %struct.varent** %9, align 8
  %97 = getelementptr inbounds %struct.varent, %struct.varent* %96, i32 0, i32 2
  store i32** %95, i32*** %97, align 8
  %98 = call i32 @trim(i32** %95)
  br label %99

99:                                               ; preds = %68, %51
  ret void
}

declare dso_local i32 @Strcmp(i32*, i32*) #1

declare dso_local i32 @stderror(i32, i32*) #1

declare dso_local i32 @blkfree(i32**) #1

declare dso_local i32 @trim(i32**) #1

declare dso_local %struct.varent* @xmalloc(i32) #1

declare dso_local i32* @Strsave(i32*) #1

declare dso_local i32 @balance(%struct.varent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
