; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_select.c_select_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_select.c_select_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i64 }
%struct.selectop = type { i64, i32**, i32, i32**, i32 }

@EV_SIGNAL = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_del(i8* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event*, align 8
  %6 = alloca %struct.selectop*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.selectop*
  store %struct.selectop* %8, %struct.selectop** %6, align 8
  %9 = load %struct.selectop*, %struct.selectop** %6, align 8
  %10 = call i32 @check_selectop(%struct.selectop* %9)
  %11 = load %struct.event*, %struct.event** %5, align 8
  %12 = getelementptr inbounds %struct.event, %struct.event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EV_SIGNAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.event*, %struct.event** %5, align 8
  %19 = call i32 @evsignal_del(%struct.event* %18)
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.selectop*, %struct.selectop** %6, align 8
  %22 = getelementptr inbounds %struct.selectop, %struct.selectop* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.event*, %struct.event** %5, align 8
  %25 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.selectop*, %struct.selectop** %6, align 8
  %30 = call i32 @check_selectop(%struct.selectop* %29)
  store i32 0, i32* %3, align 4
  br label %78

31:                                               ; preds = %20
  %32 = load %struct.event*, %struct.event** %5, align 8
  %33 = getelementptr inbounds %struct.event, %struct.event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EV_READ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.event*, %struct.event** %5, align 8
  %40 = getelementptr inbounds %struct.event, %struct.event* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.selectop*, %struct.selectop** %6, align 8
  %43 = getelementptr inbounds %struct.selectop, %struct.selectop* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @FD_CLR(i64 %41, i32 %44)
  %46 = load %struct.selectop*, %struct.selectop** %6, align 8
  %47 = getelementptr inbounds %struct.selectop, %struct.selectop* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = load %struct.event*, %struct.event** %5, align 8
  %50 = getelementptr inbounds %struct.event, %struct.event* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %38, %31
  %54 = load %struct.event*, %struct.event** %5, align 8
  %55 = getelementptr inbounds %struct.event, %struct.event* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EV_WRITE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load %struct.event*, %struct.event** %5, align 8
  %62 = getelementptr inbounds %struct.event, %struct.event* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.selectop*, %struct.selectop** %6, align 8
  %65 = getelementptr inbounds %struct.selectop, %struct.selectop* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @FD_CLR(i64 %63, i32 %66)
  %68 = load %struct.selectop*, %struct.selectop** %6, align 8
  %69 = getelementptr inbounds %struct.selectop, %struct.selectop* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load %struct.event*, %struct.event** %5, align 8
  %72 = getelementptr inbounds %struct.event, %struct.event* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %60, %53
  %76 = load %struct.selectop*, %struct.selectop** %6, align 8
  %77 = call i32 @check_selectop(%struct.selectop* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %28, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @check_selectop(%struct.selectop*) #1

declare dso_local i32 @evsignal_del(%struct.event*) #1

declare dso_local i32 @FD_CLR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
