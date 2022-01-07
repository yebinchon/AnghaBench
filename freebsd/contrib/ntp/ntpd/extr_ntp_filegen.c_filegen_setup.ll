; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i64, i64 }

@FGEN_FLAG_ENABLED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@current_time = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"filegen  %0x %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filegen_setup(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FGEN_FLAG_ENABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* null, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @fclose(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %13
  br label %90

26:                                               ; preds = %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %30 [
    i32 131, label %31
    i32 130, label %33
    i32 134, label %41
    i32 133, label %56
    i32 129, label %56
    i32 132, label %56
    i32 128, label %56
  ]

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %26, %30
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %5, align 4
  br label %71

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 (...) @getpid()
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %71

41:                                               ; preds = %26
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @current_time, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @current_time, align 8
  %52 = icmp sgt i64 %50, %51
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i1 [ false, %41 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %71

56:                                               ; preds = %26, %26, %26, %26
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp sgt i64 %65, %66
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i1 [ false, %56 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %53, %33, %31
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* null, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %4, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @DPRINTF(i32 1, i8* %84)
  %86 = call i32 @time(i32* null)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @filegen_open(%struct.TYPE_4__* %87, i64 %88, i32* %6)
  br label %90

90:                                               ; preds = %25, %79, %76
  ret void
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @filegen_open(%struct.TYPE_4__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
