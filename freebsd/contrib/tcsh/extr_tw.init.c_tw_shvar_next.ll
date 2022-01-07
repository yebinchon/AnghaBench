; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_shvar_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_shvar_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i64, %struct.varent*, %struct.varent*, %struct.varent* }
%struct.Strbuf = type opaque

@tw_vptr = common dso_local global %struct.varent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_shvar_next(%struct.Strbuf* %0, %struct.Strbuf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Strbuf*, align 8
  %6 = alloca %struct.Strbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.varent*, align 8
  %9 = alloca %struct.varent*, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %5, align 8
  store %struct.Strbuf* %1, %struct.Strbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @USE(i32* %10)
  %12 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %13 = bitcast %struct.Strbuf* %12 to i32*
  %14 = call i32 @USE(i32* %13)
  %15 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  store %struct.varent* %15, %struct.varent** %8, align 8
  %16 = icmp eq %struct.varent* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

18:                                               ; preds = %3
  %19 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %20 = bitcast %struct.Strbuf* %19 to i32*
  %21 = load %struct.varent*, %struct.varent** %8, align 8
  %22 = getelementptr inbounds %struct.varent, %struct.varent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @Strbuf_append(i32* %20, i64 %23)
  br label %25

25:                                               ; preds = %70, %18
  %26 = load %struct.varent*, %struct.varent** %8, align 8
  %27 = getelementptr inbounds %struct.varent, %struct.varent* %26, i32 0, i32 2
  %28 = load %struct.varent*, %struct.varent** %27, align 8
  %29 = icmp ne %struct.varent* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.varent*, %struct.varent** %8, align 8
  %32 = getelementptr inbounds %struct.varent, %struct.varent* %31, i32 0, i32 2
  %33 = load %struct.varent*, %struct.varent** %32, align 8
  store %struct.varent* %33, %struct.varent** %8, align 8
  br label %34

34:                                               ; preds = %39, %30
  %35 = load %struct.varent*, %struct.varent** %8, align 8
  %36 = getelementptr inbounds %struct.varent, %struct.varent* %35, i32 0, i32 3
  %37 = load %struct.varent*, %struct.varent** %36, align 8
  %38 = icmp ne %struct.varent* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.varent*, %struct.varent** %8, align 8
  %41 = getelementptr inbounds %struct.varent, %struct.varent* %40, i32 0, i32 3
  %42 = load %struct.varent*, %struct.varent** %41, align 8
  store %struct.varent* %42, %struct.varent** %8, align 8
  br label %34

43:                                               ; preds = %34
  br label %57

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %50, %44
  %46 = load %struct.varent*, %struct.varent** %8, align 8
  store %struct.varent* %46, %struct.varent** %9, align 8
  %47 = load %struct.varent*, %struct.varent** %8, align 8
  %48 = getelementptr inbounds %struct.varent, %struct.varent* %47, i32 0, i32 1
  %49 = load %struct.varent*, %struct.varent** %48, align 8
  store %struct.varent* %49, %struct.varent** %8, align 8
  br label %50

50:                                               ; preds = %45
  %51 = load %struct.varent*, %struct.varent** %8, align 8
  %52 = getelementptr inbounds %struct.varent, %struct.varent* %51, i32 0, i32 2
  %53 = load %struct.varent*, %struct.varent** %52, align 8
  %54 = load %struct.varent*, %struct.varent** %9, align 8
  %55 = icmp eq %struct.varent* %53, %54
  br i1 %55, label %45, label %56

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %43
  %58 = load %struct.varent*, %struct.varent** %8, align 8
  %59 = getelementptr inbounds %struct.varent, %struct.varent* %58, i32 0, i32 1
  %60 = load %struct.varent*, %struct.varent** %59, align 8
  %61 = icmp eq %struct.varent* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store %struct.varent* null, %struct.varent** @tw_vptr, align 8
  store i32 1, i32* %4, align 4
  br label %71

63:                                               ; preds = %57
  %64 = load %struct.varent*, %struct.varent** %8, align 8
  %65 = getelementptr inbounds %struct.varent, %struct.varent* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load %struct.varent*, %struct.varent** %8, align 8
  store %struct.varent* %69, %struct.varent** @tw_vptr, align 8
  store i32 1, i32* %4, align 4
  br label %71

70:                                               ; preds = %63
  br label %25

71:                                               ; preds = %68, %62, %17
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @USE(i32*) #1

declare dso_local i32 @Strbuf_append(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
