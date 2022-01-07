; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_file.c_ex_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_file.c_ex_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_20__*, i8*, i32)* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32, i32 }

@FR_TMPFILE = common dso_local global i32 0, align 4
@FR_TMPEXIT = common dso_local global i32 0, align 4
@FR_NAMECHANGE = common dso_local global i32 0, align 4
@MSTAT_SHOWLAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_file(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %12 = call i32 @NEEDFILE(%struct.TYPE_20__* %10, %struct.TYPE_22__* %11)
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %86 [
    i32 0, label %16
    i32 1, label %17
  ]

16:                                               ; preds = %2
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %24, i64 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %31, i64 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @INT2CHAR(%struct.TYPE_20__* %21, i32 %28, i32 %36, i8* %37, i64 %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %42, 1
  %44 = call i8* @v_strdup(%struct.TYPE_20__* %40, i8* %41, i64 %43)
  store i8* %44, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %95

47:                                               ; preds = %17
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = load i32, i32* @FR_TMPFILE, align 4
  %50 = call i32 @F_ISSET(%struct.TYPE_21__* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @set_alt_name(%struct.TYPE_20__* %53, i8* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = load i32, i32* @FR_TMPEXIT, align 4
  %68 = load i32, i32* @FR_TMPFILE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @F_CLR(%struct.TYPE_21__* %66, i32 %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = load i32, i32* @FR_NAMECHANGE, align 4
  %73 = call i32 @F_SET(%struct.TYPE_21__* %71, i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_20__*, i8*, i32)*, i32 (%struct.TYPE_20__*, i8*, i32)** %77, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 %78(%struct.TYPE_20__* %79, i8* %84, i32 1)
  br label %88

86:                                               ; preds = %2
  %87 = call i32 (...) @abort() #3
  unreachable

88:                                               ; preds = %58, %16
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MSTAT_SHOWLAST, align 4
  %94 = call i32 @msgq_status(%struct.TYPE_20__* %89, i32 %92, i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %88, %46
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @NEEDFILE(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @INT2CHAR(%struct.TYPE_20__*, i32, i32, i8*, i64) #1

declare dso_local i8* @v_strdup(%struct.TYPE_20__*, i8*, i64) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @set_alt_name(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @F_CLR(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_21__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @msgq_status(%struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
