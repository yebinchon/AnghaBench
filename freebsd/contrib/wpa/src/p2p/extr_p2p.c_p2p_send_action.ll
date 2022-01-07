; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_send_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_send_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*, i32*, i32*, i32*, i64, i32, i32*)*, i32 }

@.str = private unnamed_addr constant [72 x i8] c"Stop listen on %d MHz to allow a frame to be sent immediately on %d MHz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_send_action(%struct.p2p_data* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.p2p_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load %struct.p2p_data*, %struct.p2p_data** %9, align 8
  %20 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32*, i32*, i32*, i32*, i64, i32, i32*)*, i32 (i32, i32, i32*, i32*, i32*, i32*, i64, i32, i32*)** %22, align 8
  %24 = load %struct.p2p_data*, %struct.p2p_data** %9, align 8
  %25 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i32, i32* %16, align 4
  %36 = call i32 %23(i32 %28, i32 %29, i32* %30, i32* %31, i32* %32, i32* %33, i64 %34, i32 %35, i32* %18)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %8
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.p2p_data*, %struct.p2p_data** %9, align 8
  %44 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.p2p_data*, %struct.p2p_data** %9, align 8
  %52 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.p2p_data*, %struct.p2p_data** %9, align 8
  %59 = load %struct.p2p_data*, %struct.p2p_data** %9, align 8
  %60 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @p2p_dbg(%struct.p2p_data* %58, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %61, i32 %62)
  %64 = load %struct.p2p_data*, %struct.p2p_data** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @p2p_stop_listen_for_freq(%struct.p2p_data* %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %50, %47, %42, %39, %8
  %68 = load i32, i32* %17, align 4
  ret i32 %68
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i64, i32) #1

declare dso_local i32 @p2p_stop_listen_for_freq(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
